import flatpickr from 'flatpickr';
import 'flatpickr/dist/themes/airbnb.css';
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

flatpickr("#start_game", {
  altInput: true,
  minDate: "today",
  dateFormat: "d-m-Y H:i",
  enableTime: true,
  "plugins": [new rangePlugin({ input: "#end_game"})]
});
