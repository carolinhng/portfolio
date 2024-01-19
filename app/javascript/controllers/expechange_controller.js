import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="expechange"
export default class extends Controller {

  static targets = ["elementOne", "elementTwo", "elementThree", "elementFour", "elementFive", "resumeOne"]

  connect() {
  }

  classChangeOne() {
    if (this.elementOneTarget.classList.contains("click-on"))

  }

}
