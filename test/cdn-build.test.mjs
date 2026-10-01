import assert from "node:assert/strict";
import { existsSync, readFileSync, readdirSync } from "node:fs";
import { test } from "node:test";

const dist = new URL("../dist/", import.meta.url);

test("built HTML loads its generated assets from the selected CDN path", () => {
  const base = process.env.VITE_BASE_URL;
  assert.ok(base?.startsWith("https://"), "build with VITE_BASE_URL before testing");
  const html = readFileSync(new URL("index.html", dist), "utf8");
  const urls = [...html.matchAll(/(?:src|href)="([^"]+)"/g)]
    .map((match) => match[1])
    .filter((url) => url.includes("assets/"));
  assert.ok(urls.some((url) => url.endsWith(".js")), "built HTML must reference generated JavaScript");
  for (const url of urls) {
    assert.ok(url.startsWith(`${base}assets/`), `${url} must use ${base}`);
    assert.ok(existsSync(new URL(url.slice(base.length), dist)), `${url} must exist in dist`);
  }
});

test("Xunfei worker URL points to the emitted worker on the same CDN path", () => {
  const base = process.env.VITE_BASE_URL;
  assert.ok(base?.startsWith("https://"));
  const assets = new URL("assets/", dist);
  const bundle = readdirSync(assets).find((name) => /^index-.*\.js$/.test(name));
  assert.ok(bundle, "built JavaScript bundle exists");
  const js = readFileSync(new URL(bundle, assets), "utf8");
  const worker = js.match(/new Worker\([`"]([^`"]*transcode\.worker[^`"]+\.js)[`"](?:,|\))/);
  assert.ok(worker, "bundle references the Xunfei worker");
  assert.ok(worker[1].startsWith(`${base}assets/`));
  assert.ok(existsSync(new URL(worker[1].slice(base.length), dist)));
});
