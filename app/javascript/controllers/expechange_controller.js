import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="expechange"
export default class extends Controller {

  static targets = ["tabs", "panels"]

  static values = {
    defaultTab: String
  }

  connect() {
    this.panelsTargets.map(panel => panel.hidden = true) // hide all tabs by default
    // OPEN DEFAULT TAB

    try {
      const selectedTab = this.tabsTargets.find((tab) => tab.id === this.defaultTabValue)
      const selectedPanel = this.panelsTargets.find((panel) => panel.id === this.defaultTabValue)
      selectedPanel.hidden = false
      selectedTab.classList.add("click-on")
    } catch { }
  }

  select(event) {
    const selectPanel = this.panelsTargets.find((panel) => panel.id === event.currentTarget.id)
    if (selectPanel.hidden) {
      this.panelsTargets.map(panel => panel.hidden = true)
      selectPanel.hidden = false
      this.tabsTargets.map(tab => tab.classList.remove("click-on"))
      event.currentTarget.classList.add("click-on")
    }
  }





}
