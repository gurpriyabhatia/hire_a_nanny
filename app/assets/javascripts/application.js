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
        const nannies = [
          ["nanny_1.png", 'https://res.cloudinary.com/dtw3qvpgg/image/upload/v1581782099/nanny_1_qbihkp.jpg'],
          ["nanny_2.png", 'https://res.cloudinary.com/dtw3qvpgg/image/upload/v1581782183/nanny_2_wyjcx7.jpg'],
          ["nanny_3.png", 'https://res.cloudinary.com/dtw3qvpgg/image/upload/v1581782022/nanny_3_kwmpb1.jpg'],
          ["nanny_4.png", 'https://res.cloudinary.com/dtw3qvpgg/image/upload/v1581782063/nanny_4_xabymf.jpg'],
          ["nanny_5.png", 'https://res.cloudinary.com/dtw3qvpgg/image/upload/v1581782084/nanny_5_al98y5.jpg'],
          ["nanny_6.png", 'https://res.cloudinary.com/dtw3qvpgg/image/upload/v1581782115/nanny_6_wkjfnu.jpg'],
          ["nanny_7.png", 'https://res.cloudinary.com/dtw3qvpgg/image/upload/v1581782132/nanny_7_kg7scr.jpg'],
          ["nanny_8.png", 'https://res.cloudinary.com/dtw3qvpgg/image/upload/v1581782144/nanny_8_kfealv.jpg'],
          ["nanny_9.png", 'https://res.cloudinary.com/dtw3qvpgg/image/upload/v1581782168/nanny_9_gz8pix.jpg'],
        ]
        content.hits.forEach((hit) => {
          let image = ""
          imgs.forEach((img) => {
            if (hit.id === img[0]) {
              nannies.forEach((nanny) => {
                if (nanny[0] == img[1]) {
                  image = nanny[1];
                }
              })
            }
          })

          if (image) {
            const card = `
              <div>
                <div class="card-trip">
                <img src="${image}">
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
