const defaultOptions = {
  getHeaderCategory: () => document.getElementById('headerCategory'),
  getOpenBtn: () => document.getElementById('categoryOpenBtn'),
  getCloseBtn: () => document.getElementById('categoryCloseBtn'),
};

export function createHeaderCategoryMenu(customOptions = {}) {
  const options = { ...defaultOptions, ...customOptions };
  const { getHeaderCategory, getOpenBtn, getCloseBtn } = options;

  const $headerCategory = getHeaderCategory();
  const $openBtn = getOpenBtn();
  const $closeBtn = getCloseBtn();

  const toggleTabIndex = (value) => {
    $headerCategory.querySelectorAll('button, a').forEach(el => el.tabIndex = value);
    $headerCategory.tabIndex = value;
  };

  const toggleScrolling = (enable) => {
    const method = enable ? 'add' : 'remove';
    document.documentElement.classList[method]('no-scroll');
    document.body.classList[method]('no-scroll');
  };

  const initCategoryTitle = () => {
    const firstItem = document.querySelector('.category-title-list button');
    firstItem?.click();
  }

  const toggleVisibility = () => {
    const isVisible = $headerCategory.classList.toggle('visible');

    $headerCategory.style.overflowY = isVisible ? 'auto' : 'hidden';
    toggleTabIndex(isVisible ? '0' : '-1');
    toggleScrolling(isVisible);
    if(isVisible) {
      document.querySelector('.category-title-list button')?.click();
    }
  };

  const init = () => {
    disableTabFocus();
    $openBtn.addEventListener('click', toggleVisibility);
    $closeBtn.addEventListener('click', toggleVisibility);
  };

  const destroy = () => {
    $openBtn.removeEventListener('click', toggleVisibility);
    $closeBtn.removeEventListener('click', toggleVisibility);
  };

  return { init, destroy};

}