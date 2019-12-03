import "bootstrap";
import "../plugins/flatpickr";

import { updateEndGame } from "../plugins/update_end_game"
updateEndGame();

import { initSweetalert } from '../plugins/init_sweetalert';
initSweetalert('#sweet-alert-demo', {
  title: "Scrim added! ",
  text: "Your scrim demand has been sent",
  icon: "success"
});
