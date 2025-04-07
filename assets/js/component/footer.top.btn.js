import { Util } from '../common/util.js';



const defaultOptions = {
  scrollY: 100,
  getHeader: () => document.getElementById('commonHeader'),
  getScrollTopBtn: () => document.getElementById('scrollTopBtn'),

};

export function createFooterTopBtn(customOptions = {}) {
  const options = { ...defaultOptions, ...customOptions };
  const { scrollY, getHeader, getScrollTopBtn } = options;

  const $header = getHeader();
  const $scrollTopBtn = getScrollTopBtn();

  const focusToHeader = () => {
    if(window.scrollY === 0) {
      $header.focus();
    }
  }

  const handleScroll = () => {
    if(window.scrollY > scrollY) {
      $scrollTopBtn.classList.add('show');
    } else {
      $scrollTopBtn.classList.remove('show');
    }
  }

  const scrollToTop = () => {
    window.scrollTo({
      top: 0,
      behavior: 'smooth',
    });

    const scrollEndHandler = () => {
      focusToHeader();
      window.removeEventListener('scrollend', scrollEndHandler);
    };

    if('onscrollend' in window) {
      window.addEventListener('scrollend', scrollEndHandler, { once: true });
    } else {
      setTimeout(focusToHeader, 300);
    }

    history.pushState('', document.title, window.location.pathname + window.location.search);
  }

  const debouncedHandleScroll = Util.debounce(handleScroll, 100);

  const init = () => {
    $scrollTopBtn.addEventListener('click', scrollToTop);
    window.addEventListener('scroll', debouncedHandleScroll);
    handleScroll();
  };

  const destroy = () => {
    $scrollTopBtn.removeEventListener('click', scrollToTop);
    window.removeEventListener('scroll', debouncedHandleScroll);
  };

  return { init, destroy };

}