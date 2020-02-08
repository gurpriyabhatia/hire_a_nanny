import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"; // Note this is important!
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from './init_mapbox.js';

flatpickr("#booking_start_date", {
  "enableTime": true
})
flatpickr("#booking_end_date", {
  "enableTime": true
})

initMapbox();
