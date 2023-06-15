import { Controller } from "@hotwired/stimulus"
import {Sortable, Swap} from 'sortablejs';

// Connects to data-controller="puzzle"
export default class extends Controller {
  connect() {
    Sortable.mount(new Swap());

    console.log("connect from puzzle");
    Sortable.create(this.element, {
      ghostClass: "ghost",
      animation: 150,
      swap: true,
    })
  }
}
