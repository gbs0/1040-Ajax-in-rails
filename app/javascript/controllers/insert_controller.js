import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert"
export default class extends Controller {
  static targets = ["list", "form"]
  connect() {
    // console.log(this.listTarget)
    // console.log(this.formTarget)
  }

  send(event) {
    event.preventDefault()

    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json"},
      body: new FormData(this.formTarget)
    })
    .then(response => response.json())
    .then((data) => {
      if (data.item) {
        this.listTarget.insertAdjacentHTML("beforeend", data.item)
      }
      this.formTarget.outerHTML = data.form
    })
  }
}
