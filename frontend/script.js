let questions = [];

fetch("/api/getQuestions.php")
  .then(res => res.json())
  .then(data => {
    questions = data;
    let html = "";

    data.forEach((q, i) => {
      html += `<p>${q.question}</p>
      <input type="radio" name="q${i}" value="1">${q.option1}<br>
      <input type="radio" name="q${i}" value="2">${q.option2}<br>
      <input type="radio" name="q${i}" value="3">${q.option3}<br>
      <input type="radio" name="q${i}" value="4">${q.option4}<br>`;
    });

    document.getElementById("quiz").innerHTML = html;
  });

function submitQuiz() {
  let answers = [];

  questions.forEach((q, i) => {
    let selected = document.querySelector(`input[name=q${i}]:checked`);
    answers.push({
      selected: selected ? selected.value : 0,
      correct: q.correct
    });
  });

  fetch("/api/submitQuiz.php", {
    method: "POST",
    body: JSON.stringify(answers)
  })
  .then(res => res.json())
  .then(data => alert("Score: " + data.score));
}