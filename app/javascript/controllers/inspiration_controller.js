import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="inspiration"
export default class extends Controller {
  static targets = ["text"]

  connect() {
    console.log("inspiration controller is connected");
  }

  cycle() {
    console.log("inspiration button was clicked");
    // do AJAX to fetch new text
    // replace the text in textTarget
  }
}
