const displayScrimGamesButtons = () => {

  const start = document.getElementById('scrim_start_hour');
  start.addEventListener('click', (event) => {
   document.getElementById("scrim-btn").classList.add('active');
   document.getElementById("scrim-btn2").classList.add('active');
  });
}

export { displayScrimGamesButtons }

