const data = document.getElementById("booking-data")
const dataSchedule = document.getElementById("booking-schedule")
const date = document.getElementById("booking_date")
const hourArray = ["8:00", "8:30", "9:00", "9:30", "10:00", "10:30", "11:00", "11:30", "12:00", "12:30", "13:00", "13:30", "14:00", "14:30", "15:00", "15:30", "16:00", "16:30", "17:00", "17:30", "18:00"];

// console.log(data.dataset.text);
// console.log(date);
// date.addEventListener("click", console.log(date.value));
const dateInput= () => {
  date.addEventListener("input", (event) => {
    console.log(event.target.value)
    return(event.target.value)
  });
};
 // if dataInput

hourArray.forEach(element => {
  data.innerHTML += `
  <div class="hour-select-wrapper">
  <label>
  <input type="radio" value=${element} id=${element} class="hour-select" name="hour-radio"></input>
  <span>${element}</span>
  </label>
  </div>
  `
})
 // ${if dataSchedule.include(dataInput()) }

export { dateInput };
