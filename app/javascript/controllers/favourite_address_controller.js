import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favourite-address"
export default class extends Controller {
  static targets = ["btn", "address"]

  connect() {
  }

  clickHandler(event) {
    event.preventDefault()
    this.addressTarget.value = event.target.dataset.address

    // nextElementSibling
    this.btnTarget.classList.remove("btn-secondary")
    this.btnTarget.classList.add("btn-primary")
  }
}
