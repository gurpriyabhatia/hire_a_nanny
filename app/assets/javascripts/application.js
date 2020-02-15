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
        console.log(content.hits)
        const row = document.querySelector(".cards");
        row.innerHTML = "";
        const imgs = JSON.parse(document.querySelector(".cards").dataset.imgs);
        content.hits.forEach((hit) => {
          let image = ""
          imgs.forEach((img) => {
            if (hit.id === img[0]) {
              image = img[1];
            }
          })
          if (image) {
            const card = `
              <div>
                <div class="card-trip">
                <img src="/assets/${image}">
                  <div class="card-trip-infos">
                    <div>
                      <h2><a href="/nannies/${hit.id}">${hit.nanny_name}</a></h2>
                       <h2> (£ ${hit.price_per_hour} per hour)</h2>
                    </div>
                  </div>
                </div>
              </div>
            `
            row.insertAdjacentHTML("beforeend", card);
          }
        })
      })
      .catch(function searchFailure(err) {
        console.error(err);
      });
    };
    }

if (input) {
input.addEventListener('keyup', searchAlgolia);
}
