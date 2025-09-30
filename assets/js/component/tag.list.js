import { Util } from '../common/util.js';



const defaultOptions = {
  getTagLinks: () => document.querySelectorAll('#tagList a'),
  getListContainers: () => document.querySelectorAll('.tag-list-container'),
};

export function createTagList(customOptions = {}) {
  const options = { ...defaultOptions, ...customOptions};
  const { getTagLinks, getListContainers } = options;

  const $tagLinks = getTagLinks();
  const $listContainers = getListContainers();

  const activeTagLink = (tagId) => {
    $tagLinks.forEach(link => link.classList.toggle('on', link.getAttribute('data-url') === tagId));
  };

  const showTagList = (tagId) => {
    if(!tagId) return null;

    tagId = tagId.replace('#', '');

    $listContainers.forEach(el => {
      el.classList.toggle('none', el.id !== `${tagId}Container`);
    });

    activeTagLink(tagId);
  }

  const scrollToList = (tagId) => {
    const element = document.getElementById(`${tagId}Container`);
    element?.scrollIntoView({ behavior: 'smooth', block: 'start' });
  }

  const handleTagClick = (e) => {
    e.preventDefault();
    const newUrl = e.currentTarget.getAttribute('data-url');
    window.location.hash = newUrl;
    activeTagLink(newUrl);
    showTagList(newUrl);
    scrollToList(newUrl);
  };

  const handleHashChange = () => {
    const tagId = location.hash.slice(1);
    showTagList(tagId);
    scrollToList(tagId);
  };

  const handleScroll = () => {
    if(window.scrollY == 0) {
      if(window.location.hash) {
        $tagLinks.forEach(link => link.classList.remove('on'));
        history.pushState('', document.title, window.location.pathname + window.location.search);
      }
    }
  };

  const debouncedHandleScroll = Util.debounce(handleScroll, 100)

  const init = () => {

    $tagLinks.forEach(el => el.addEventListener('click', handleTagClick));

    window.addEventListener('hashchange', handleHashChange);

    window.addEventListener('scroll', debouncedHandleScroll);

    if(window.location.hash) {
      handleHashChange();
    }

  }

  return { init }
}