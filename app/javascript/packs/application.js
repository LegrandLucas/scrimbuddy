import "bootstrap";
import "../plugins/flatpickr";

import { updateEndGame } from "../plugins/update_end_game"
updateEndGame();

import { displayScrimGamesButtons } from "../plugins/display_scrim_games_buttons"
displayScrimGamesButtons();

import { initSweetalert } from '../plugins/init_sweetalert';
initSweetalert('#sweet-alert-demo', {
  title: "Scrim added! ",
  text: "Your scrim demand has been sent",
  icon: "success"
});
