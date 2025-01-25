document.getElementById('roadmapForm').addEventListener('submit', function(event) {
  event.preventDefault();

  const domain = document.getElementById('domain').value;
  const year = document.getElementById('year').value;
  const coreInterest = document.getElementById('coreInterest').value;
  const github = document.getElementById('github').value;

  fetch('http://localhost:3000/generate-roadmap', {
      method: 'POST',
      headers: {
          'Content-Type': 'application/json',
      },
      body: JSON.stringify({ domain, year, coreInterest, github }),
  })
  .then(response => response.json())
  .then(data => {
      document.getElementById('roadmapOutput').innerText = data.roadmap;
  })
  .catch(error => console.error('Error:', error));
});