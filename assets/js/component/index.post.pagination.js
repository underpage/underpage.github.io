const defaultOptions = {
  postList: 10,
  pageList: 10,  
  getIndexPostList: () => document.getElementById('indexPostList'),
  getIndexPagination: () => document.getElementById('indexPagination'),
};

export function createPostPagination(customOptions = {}) {
  const options = { ...defaultOptions, ...customOptions };
  const { postList, pageList, getIndexPostList, getIndexPagination } = options;

  const $indexPostList = getIndexPostList();
  const $indexPagination = getIndexPagination();

  let $itemList = null;
  let currentPage = 1;
  let pageCount = 0;

  const updatePaginationButtons = () => {
    const buttons = $indexPagination.getElementsByTagName('button');
    Array.from(buttons).forEach((button) => {
      if(button.classList.contains('prev-btn') || button.classList.contains('next-btn')) return;
      button.classList.toggle('on', (parseInt(button.dataset.page, 10) === currentPage));
    });

    const prevBtn = $indexPagination.querySelector('.prev-btn');
    const nextBtn = $indexPagination.querySelector('.next-btn');

    if(prevBtn) prevBtn.classList.toggle('none', (currentPage === 1));
    if(nextBtn) nextBtn.classList.toggle('none', (currentPage === pageCount));
  }

  const createEllipsis = () => {
    const ellipsis = document.createElement('span');
    ellipsis.textContent = ' ... ';
    return ellipsis;
  }

  const createPageButton = (pageNum) => {
    const btn = createButton(pageNum, null, () => showPage(pageNum));
    btn.dataset.page = pageNum;
    if(pageNum === currentPage) {
      btn.classList.add('on');
    }
    return btn;
  }

  const createButton = (text, className, onClick) => {
    const btn = document.createElement('button');
    btn.textContent = text;
    if(className) {
      btn.classList.add(className);
    }
    btn.addEventListener('click', onClick);
    return btn;
  }

  const setupPaginationBtn = () => {
    if($itemList.length === 0) return;

    $indexPagination.innerHTML = '';

    const prevBtn = createButton('prev', 'prev-btn', () => {
      if(currentPage > 1) showPage(currentPage - 1);
    });
    $indexPagination.appendChild(prevBtn);

    const halfMaxVisiblePages = Math.floor(pageList / 2);
    let startPage = Math.max(1, currentPage - halfMaxVisiblePages);
    let endPage = Math.min(pageCount, startPage + pageList - 1);

    if(endPage - startPage + 1 < pageList) {
      startPage = Math.max(1, endPage - pageList + 1);
    }

    if(startPage > 1) {
      $indexPagination.appendChild(createPageButton(1));
      if(startPage > 2) $indexPagination.appendChild(createEllipsis());
    }

    for(let i = startPage; i <= endPage; i++) {
      $indexPagination.appendChild(createPageButton(i));
    }

    if(endPage < pageCount) {
      if(endPage < pageCount - 1) $indexPagination.appendChild(createEllipsis());
      $indexPagination.appendChild(createPageButton(pageCount));
    }

    const nextBtn = createButton('next', 'next-btn', () => {
      if(currentPage < pageCount) showPage(currentPage + 1);
    });
    $indexPagination.appendChild(nextBtn);

    updatePaginationButtons();
  }

  const showPage = (page) => {
    if($itemList.length === 0) return;

    currentPage = page;

    const startIndex = (currentPage - 1) * postList;
    const endIndex = startIndex + postList;
    $itemList.forEach((item, i) => {
      item.style.display = (i >= startIndex && i < endIndex) ? 'block' : 'none';
    });

    location.hash = `page/${currentPage}`;
    setupPaginationBtn();

    $indexPostList.hidden = false;
  }

  const getPageFromURL = () => {
    const hash = location.hash;
    const match = hash.match(/#page\/(\d+)/);
    return match ? parseInt(match[1], 10) : 1;
  }

  const calculatePageCount = () => {
    pageCount = Math.ceil($itemList.length / postList);
  }

  const sortItems = () => {
    $itemList.sort((a, b) => {
      const dateA = new Date(a.querySelector('time').getAttribute('datetime'));
      const dateB = new Date(b.querySelector('time').getAttribute('datetime'));
      return dateB - dateA;
    });
    $itemList.forEach(item => $indexPostList.appendChild(item));
  }
  
  const init = () => {

    $itemList = Array.from($indexPostList .getElementsByTagName('li'));
    
    sortItems(); 
    calculatePageCount();
    currentPage = getPageFromURL();
    showPage(currentPage);

    window.addEventListener('hashchange', () => {
      const page = getPageFromURL();
      if(page != currentPage) {
        showPage(page);
      }
    });
  }

  return { init };
}