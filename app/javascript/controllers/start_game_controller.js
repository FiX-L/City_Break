import { Controller } from "@hotwired/stimulus"
import Swal from 'sweetalert2'

// Connects to data-controller="start-game"
export default class extends Controller {
  static targets = ["start"]
  connect(event) {
    console.log(this.element);
  }

  start(event) {
    event.preventDefault()
    Swal.fire({
      title: "Êtes-vous prêt?",
      showCancelButton: true,
      confirmButtonText: "Jouer",
      cancelButtonText: "Annuler",
      customClass:{
        popup: "container-startgame",
        title: 'title-startgame',
        confirmButton: 'confirmbutton-sg',
        cancelButton: '',

      }
    })
      .then((result) => {
        if (result.isConfirmed) {
          this.startTarget.click();
        }
      })
      .catch(event.preventDefault())

  }
}
