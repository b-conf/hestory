import { parse } from '@ltd/j-toml';

export default (data) => parse(data, 1.0, '\n');
