import { Controller } from "@hotwired/stimulus"

import Swal from 'sweetalert2'


// Connects to data-controller="penalty"
export default class extends Controller {
  static targets = ["timer"]
  connect() {
    console.log("Connecting to data-controller=penalty");
    console.log(this.timerTarget);

    console.log(this.element);
  }

  send(event) {

    console.log(event.currentTarget.href);
    event.preventDefault();


    fetch(event.currentTarget.href, {
      headers: { "Accept": "application/json" }
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
        this.timerTarget.outerHTML = data.penalty;
        Swal.fire({
          title: 'Penalty!',
          text: 'Vous perdez 1 minute',
          icon: 'error',
          confirmButtonText: 'Shit'
        })
      })
  }


}
