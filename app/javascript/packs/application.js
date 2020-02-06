import "bootstrap";
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!


flatpickr("#booking_start_date", {
  "enableTime": true
})
flatpickr("#booking_end_date", {
  "enableTime": true
})
