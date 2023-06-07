import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-title"
export default class extends Controller {
  static targets = ["heading", "form", "edit", "check"]

  connect() {
    
  }
}
