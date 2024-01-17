import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="expechange"
export default class extends Controller {

  static targets = ["elements", "resume"]

  connect() {
    console.log(this.elementsTargets)
  }

  classChange() {
    console.log(this.elementsTargets)

    this.elementsTargets.forEach(target => {
      if (target.classList.contains("click-on")) {
        this.resumeTarget.innerHTML = `<%= render "sections/banner" %>`;
        // target.classList.remove("btn-danger");
        // target.classList.add("btn-success")
      }
      else {
        target.innerHTML = `<i class="fa-solid fa-bolt"></i> Rendre mon jeu disponible`
        target.classList.remove("btn-success")
        target.classList.add("btn-danger")
      }
    });
  }



}
