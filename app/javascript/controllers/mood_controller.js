import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mood"
export default class extends Controller {
  static targets = ["moodcard"]

  connect() {
    console.log("mood controller connected");
  }

  awesome() {
    this.#setCalendar("awesome")
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
    this.#setCalendar("happy")
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
    this.#setCalendar("okay")
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
    this.#setCalendar("bad")
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
    this.#setCalendar("terrible")
    fetch("/moods/new?m=terrible", {
      method: "GET",
      headers: { "Accept": "text/plain" },
    })
      .then(response => response.text())
      .then((data) => {
        this.moodcardTarget.innerHTML = data
      })
  }

  #setCalendar(mood) {
    const today = Date.now()
    const date = new Date(today)
    const day = date.getDate()
    const todayCal = document.getElementById(day)
    todayCal.classList.add(`cal-m-${mood}`)
  }
}
