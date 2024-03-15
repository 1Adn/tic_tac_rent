import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement", "toggleUl"]
  connect() {
    console.log("hello");
  }
  showContent() {
    this.togglableElementTarget.classList.toggle("d-none");
    this.togglableUlTarget.classList.toggle("d-none");
  }
}
