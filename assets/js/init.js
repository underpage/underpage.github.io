import { createHeaderCategoryMenu } from './component/header.category.menu.js';
import { createFooterTopBtn } from './component/footer.top.btn.js';



const initCommonComponents = () => {
  try {
    const headerCategoryMenu = createHeaderCategoryMenu();
    headerCategoryMenu.init();

    const footerTopBtn = createFooterTopBtn();
    footerTopBtn.init();
    
  } catch (error) {
    console.error('[Error] init:', error);
  }
};

const initPathComponents = async () => {
  const path = window.location.pathname;

  try {
    
    if(['/', '/index'].includes(path)) {
      const { createPostPagination } = await import('./component/index.post.pagination.js');
      const postPagination = createPostPagination();
      postPagination.init();
    }

    if(path === '/tag') {
      const { createTagList } = await import('./component/tag.list.js');
      const tagList = createTagList();
      tagList.init();
    }

    if(path === '/search') {
      const { createSearchPostForm } = await import('./component/search.post.form.js');
      const searchPostForm = createSearchPostForm();
      searchPostForm.init();
    }

    if(path.includes('doc')) {
      const { createSidePostNav } = await import('./component/side.post.nav.js');
      const sidePostNav = createSidePostNav();
      sidePostNav.init();
    }

  } catch (error) {
    console.error('[Error] init:', error);
  }
};

const init = () => {
  initCommonComponents();
  initPathComponents();
};

document.addEventListener('DOMContentLoaded', init);