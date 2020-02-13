import "bootstrap";
import "flatpickr/dist/flatpickr.min.css"; // Note this is important!
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import algoliasearch from 'algoliasearch';
import flatpickr from "flatpickr";
import { initMapbox } from './init_mapbox.js';
import { initAutocomplete } from './init_autocomplete.js';


flatpickr("#booking_start_date", {
  "enableTime": true
})
flatpickr("#booking_end_date", {
  "enableTime": true
})

initMapbox();
initAutocomplete();

