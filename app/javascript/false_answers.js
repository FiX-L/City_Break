// false_answers.js.erb
document.addEventListener('DOMContentLoaded', () => {
  const falseAnswerButton = document.querySelector('.false-answer-button');
  const falseAnswerPopup = document.querySelector('.popup-false-answer');

  falseAnswerButton.addEventListener('click', () => {
    falseAnswerPopup.style.display = 'block';
  });
});
