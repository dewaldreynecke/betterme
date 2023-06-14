import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tagtoggle"
export default class extends Controller {

  connect() {
    // select all the checkboxes
    document.querySelectorAll(".form-check").forEach((form_check) => {
      // give them their initial (unselected) style
      form_check.lastChild.classList.add("button-17")

      // if clicked, toggle the style that makes them appear selected
      form_check.addEventListener("click", (event) => {
        if (event.target.localName === "label") {
          event.originalTarget.classList.toggle("button-17")
        }
      });
    });
  }
}
