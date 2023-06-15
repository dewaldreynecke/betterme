import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favourite-address"
export default class extends Controller {
  static targets = ["btn", "address"]

  connect() {
  }

  clickHandler(event) {
    event.preventDefault()
    // save the address in the form field
    this.addressTarget.value = event.target.dataset.address

    // iterate through the buttons to activate the clicked one
    // and deactivate the others
    this.btnTargets.forEach(function (element) {
      if (element.dataset.name === event.target.dataset.name) {
        // element.classList.remove("button-17")
        // element.classList.add("button-74")
        element.classList.add("tag-selected")
      } else {
        element.classList.remove("tag-selected")
        // element.classList.add("button-17")
      }
    })
  }
}
