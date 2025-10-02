import { Util } from '../common/util.js';



const defaultOptions = {
  jsonDataPath: '/assets/data/doc_items.json',
  getSearchInput: () => document.getElementById('searchPostInput'),
  getSearchResult: () => document.getElementById('searchPostList'),
};

export function createSearchPostForm(customOptions = {}) {
  const options = { ...defaultOptions, ...customOptions };
  const { jsonDataPath, getSearchInput, getSearchResult } = options;

  const $searchInput = getSearchInput();
  const $searchResult = getSearchResult();

  const loadJSON = async () => {
    try {
      const response = await fetch(jsonDataPath);
      if(!response.ok) throw new Error('[ERROR] response was not ok');
      return await response.json();
    
    } catch(error) {
      console.error('[Fetch ERROR] ', error);
      return null;
    }
  }
  
  const filterPost = (item, lowerCaseQuery) => {

    const title = (item.title || '').toLowerCase();
    const description = (item.description || '').toLowerCase();

    if(title.includes(lowerCaseQuery) || description.includes(lowerCaseQuery)) {
      return [item];
    }

    if(item.tags && item.tags.length > 0) {
      const matchingTags = item.tags.filter(tag => {
        if(tag) {
          return tag.toLowerCase().includes(lowerCaseQuery)
        }
        return []
      });

      if(matchingTags.length > 0) {
        return [item];
      }
    }

    if(item.posts && item.posts.length > 0) {
      return item.posts.flatMap(post => filterPost(post, lowerCaseQuery));
    }

    return [];
  };

  const searchPost = (items, query) => {
    const lowerCaseQuery = query.toLowerCase();
    const results = items.flatMap(item => {
      const filteredPosts = filterPost(item, lowerCaseQuery);
      return filteredPosts.length > 0 ? [{ ...item, posts: filteredPosts }] : [];
    });

    return results;
  };

  const createPostElement = (item) => {
    const li = document.createElement('li');
    if(item.title) {
      li.innerHTML = `
        <article class="post-item-wrap">
          <a href="${item.url}">
            <span class="title">${item.title}</span>
            <span class="desc">${item.description}</span>
          </a>
          <time datetime="${item.modified_time}" class="date no-select">
            ${item.modified_time}
          </time>
        </article>`;
      return li;
    }
  };

  const displayResult = (items) => {
    if(items.length < 1) {
      $searchResult.innerHTML = '<li>검색 결과가 없습니다.</li>';
      return null;
    }

    /*
    const countElement = document.createElement('p');
    countElement.className = 'search-count';
    countElement.textContent = `${items.length} 개의 검색 결과가 있습니다.`;
    */

    const fragment = document.createDocumentFragment();
    const displayItem = (item) => {
      const itemElement = createPostElement(item);
      if(itemElement) {
        fragment.appendChild(itemElement);
      }
      
      if(item.posts && item.posts.length > 0) {
        item.posts.forEach(displayItem);
      }
    };

    items.forEach(displayItem);
    $searchResult.appendChild(fragment);
  }

  const performSearch = async (query) => {
    const data = await loadJSON();
    if(data) {
      displayResult(searchPost(data, query));
    }
  };

  const init = () => {
    const urlParams = new URLSearchParams(window.location.search);
    const query = urlParams.get('q');
    
    if(query) {
      $searchInput.value = query;
      performSearch(query);
    }
    
    //const debouncedSearch = Util.debounce(performSearch, 100);
    //$searchInput.addEventListener('input', (e) => debouncedSearch(e.target.value));
  }

  return { init };
}  