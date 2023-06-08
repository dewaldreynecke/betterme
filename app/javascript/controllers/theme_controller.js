import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="theme"
export default class extends Controller {
  static targets = ["themeheader", "themeinput", "editbutton", "checkbutton"]

  connect() {
    console.log("theme controller connected")
    console.log("Here are the targets")
    console.log("themeheader:")
    console.log(this.themeheaderTarget)
    console.log("themeinput:")
    console.log(this.themeinputTarget)
    console.log("editbutton:")
    console.log(this.editbuttonTarget)
    console.log("checkbutton:")
    console.log(this.checkbuttonTarget)
  }

  displayForm() {
    // this.headingTarget.classList.add("d-none")
    console.log("displayForm action triggered")
  }

  hideForm() {
    // this.headingTarget.innerText = this.formTarget.value
    console.log("hideForm action triggered")
  }
}
