import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement", "toggleUl", "togglableWatches"]
  connect() {
    console.log("hello");
  }
  showContent() {
    this.togglableElementTarget.classList.toggle("d-none");
    // this.togglableUlTarget.classList.toggle("d-none");
    this.togglableWatchesTarget.classList.add("d-none");
  }
  showWatches() {
    this.togglableElementTarget.classList.add("d-none");

    this.togglableWatchesTarget.classList.toggle("d-none");
  }
}
