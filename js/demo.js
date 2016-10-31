
import { multiply } from 'math.js';

riot.mixin('myMixin', {
  greet(name){ return `hello ${name}`; },
  multiply: multiply
});

riot.mount('*');
