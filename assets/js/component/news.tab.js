const defaultOptions = {
  getYearButtons: () => document.querySelectorAll('#newsYearList button'),
  getMonthLists: () => document.querySelectorAll('.news-month-list'),
  getMonthButtons: () => document.querySelectorAll('.news-month-list button'),
  getListContainers: () => document.querySelectorAll('.news-content-wrap'),
};

export function createNewsTab(customOptions = {}) {
  const options = { ...defaultOptions, ...customOptions };
  const { getYearButtons, getMonthLists, getMonthButtons, getListContainers } = options;

  const $yearButtons = getYearButtons();
  const $monthLists = getMonthLists();
  const $monthButtons = getMonthButtons();
  const $listContainers = getListContainers();

  const defaultYear = () => $yearButtons[0]?.dataset.year;

  // monthId = 'YYYY-MM'
  const showMonth = (monthId) => {
    if(!monthId) return null;

    $listContainers.forEach(el => el.classList.toggle('none', el.id !== `month-${monthId}`));
    $monthButtons.forEach(el => el.classList.toggle('on', el.dataset.month === monthId));
  };

  const showYear = (year, monthId) => {
    if(!year) return null;

    $monthLists.forEach(el => el.classList.toggle('none', el.id !== `year-${year}`));
    $yearButtons.forEach(el => el.classList.toggle('on', el.dataset.year === year));

    // 월 탭은 내림차순이므로 기본으로 열 대상은 첫 번째(가장 최근) 월이다.
    // getElementById를 쓰는 이유: year가 해시에서 온 임의 문자열이라
    // 선택자에 그대로 넣으면 '#:~:text=...' 같은 값에서 SyntaxError가 난다
    const $months = document.getElementById(`year-${year}`)?.querySelectorAll('button');
    const target = monthId || $months?.[0]?.dataset.month;
    showMonth(target);
  };

  const handleYearClick = (e) => {
    const year = e.currentTarget.dataset.year;
    const $months = document.getElementById(`year-${year}`)?.querySelectorAll('button');
    const monthId = $months?.[0]?.dataset.month;

    showYear(year, monthId);
    // 연도만 바꿔도 주소가 화면과 어긋나지 않게 맞춘다.
    // pushState가 아니라 replaceState라 탭을 여러 번 눌러도 뒤로가기가 쌓이지 않는다
    syncHash(monthId);
  };

  const handleMonthClick = (e) => {
    const monthId = e.currentTarget.dataset.month;
    showMonth(monthId);
    syncHash(monthId);
  };

  const syncHash = (monthId) => {
    if(!monthId) return null;
    history.replaceState(null, '', `${location.pathname}#${monthId}`);
  };

  // 해시가 실제 존재하는 월인지 DOM으로 먼저 확인한다.
  // 확인 없이 토글하면 '#2026-13'이나 '#top' 같은 값에 전부 숨겨져 빈 화면이 된다
  const applyHash = () => {
    const monthId = location.hash.slice(1);
    const $container = monthId ? document.getElementById(`month-${monthId}`) : null;

    if(!$container) {
      showYear(defaultYear());
      return null;
    }

    showYear(monthId.split('-')[0], monthId);
  };

  const init = () => {
    if(!$yearButtons.length) return null;

    $yearButtons.forEach(el => el.addEventListener('click', handleYearClick));
    $monthButtons.forEach(el => el.addEventListener('click', handleMonthClick));

    window.addEventListener('hashchange', applyHash);

    if(location.hash) {
      applyHash();
    }
  };

  return { init }
}
