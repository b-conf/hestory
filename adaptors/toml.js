import { parse } from '@ltd/j-toml';

const BOM = '\uFEFF';

export function parseTOML (source) {
  if ( typeof source==='string' && source.startsWith(BOM) ) { source = source.slice(1); }
  return parse(source, 1.0, '\n');
}
