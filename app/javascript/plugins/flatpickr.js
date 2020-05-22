import flatpickr from "flatpickr";

flatpickr(".datepicker", {
  minDate: "today",
  disable: ["2020-05-30"],
});
flatpickr(".timepicker", {
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
    time_24hr: true,
    minTime: "09:00",
    maxTime: "19:30"
      });
