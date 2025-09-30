const defaultOptions = {
  visibleClass: 'visible',
  activeClass: 'on',
  getSubFolder: () => document.querySelectorAll('h3.sub-folder'),
  getSubFileContainer: () => document.querySelectorAll('div.sub-nav-container'),
  getFileLinks: () => document.querySelectorAll('.sub-nav-list a'),
};

export function createSidePostNav(customOptions = {}) {
  const options = { ...defaultOptions, ...customOptions };
  const { visibleClass, activeClass, getSubFolder, getSubFileContainer, getFileLinks } = options;

  const $subFolders = getSubFolder();
  const $subFileContainers =getSubFileContainer();
  const $fileLinks = getFileLinks();

  const highlightCurrentPath = () => {
    const currentPath = window.location.pathname;

    $subFolders.forEach(folder => folder.classList.remove(activeClass));
    $subFileContainers.forEach(container => container.classList.remove(visibleClass));
    $fileLinks.forEach(link => link.classList.remove(activeClass));

    $fileLinks.forEach(link => {
      if(link.getAttribute('href') === currentPath) {
        link.classList.add(activeClass);
        
        let parent = link.closest('.sub-nav-container');
        while(parent) {
          parent.classList.add(visibleClass);
          const parentFolder = document.querySelector(`[data-folder-id="${parent.dataset.folderId}"]`);
          if(parentFolder) {
            parentFolder.classList.add(activeClass);
          }
          parent = parent.parentElement.closest('.sub-nav-container');
        }
      }
    });

  }

  const toggleFolder = (folder) => {
    
    $subFileContainers.forEach(container => {
      if(container.dataset.folderId == folder.dataset.folderId) {
        const isVisible = container.classList.toggle(visibleClass);
        folder.classList.toggle(activeClass, isVisible);
      }
    });

  };

  const init = () => {
    
    $subFolders.forEach(el => {
      el.addEventListener('click', (event) => {
        event.stopPropagation();
        toggleFolder(el);
      });
    });

    highlightCurrentPath();
  };

  return { init };
}