import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="expechange"
export default class extends Controller {

  static targets = ["elementOne", "elementTwo", "elementThree", "elementFour", "elementFive"]

  connect() {
  }

  classChangeOne() {
    console.log(this.elementOneTarget)
    if (this.elementOneTarget.classList.contains("click-on")) {
      
    } else {
      this.elementOneTarget.classList.add("click-off")
    }
  }

  classChangeTwo() {
    console.log(this.elementTwoTarget)
  }

  classChangeThree() {
    console.log(this.elementThreeTarget)
  }

  classChangeFour() {
    console.log(this.elementFourTarget)
  }

  classChangeFive() {
    console.log(this.elementFiveTarget)
  }


}
