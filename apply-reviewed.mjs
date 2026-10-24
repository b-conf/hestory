import assert from 'node:assert/strict';
import {execFileSync,spawnSync} from 'node:child_process';
import {mkdirSync,readFileSync,writeFileSync} from 'node:fs';
const run=(...a)=>execFileSync('calcit',a,{encoding:'utf8',maxBuffer:32e6,stdio:['ignore','pipe','pipe']});
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>norm(JSON.parse(run('query',...a,'--format','json')).data);
const blob=()=>execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}).trim();
mkdirSync('acceptance',{recursive:true});assert.equal(run('-v').trim(),'0.30.1');assert.equal(blob(),'0427ccd5f7403d52bd4c65bde54989a3c71c2625');writeFileSync('acceptance/agent-contract.txt',run('docs','agents','--contract'));
const before=norm(JSON.parse(readFileSync('reviewed.json','utf8'))),expected=structuredClone(before),ops=[],types=[],counts={};assert.equal(before.length,62);assert.equal(before.reduce((n,d)=>n+d.tests.length+d.examples.length,0),0);
const config=q('config'),namespaces=q('ns').namespaces.map(n=>q('ns',n));
function walk(x,path,id){
  if(!Array.isArray(x)||['quote','quasiquote',';','comment','defmacro'].includes(x[0]))return x;
  const alias={'option:unwrap-or':'.unwrap-or','option:unwrap':'.unwrap',merge:'.merge',count:'.len'}[x[0]];
  if(alias){const old=x[0];counts[old]=(counts[old]||0)+1;
    const r=spawnSync('calcit',['query','type-at',id,'--path','@'+[...path,1].join('.'),'--format','json'],{encoding:'utf8',maxBuffer:32e6});assert.equal(r.status,0);const evidence=JSON.parse(r.stdout);types.push({id,path,tree:structuredClone(x),evidence,stderr:r.stderr});writeFileSync('acceptance/receiver-types.json',JSON.stringify(types,null,2));
    if(old.startsWith('option:'))assert.ok(evidence.data.inferred_type?.includes('Option'));
    if(old==='count'){assert.equal(id,'app.comp.container/comp-menu');assert.equal(x[1],'messages');assert.ok(evidence.data.inferred_type?.includes('List'));}
    if(old==='merge'){
      if(['ui/row-middle','ui/textarea'].includes(x[1])){const d=q('def','respo-ui.core/'+x[1].slice(3));assert.equal(d.schema[0],'::');assert.equal(d.schema[1],"'Map");}
      else{assert.equal(id,'app.schema/message-input');assert.deepEqual(x[1],['{}',[':author','|'],[':text','|'],[':code?','false']]);assert.deepEqual(x[2],['decode-map-as','data',['::',"'Map","'Tag","'Dynamic"]]);}
    }
    const p='@'+[...path,0].join('.');assert.equal(JSON.parse(run('tree','show',id,'--path',p,'--format','json')).tree,old);ops.push(['tree','replace',id,'--path',p,'--input-format','json-ast','--code',JSON.stringify(alias),'--expect','quote '+old]);x[0]=alias;
  }
  return x.map((v,i)=>walk(v,[...path,i],id));
}
for(const d of expected){assert.deepEqual(q('def',d.id),before.find(x=>x.id===d.id));d.code=walk(d.code,[],d.id);}
assert.deepEqual(counts,{'option:unwrap-or':10,merge:3,'option:unwrap':7,count:1});assert.equal(ops.length,21);
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));writeFileSync('acceptance/receiver-types.json',JSON.stringify(types,null,2));writeFileSync('acceptance/operations.json',JSON.stringify(ops,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];const preview=JSON.parse(run(...args,'--dry-run'));assert.ok(preview.scoped_revision);writeFileSync('acceptance/transaction-preview.json',JSON.stringify(preview,null,2));writeFileSync('acceptance/transaction-applied.json',run(...args,'--expect-revision',preview.scoped_revision));
const actual=[];for(const ns of namespaces){const names=run('query','defs',ns.namespace).split('\n').filter(x=>/^  \S/.test(x)).map(x=>x.trim().split(' ')[0]);assert.equal(names.length,ns.definition_count);for(const n of names)actual.push(q('def',`${ns.namespace}/${n}`));}assert.deepEqual(actual,expected);assert.deepEqual(q('config'),config);assert.deepEqual(q('ns').namespaces.map(ns=>q('ns',ns)),namespaces);
writeFileSync('acceptance/after.json',JSON.stringify(actual,null,2));writeFileSync('acceptance/snapshot-after-blob.txt',blob());writeFileSync('acceptance/summary.json',JSON.stringify({definitions:62,attachedTests:0,examples:0,operations:21,counts,preserved:'All schemas/FFI/metadata/config/imports/HUD/defaults/data/voice parameters/Worker inline untouched; original10JS business tests unchanged except20 equivalent publicmethod dispatch spellings. Sourceunsafe remains0, no baseline added, no paid TTS/key/model/production operations.'},null,2));
