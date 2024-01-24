import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="expechange"
export default class extends Controller {

  static targets = ["company", "resumeOne", "resumeTwo", "resumeThree", "resumeFour", "resumeThree", "resumeFive", "resumeSix"]

  connect() {

  }

  classChange(event) {
    this.companyTargets.forEach(target => {
      if (target === event.currentTarget) {
        target.classList.add("click-on");
        target.classList.remove("click-off");

        if (target.innerText === "INDEPENDANTE") {
          this.resumeOneTarget.classList.remove("d-none");
          this.resumeTwoTarget.classList.add("d-none")
          this.resumeThreeTarget.classList.add("d-none")
          this.resumeFourTarget.classList.add("d-none")
          this.resumeFiveTarget.classList.add("d-none")
          this.resumeSixTarget.classList.add("d-none")

        } else if (target.innerText === "ALDI"){
          this.resumeOneTarget.classList.add("d-none");
          this.resumeTwoTarget.classList.remove("d-none")
          this.resumeThreeTarget.classList.add("d-none")
          this.resumeFourTarget.classList.add("d-none")
          this.resumeFiveTarget.classList.add("d-none")
          this.resumeSixTarget.classList.add("d-none")

        } else if (target.innerText === "DU JARDIN"){
          this.resumeOneTarget.classList.add("d-none");
          this.resumeTwoTarget.classList.add("d-none")
          this.resumeThreeTarget.classList.remove("d-none")
          this.resumeFourTarget.classList.add("d-none")
          this.resumeFiveTarget.classList.add("d-none")
          this.resumeSixTarget.classList.add("d-none")

        } else if (target.innerText === "E. LECLERC"){
          this.resumeOneTarget.classList.add("d-none");
          this.resumeTwoTarget.classList.add("d-none")
          this.resumeThreeTarget.classList.add("d-none")
          this.resumeFourTarget.classList.remove("d-none")
          this.resumeFiveTarget.classList.add("d-none")
          this.resumeSixTarget.classList.add("d-none")

        } else if (target.innerText === "QUINTESSENCE"){
          this.resumeOneTarget.classList.add("d-none");
          this.resumeTwoTarget.classList.add("d-none")
          this.resumeThreeTarget.classList.add("d-none")
          this.resumeFourTarget.classList.add("d-none")
          this.resumeFiveTarget.classList.remove("d-none")
          this.resumeSixTarget.classList.add("d-none")

        } else if (target.innerText === "ECP - ABORAL"){
          this.resumeOneTarget.classList.add("d-none");
          this.resumeTwoTarget.classList.add("d-none")
          this.resumeThreeTarget.classList.add("d-none")
          this.resumeFourTarget.classList.add("d-none")
          this.resumeFiveTarget.classList.add("d-none")
          this.resumeSixTarget.classList.remove("d-none")
        }

      } else {
        target.classList.remove("click-on");
        target.classList.add("click-off");
      }

    });

  }
}
