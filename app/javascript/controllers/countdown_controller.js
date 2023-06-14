import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="countdown"
export default class extends Controller {
  static targets = ["countdown"]
  connect() {
    console.log("Connected to countdown controller");
    // this.secondsUntilEnd = this.countdownTarget.dataset.secondsUntilEndValue;
    this.secondsUntilEnd = 2;
    console.log(this.secondsUntilEnd);
    const now = new Date().getTime();
    this.endTime = new Date(now + this.secondsUntilEnd * 1000);

    this.countdown = setInterval(this.countdown.bind(this), 5);
  }

  countdown() {
    const now = new Date();
    const secondsRemaining = (this.endTime - now) / 1000;

    if (secondsRemaining <= 0) {
      clearInterval(this.countdown);

      window.location = "/pages/defeat";
      this.countdownTarget.innerHTML = "Countdown is over!";
      return;
    }
    const secondsPerDay = 86400;
    const secondsPerHour = 3600;
    const secondsPerMinute = 60;

    const days = Math.floor(secondsRemaining / secondsPerDay);
    const hours = Math.floor(
      (secondsRemaining % secondsPerDay) / secondsPerHour
    );
    const minutes = Math.floor(
      (secondsRemaining % secondsPerHour) / secondsPerMinute
    );
    const seconds = Math.floor(secondsRemaining % secondsPerMinute);

    this.countdownTarget.innerHTML = `${minutes} : ${seconds}`;
  }
}
