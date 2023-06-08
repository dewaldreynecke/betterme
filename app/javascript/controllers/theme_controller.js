import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="theme"
export default class extends Controller {
  static targets = ["themeheader", "themeinput", "editbutton", "checkbutton"]

  connect() {
  }

  displayForm() {
    // set the value of the input box before displaying it
    this.themeinputTarget.value = this.themeheaderTarget.innerText
    // hide the title and the edit button
    this.themeheaderTarget.classList.add("d-none")
    this.editbuttonTarget.classList.add("d-none")
    // show the form and the checkbutton
    this.themeinputTarget.classList.remove("d-none")
    this.checkbuttonTarget.classList.remove("d-none")
  }

  hideForm() {
    // set the heading to the new value from the form
    this.themeheaderTarget.innerText = this.themeinputTarget.value
    // hide the form and the checkbutton
    this.themeinputTarget.classList.add("d-none")
    this.checkbuttonTarget.classList.add("d-none")
    // show the title and the edit button
    this.themeheaderTarget.classList.remove("d-none")
    this.editbuttonTarget.classList.remove("d-none")
    // send the AJAX update
  }
}
