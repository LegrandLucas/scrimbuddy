import flatpickr from 'flatpickr';
import 'flatpickr/dist/themes/airbnb.css';
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const scrimForm = document.getElementById('new_scrim');

if (scrimForm) {
  const bookingForm = document.getElementById('booking-form-div');
  const scrims = JSON.parse(bookingForm.dataset.scrims);
  flatpickr("#start_game", {
    // altInput: true,
    inline: true,
    minDate: "today",
    dateFormat: "d-m-Y",
    disable: scrims
  });
}



