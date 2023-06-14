import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="penalty"
export default class extends Controller {
  static targets = ["timer"]
  connect() {
    console.log("Connecting to data-controller=penalty");
    console.log(this.timerTarget);

    console.log(this.element);
  }

  send(event) {
    alert("t'es nul");
    console.log(event.currentTarget.href);
    event.preventDefault();


    fetch(event.currentTarget.href, {
      headers: { "Accept": "application/json" }
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
        this.timerTarget.outerHTML = data.penalty;
      })
  }
}
