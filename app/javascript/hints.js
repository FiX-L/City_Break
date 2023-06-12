document.addEventListener('DOMContentLoaded', () => {
  const hintButton = document.querySelector('.hint-button');
  const hintPopup = document.querySelector('.popup-hint');

  hintButton.addEventListener('click', () => {
    hintPopup.style.display = 'block';
  });
});
