
const getSuggestion = () => {
  fetch("/get_api_key")
    .then(response => response.json())
    .then(data => data.api_key)
    .then(key => {
      const input = document.querySelector('#search_q'); // rajouter dans partial sur input
      const list = document.querySelector('#search-suggestions');
      input.addEventListener('keyup', (event) => {
        list.innerHTML = '';
        fetch(`https://api.bing.microsoft.com/v7.0/Suggestions?q=${input.value}&mkt=fr-FR`, { headers: { "Ocp-Apim-Subscription-Key": key } })
          .then(response => response.json())
          .then(data => {
            let suggestions = insertSuggestions(data);
            suggestions.forEach(suggestion => {
              list.insertAdjacentHTML('beforeend', `<div> ${suggestion} </div>`);
            })
            selectSuggestion();
          });
      });
    })
};

const insertSuggestions = (data) => {
  const suggestion = data.suggestionGroups[0].searchSuggestions.map(searchSuggestion => searchSuggestion.query);
  console.log(suggestion)
  return suggestion.slice(0, 9); // pour avoir les 10 premiers résultats
};

const selectSuggestion = () => {
  const suggestions = document.querySelectorAll("#search-suggestions > div");
  const input = document.querySelector('#search_q');
  if (!suggestions) return; // tu quittes la fct si pas de suggestions dans la page
  suggestions.forEach(suggestion => {
    suggestion.addEventListener("click", (e) => {
      const value = suggestion.innerText;
      input.value = value;
      input.form.submit();
    })
  })
};

export { getSuggestion };


// const list = document.querySelector('#suggest'); // rajouter sur la partial search bar un ul avec cet ID



// let https = require ('https');
// let host = 'api.bing.microsoft.com';
// let path = '/v7.0/Suggestions';
// let mkt = 'fr-FR';
// let query = 'xxx';
// let params = '?mkt=' + mkt + '&q=' + query;
// uri = https + host + path + params


// const searchBar = document.querySelector('#search-form'); // rajouter dans partial sur simple form
//   const input = document.querySelector('#search-input'); // rajouter dans partial sur input
// input.addEventListener('keyup', (event) => {
//   // event.preventDefault();
//   // list.innerHTML = '';
//   fetchSuggest(input.value);
// });

// export { xxxx };

// https://docs.microsoft.com/en-us/bing/search-apis/bing-autosuggest/quickstarts/rest/nodejs

// choper l'input du search form
// ecouter le keyup sur input
// faire fetch sur keyup
//
