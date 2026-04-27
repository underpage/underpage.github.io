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

  // [FIX] disableTabFocus를 전역 함수에서 모듈 내부 함수로 이동
  // 기존: header.html 인라인 <script>에 전역으로 선언 → ES 모듈이 전역 스코프에 의존하는 구조
  // 수정: 모듈 안에서 직접 정의하여 외부 의존성 제거
  const disableTabFocus = () => {
    $headerCategory.querySelectorAll('button, a').forEach(el => {
      el.setAttribute('tabindex', '-1');
    });
    $headerCategory.tabIndex = -1;
  };

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
    // [FIX] 전역 함수 호출 제거 → 모듈 내부 함수 직접 호출
    // 기존: 전역 disableTabFocus()를 호출하여 header.html 인라인 스크립트에 암묵적으로 의존
    // 수정: 모듈 내부에 정의된 disableTabFocus()를 호출하므로 외부 의존 없음
    disableTabFocus();
    $openBtn.addEventListener('click', toggleVisibility);
    $closeBtn.addEventListener('click', toggleVisibility);
  };

  const destroy = () => {
    $openBtn.removeEventListener('click', toggleVisibility);
    $closeBtn.removeEventListener('click', toggleVisibility);
  };

  return { init, destroy };

}
