const fixeLogo = function() {
	const searchBar = document.querySelector('.searchbar');
  if (searchBar) {
    searchBar.addEventListener('mouseover', (event) => {
     	let logo = document.querySelector('#logo-js')
      logo.classList.add('stick-logo');
    });
  }
};

export { fixeLogo };
