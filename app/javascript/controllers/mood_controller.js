import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mood"
export default class extends Controller {
  static targets = ["moodcard"]

  connect() {
    console.log("mood controller connected");
  }

  awesome() {
    fetch("/moods/new?m=awesome", {
      method: "GET",
      headers: { "Accept": "text/plain" },
    })
      .then(response => response.text())
      .then((data) => {
        this.moodcardTarget.innerHTML = data
      })
  }

  happy() {
    fetch("/moods/new?m=happy", {
      method: "GET",
      headers: { "Accept": "text/plain" },
    })
      .then(response => response.text())
      .then((data) => {
        this.moodcardTarget.innerHTML = data
      })
  }

  okay() {
    fetch("/moods/new?m=okay", {
      method: "GET",
      headers: { "Accept": "text/plain" },
    })
      .then(response => response.text())
      .then((data) => {
        this.moodcardTarget.innerHTML = data
      })
  }

  bad() {
    fetch("/moods/new?m=bad", {
      method: "GET",
      headers: { "Accept": "text/plain" },
    })
      .then(response => response.text())
      .then((data) => {
        this.moodcardTarget.innerHTML = data
      })
  }

  terrible() {
    fetch("/moods/new?m=terrible", {
      method: "GET",
      headers: { "Accept": "text/plain" },
    })
      .then(response => response.text())
      .then((data) => {
        this.moodcardTarget.innerHTML = data
      })
  }
}
