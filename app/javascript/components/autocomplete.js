// getSuggestion permet d'appeler l'API bing suggestion pour avoir les suggestions quand on tappe au clavier
// cette fonction appelle les deux autres fonctions arraySuggestion et selectSuggestion
//
const getSuggestion = () => {
  fetch("/get_api_key") // pour aller chercher la clé qui est dans .env, on est obligé de passer par ruby
    .then(response => response.json())
    .then(data => data.api_key)
    .then(key => {
      const input = document.querySelector('#search_q'); // l'id search_q est généré par simple_form (regarder dans le DOM)
      const list = document.querySelector('#search-suggestions'); // l'endroit où on va afficher/insérer les suggestions
      input.addEventListener('keyup', (event) => {
        // list.innerHTML = '';
        fetch(`https://api.bing.microsoft.com/v7.0/Suggestions?q=${input.value}&mkt=fr-FR`, { headers: { "Ocp-Apim-Subscription-Key": key } })
          .then(response => response.json())
          .then(data => {
            let suggestions = arraySuggestion(data); // on récupère un tableau de suggestions
            const suggestionHtml = suggestions.map(suggestion => `<div> ${suggestion} </div>`); // mon met ces suggestions dans des div
            list.innerHTML = suggestionHtml.join(''); // on join le tableau de div pour avoir l'affichage complet
            // suggestions.forEach(suggestion => {
            //   list.insertAdjacentHTML('beforeend', `<div> ${suggestion} </div>`);
            // })
            selectSuggestion();
          });
      });
    })
};

// arraySuggestion va récupérer les suggestions de recherche dans le json de suggestions rendu par bing
// ça renvoie un tableau avec 10 éléments (slice)
const arraySuggestion = (data) => {
  const suggestion = data.suggestionGroups[0].searchSuggestions.map(searchSuggestion => searchSuggestion.query);
  console.log(suggestion)
  return suggestion.slice(0, 9); // pour avoir les 10 premiers résultats
};

// selectSuggestion permet, quand on clique sur une des suggestions (div suggestion), de remplir le formulaire et d'appuyer sur submit
const selectSuggestion = () => {
  const suggestions = document.querySelectorAll("#search-suggestions > div"); // récupère toutes les div enfants de l'id search-suggestions
  const input = document.querySelector('#search_q'); // récupère le champs input du simple_form / l'id search_q est généré par simple_form (regarder dans le DOM)
  if (!suggestions) return; // tu quittes la fct si pas de suggestions dans la page
  suggestions.forEach(suggestion => {
    suggestion.addEventListener("click", (e) => { // on rajoute un event listener au click sur chaque div de suggestion
      const value = suggestion.innerText;
      input.value = value; // rentre la valeur cliquée dans le input.value
      input.form.submit(); // déclenche le submit
    })
  })
};

export { getSuggestion };

// https://docs.microsoft.com/en-us/bing/search-apis/bing-autosuggest/quickstarts/rest/nodejs




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



// choper l'input du search form
// ecouter le keyup sur input
// faire fetch sur keyup
//
