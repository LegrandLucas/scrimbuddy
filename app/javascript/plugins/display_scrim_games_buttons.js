const displayScrimGamesButtons = () => {

  const start = document.getElementById('scrim_start_hour');
  start.addEventListener('click', (event) => {
   document.getElementById("scrim-btn").classList.add('d-inline-block');
   document.getElementById("scrim-btn2").classList.add('d-inline-block');
  });
}

export { displayScrimGamesButtons }

