import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mood"
export default class extends Controller {
  static targets = ["moodcard"]

  connect() {
    console.log("mood controller connected");
  }

  awesome() {
    console.log("awesome mood selected");
  }

  happy() {
    console.log("happy mood selected");
  }

  okay() {
    console.log("okay mood selected");
  }

  bad() {
    console.log("bad mood selected");
  }

  terrible() {
    console.log("terrible mood selected");
  }
}
