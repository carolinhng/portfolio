import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="expechange"
export default class extends Controller {

  static targets = ["company"]

  connect() {

  }

  classChange(event) {
    // Log the event details
    console.log(event);

    // Iterate over company targets
    this.companyTargets.forEach(target => {
      if (target === event.currentTarget) {
        target.classList.add("click-on");
        target.classList.remove("click-off");
      } else {
        target.classList.remove("click-on");
        target.classList.add("click-off");
      }
    });
  }
}
