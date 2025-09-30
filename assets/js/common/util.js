export const Util = {

  debounce: (fn, delay) => {
    let timeoutId;
    return function(...args) {
      if(timeoutId) {
        clearTimeout(timeoutId);
      }
      timeoutId = setTimeout(() => {
        fn.apply(this, args);
      }, delay);
    };
  },

};