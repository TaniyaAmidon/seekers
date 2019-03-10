import "bootstrap";
import "../plugins/flatpickr"
import places from 'places.js';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

const initAutocomplete = () => {
  const destinationInput = document.getElementById('autocomplete-destination');
  if (destinationInput) {
    places({ container: destinationInput , type: 'city' });
  }
};

initAutocomplete();

const locationAutocomplete = () => {
  const userLocationInput = document.getElementById('autocomplete-location');
  if (userLocationInput) {
    places({ container: userLocationInput, type: 'city' });
  }
};

locationAutocomplete();


