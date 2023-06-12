import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="inspiration"
export default class extends Controller {
  static targets = ["message"]

  connect() {
  }

  cycle() {
    // do AJAX to fetch new text
    const url = '/inspirations/random'
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      // replace the text in textTarget
      const sentence = this.#decodeHtml(data)
      new Typed(this.messageTarget, {
        strings: [sentence],
        typeSpeed: 50,
        loop: false,
        showCursor: false
      })
    })
  }

  #decodeHtml(html) {
    var txt = document.createElement("textarea");
    txt.innerHTML = html;
    return txt.value;
  }
}
