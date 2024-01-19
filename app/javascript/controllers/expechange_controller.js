import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="expechange"
export default class extends Controller {

  static targets = ["elementOne", "elementTwo", "elementThree", "elementFour", "elementFive", "resume"]

  connect() {
  }

  classChange() {
    console.log(this.elementOneTarget)
    console.log(this.elementTwoTarget)
    console.log(this.elementThreeTarget)
    console.log(this.elementFourTarget)
    console.log(this.elementFiveTarget)
    console.log(this.elementResumeTarget)

    if 

  }

}
