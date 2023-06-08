import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="inspiration"
export default class extends Controller {
  static targets = ["message"]

  connect() {
    console.log("inspiration controller is connected");
  }

  cycle() {
    console.log("inspiration button was clicked");
    // do AJAX to fetch new text
    const url = 'http://localhost:3000/inspirations/random'
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      // replace the text in textTarget
      this.messageTarget.innerText = data
    })
  }
}
