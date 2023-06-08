import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="theme"
export default class extends Controller {
  static targets = ["themeheader", "themeinput", "editbutton", "checkbutton", "themeform"]

  connect() {
  }

  displayForm() {
    // set the value of the input box before displaying it
    this.themeinputTarget.value = this.themeheaderTarget.innerText

    // hide the title and the edit button
    this.themeheaderTarget.classList.add("d-none")
    this.editbuttonTarget.classList.add("d-none")

    // show the form
    this.themeformTarget.classList.remove("d-none")
  }

  update(event) {
    event.preventDefault()

    // set the heading to the new value from the form
    this.themeheaderTarget.innerText = this.themeinputTarget.value

    // hide the form
    this.themeformTarget.classList.add("d-none")

    // show the title and the edit button
    this.themeheaderTarget.classList.remove("d-none")
    this.editbuttonTarget.classList.remove("d-none")

    // send the AJAX update
    const url = this.themeformTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "html" },
      body: new FormData(this.themeformTarget)
    })
    .then(response => response.text())
    .then((data) => {
      console.log(data)
    })
  }
}
