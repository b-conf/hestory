import assert from 'node:assert/strict';
import test from 'node:test';
import { registerHooks } from 'node:module';
import * as c from '../js-out/calcit.core.mjs';
import { store } from '../js-out/app.schema.mjs';
import { updater } from '../js-out/app.updater.mjs';
import { reel } from '../js-out/reel.schema.mjs';
import { RespoEvent } from '../js-out/respo.schema.mjs';
import { component_$q_, component_tree } from '../js-out/respo.util.detect.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';

const t = c.init_tags(['store', 'states', 'cursor', 'data', 'content', 'messages', 'author', 'text', 'code?', 'floor', 'input', 'event', 'keydown', 'click', 'children', 'clear', 'message', 'swap-messages', 'voice?', 'mount']);
const map = c._$n__$M_;
const read = (value, key) => c.option_$o_unwrap(c.get(value, t[key]));
const op = (key, ...args) => c._$o__$o_(t[key], ...args);
const root = state => c.assoc(reel, t.store, state);
const event = values => c._$n__PCT__$M_(RespoEvent, ...RespoEvent.fields.flatMap(field => [field, values[field.value] ?? null]));
const original = Object.fromEntries(['window', 'document', 'localStorage', 'Worker'].map(key => [key, Object.getOwnPropertyDescriptor(globalThis, key)]));
let workers = 0;
const hooks = registerHooks({
  resolve(specifier, context, nextResolve) {
    if (specifier === '../xunfei/sdk') specifier += '.js';
    if (specifier === '../assets/play-azure' || specifier === '../assets/play-audio') specifier += '.mjs';
    return nextResolve(specifier, context);
  },
  load(url, context, nextLoad) {
    // Vite's ?worker constructor is a browser host boundary, not an SDK mock.
    // Do not execute paid TTS or start a real worker in the Node fixture.
    if (url.endsWith('/transcode.worker.js?worker')) {
      return { format: 'module', source: 'export default globalThis.Worker;', shortCircuit: true };
    }
    return nextLoad(url, context);
  },
});
let app;
export { app };
const log = console.log;
const error = console.error;
try {
  globalThis.window = globalThis;
  globalThis.Worker = class { constructor() { workers++; } postMessage() { throw new Error('Unexpected paid speech worker request'); } };
  globalThis.localStorage = { getItem(key) { assert.equal(key, 'xunfei-secrets'); return '{}'; } };
  globalThis.document = { createElement() { return { getContext() { return { measureText(text) { return { width: text.length }; } }; } }; } };
  console.log = () => {}; // Real Azure adapter logs the entire imported SDK.
  console.error = () => {}; // Expected unset paid Xunfei credentials.
  app = await import('../js-out/app.comp.container.mjs');
} finally {
  hooks.deregister();
  console.log = log;
  console.error = error;
  for (const [key, descriptor] of Object.entries(original)) {
    if (descriptor) Object.defineProperty(globalThis, key, descriptor);
    else Reflect.deleteProperty(globalThis, key);
  }
}
function handlers(node, kind, found = []) {
  if (component_$q_(node)) return handlers(c.option_$o_unwrap(component_tree(node)), kind, found);
  const events = c.get(node, t.event);
  if (c.option_$o_some_$q_(events)) {
    const handler = c.get(c.option_$o_unwrap(events), kind);
    if (c.option_$o_some_$q_(handler)) found.push(c.option_$o_unwrap(handler));
  }
  const children = c.get(node, t.children);
  if (c.option_$o_some_$q_(children)) for (const pair of c.option_$o_unwrap(children).toArray()) handlers(c.option_$o_unwrap(c.nth(pair, 1)), kind, found);
  return found;
}
const capture = () => {
  const operations = [];
  return { operations, dispatch(...args) { assert.equal(args.length, 1); assert.ok(c.enum_$q_(args[0])); operations.push(args[0]); } };
};
test('actual initial app renders original history menu and empty message area', () => {
  assert.equal(workers, 1);
  const html = make_string(app.comp_container(root(store)));
  for (const text of ['Hestory', 'Cleared.', 'Reply...', 'https://github.com/b-conf/hestory']) assert.ok(html.includes(text));
  assert.ok(c.count(app.reading_list) > 20);
});
test('real RespoEvent input sends one states Enum and re-renders typed text', () => {
  const callbacks = handlers(app.comp_container(root(store)), t.input);
  assert.equal(callbacks.length, 1);
  const { operations, dispatch } = capture();
  callbacks[0](event({ value: 'Typed reply' }), dispatch);
  assert.equal(operations.length, 1);
  const next = updater(store, operations[0], 'fixture', 0);
  assert.equal(read(read(read(read(next, 'states'), 'input'), 'data'), 'content'), 'Typed reply');
  assert.ok(make_string(app.comp_container(root(next))).includes('Typed reply'));
  assert.equal(c.count(read(store, 'messages')), 0);
});
test('Enter uses the actual keyboard host, prevents default and sends/clears with Enums', () => {
  const timer = globalThis.setTimeout;
  const delays = [], { operations, dispatch } = capture();
  let prevented = 0;
  try {
    globalThis.setTimeout = (fn, delay) => { assert.equal(typeof fn, 'function'); delays.push(delay); return 1; };
    const callback = handlers(app.comp_input(map(t.cursor, c._$L_(t.input))), t.keydown)[0];
    callback(event({ event: { key: 'Enter', target: { value: 'Reply from target' }, preventDefault() { prevented++; } } }), dispatch);
    assert.equal(prevented, 1);
    assert.equal(operations.length, 2);
    const next = operations.reduce((state, operation) => updater(state, operation, 'fixture', 0), store);
    const message = c.option_$o_unwrap(c.first(read(next, 'messages')));
    assert.equal(read(message, 'author'), 'Me');
    assert.equal(read(message, 'text'), 'Reply from target');
    assert.equal(read(read(read(read(next, 'states'), 'input'), 'data'), 'content'), '');
    assert.deepEqual(delays, [100]);
    callback(event({ event: { key: 'Escape' } }), dispatch);
    assert.equal(operations.length, 2);
  } finally { globalThis.setTimeout = timer; }
});
test('swap/message/clear Enum updater paths preserve all message data', () => {
  const message = map(t.author, 'Alice', t.text, 'const x = 1;', t['code?'], true, t.floor, 7);
  const { operations, dispatch } = capture();
  app.swap_messages(c._$L_(message), dispatch);
  let next = updater(store, operations[0], 'fixture', 0);
  assert.ok(make_string(app.comp_messages(read(next, 'messages'))).includes('const x = 1;'));
  next = updater(next, op('message', message), 'fixture', 0);
  assert.equal(c.count(read(next, 'messages')), 2);
  next = updater(next, op('clear'), 'fixture', 0);
  assert.equal(c.count(read(next, 'messages')), 0);
});
test('actual Voice toggle sends one Enum and preserves the input branch', () => {
  const { operations, dispatch } = capture();
  // The menu has one click callback per actual reading-list entry; Voice follows it.
  const callback = handlers(app.comp_container(root(store)), t.click)[c.count(app.reading_list)];
  callback(null, dispatch);
  const next = updater(store, operations[0], 'fixture', 0);
  assert.equal(read(read(read(next, 'states'), 'data'), 'voice?'), true);
  assert.ok(make_string(app.comp_container(root(next))).includes('Reply...'));
});
test('real sanitization preserves speech text and replaces mentions and URLs', () => {
  assert.equal(app.santinize_voice('Hello @Alice'), 'Hello  at Alice');
  assert.ok(!app.santinize_voice('Visit https://example.com/page').includes('/page'));
});
test('actual menu callback preserves the selected history without enabling speech', () => {
  const priorWindow = globalThis.window;
  let cancelled = 0;
  try {
    globalThis.window = { speechSynthesis: { cancel() { cancelled++; } } };
    const callbacks = handlers(app.comp_menu(false), t.click);
    assert.equal(callbacks.length, c.count(app.reading_list));
    callbacks.forEach((callback, index) => {
      const { operations, dispatch } = capture();
      callback(null, dispatch);
      const next = updater(store, operations[0], 'fixture', 0);
      const messages = read(c.option_$o_unwrap(c.nth(app.reading_list, index)), 'messages');
      assert.equal(read(next, 'messages'), messages);
      assert.doesNotThrow(() => make_string(app.comp_messages(messages)));
    });
    assert.equal(cancelled, callbacks.length);
  } finally { if (priorWindow === undefined) delete globalThis.window; else globalThis.window = priorWindow; }
});
test('actual clear callback removes audio nodes and cancels speech with a zero-payload Enum', () => {
  const priorWindow = globalThis.window, priorDocument = globalThis.document;
  let removed = 0, cancelled = 0;
  const { operations, dispatch } = capture();
  try {
    globalThis.window = { speechSynthesis: { cancel() { cancelled++; } } };
    globalThis.document = { querySelectorAll(selector) { assert.equal(selector, 'audio'); return [{ remove() { removed++; } }]; } };
    const callbacks = handlers(app.comp_header(), t.click);
    assert.equal(callbacks.length, 2);
    callbacks[1](null, dispatch);
    const next = updater(store, op('message', map(t.author, 'Alice', t.text, 'message')), 'fixture', 0);
    assert.equal(c.count(read(updater(next, operations[0], 'fixture', 0), 'messages')), 0);
    assert.equal(removed, 1);
    assert.equal(cancelled, 1);
  } finally {
    if (priorWindow === undefined) delete globalThis.window; else globalThis.window = priorWindow;
    if (priorDocument === undefined) delete globalThis.document; else globalThis.document = priorDocument;
  }
});
test('actual scrolling tolerates missing container/child and scrolls the last message', () => {
  const priorTimer = globalThis.setTimeout, priorDocument = globalThis.document;
  let callback, target = null, scrolled = 0;
  try {
    globalThis.setTimeout = (fn, delay) => { assert.equal(delay, 100); callback = fn; return 1; };
    globalThis.document = { querySelector(selector) { assert.equal(selector, '#message-area'); return target; } };
    app.scroll_view_$x_();
    assert.doesNotThrow(callback);
    target = { lastElementChild: null };
    assert.doesNotThrow(callback);
    target.lastElementChild = { scrollIntoView() { scrolled++; } };
    callback();
    assert.equal(scrolled, 1);
  } finally {
    globalThis.setTimeout = priorTimer;
    if (priorDocument === undefined) delete globalThis.document; else globalThis.document = priorDocument;
  }
});
test('actual native speech queues messages with one Enum and retains Chinese speech settings', () => {
  const priorWindow = globalThis.window, priorTimer = globalThis.setTimeout;
  const utterances = [], delays = [], { operations, dispatch } = capture();
  try {
    globalThis.window = {
      SpeechSynthesisUtterance: class { constructor(text) { this.text = text; } },
      speechSynthesis: { getVoices() { return Array.from({ length: 4 }, (_, i) => ({ lang: 'zh-CN', i })); }, speak(value) { utterances.push(value); } },
    };
    globalThis.setTimeout = (fn, delay) => { delays.push(delay); if (delay === 400) fn(); return 1; };
    app.read_content(c._$L_(map(t.author, 'Alice', t.text, 'First'), map(t.author, 'Bob', t.text, 'Second')), 0, dispatch);
    const firstState = updater(store, operations[0], 'fixture', 0);
    assert.equal(read(c.option_$o_unwrap(c.first(read(firstState, 'messages'))), 'text'), 'First');
    assert.equal(utterances[0].lang, 'zh-cn');
    assert.equal(utterances[0].rate, 1.2);
    assert.equal(utterances[0].voice.i, 3);
    utterances[0].onend({});
    assert.equal(operations.length, 2);
    assert.equal(utterances[1].text, 'Second');
    assert.deepEqual(delays, [100, 400, 100]);
  } finally {
    globalThis.setTimeout = priorTimer;
    if (priorWindow === undefined) delete globalThis.window; else globalThis.window = priorWindow;
  }
});
