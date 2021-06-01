const go = (arg, ...fns) => fns.reduce((res, fn) => fn(res), arg);

export const pipe =
  (fn, ...fns) =>
  (...args) =>
    go(fn(...args), ...fns);
