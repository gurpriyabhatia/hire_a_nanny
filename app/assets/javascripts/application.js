//= require rails-ujs
//= require_tree .
//= require algolia/v3/algoliasearch.min
const input = document.querySelector('#search')
var client = algoliasearch('UJDY27XD03', 'dbef46af8ed0a92e0204b6852744ddf4');
var index = client.initIndex('Hire-a-nanny');

const searchAlgolia = () => {
  const input = document.querySelector('#search').value;
  if (input) {
    index.search(input)
      .then(function searchDone(content) {
        console.log(content)
      })
      .catch(function searchFailure(err) {
        console.error(err);
      });
    };
    }

if (input) {
input.addEventListener('keyup', searchAlgolia);
}
