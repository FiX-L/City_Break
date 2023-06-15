import { Controller } from "@hotwired/stimulus"
import {Sortable, Swap} from 'sortablejs';

// Connects to data-controller="puzzle"
export default class extends Controller {
  static targets = ["puzzle", "tile", "penalty"]

  connect() {
    Sortable.mount(new Swap());

    console.log("connect from puzzle");
    Sortable.create(this.puzzleTarget, {
      ghostClass: "ghost",
      animation: 150,
      swap: true,
    })
  }

  validate(event) {
    event.preventDefault();
   const order = this.tileTargets.map((tile) => {
      return tile.dataset.order
    })

    console.log(order.join(""));
    if (order.join("") === "12345678"){
      window.location = event.currentTarget.href
    }
    else {
      this.penaltyTarget.click();
    }

  }

}
