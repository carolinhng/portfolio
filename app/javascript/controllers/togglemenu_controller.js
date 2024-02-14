import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="togglemenu"
export default class extends Controller {

  static targets = ["links"]

  connect() {
  }

  toggle() {
    this.linksTarget.classList.toggle("menu-mobile");
  }
}
