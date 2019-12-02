
const updateEndGame = () => {

  const newScrimForm = document.getElementById('new_scrim');

  if (newScrimForm) {
    const startHourInput = document.getElementById('scrim_start_hour');
    const endHourInput = document.getElementById('scrim_end_hour');

    const buttonElements = document.querySelectorAll('.end_shift_btn')
    buttonElements.forEach((buttonElement) => {

      buttonElement.addEventListener('click', (event) => {
        event.preventDefault();
        const numberHours = parseInt(event.target.dataset.hours, 10)
        console.log(startHourInput.value);
        const time = startHourInput.value.split(':');
        const hour = parseInt(time[0], 10) + numberHours
        const hour_readable = hour < 10 ? `0${hour}` : hour
        const end_time = `${hour_readable}:${time[1]}`
        endHourInput.value = end_time

        // toggle active class on the button
      })

    })
  }

}

export { updateEndGame }
