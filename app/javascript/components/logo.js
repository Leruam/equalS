const fixeLogo = function() {
	const searchBar = document.querySelector('.searchbar')

    searchBar.addEventListener('mouseover', function() {
 	let logo = document.querySelector('#logo-js')
    logo.classList.add('stick-logo');
 	console.log('done')
    });
};

export { fixeLogo };