import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-title"
export default class extends Controller {
  static targets = ["heading", "form", "edit", "check"]

  connect() {
    console.log("edit-movie controller connected")
  }

  displayForm() {
    this.headingTarget.classList.add("d-none")
    this.editTarget.classList.add("d-none")
    this.formTarget.classList.remove("d-none")
    this.checkTarget.classList.remove("d-none")
  }

  hideForm() {
    this.headingTarget.classList.remove("d-none")
    this.editTarget.classList.remove("d-none")
    this.formTarget.classList.add("d-none")
    this.checkTarget.classList.add("d-none")
    this.headingTarget.innerText = this.formTarget.value
  }
}
