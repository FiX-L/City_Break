function openPopup(popupId) {
  var popup = document.getElementById(popupId);
  popup.style.display = "block";
}

function closePopup(popupId) {
  var popup = document.getElementById(popupId);
  popup.style.display = "none";
}

document.querySelector(".false-answer-button").onclick = function() {
  openPopup("false-answer-popup");
};

document.querySelector(".hint-button").onclick = function() {
  openPopup("hint-popup");
};

document.querySelector(".close-popup").onclick = function() {
  closePopup("false-answer-popup");
  closePopup("hint-popup");
};
