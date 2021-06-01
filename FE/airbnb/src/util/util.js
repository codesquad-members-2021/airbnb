const go = (arg, ...fns) => fns.reduce((res, fn) => fn(res), arg);

export const pipe =
  (fn, ...fns) =>
  (...args) =>
    go(fn(...args), ...fns);

export const getUrlParams = () => {
  var params = {};

  window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function (str, key, value) {
    params[key] = value;
  });

  return params;
};
