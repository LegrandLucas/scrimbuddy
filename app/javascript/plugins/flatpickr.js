import flatpickr from 'flatpickr';
import 'flatpickr/dist/themes/airbnb.css';
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


const scrimForm = document.getElementById('new_scrim');

if (scrimForm) {


  const bookingForm = document.getElementById('booking-form-div');
  const bookings = JSON.parse(bookingForm.dataset.bookings);


  flatpickr("#start_game", {
    // altInput: true,
    inline: true,
    minDate: "today",
    dateFormat: "d-m-Y",
    disable: bookings
  });
}



