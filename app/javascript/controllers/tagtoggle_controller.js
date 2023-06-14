import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tagtoggle"
export default class extends Controller {
  // static targets = ["tag"]

  connect() {
    console.log("tagtoggle controller connected");
  }

  clickHandler(event) {
    this.tagTarget.labels[0].classList.add("button-17")
  }
}
