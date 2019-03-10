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

function openCity(evt, cityName) {
  // Declare all variables
  var i, tabcontent, tablinks;

  // Get all elements with class="tabcontent" and hide them
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Get all elements with class="tablinks" and remove the class "active"
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }

  // Show the current tab, and add an "active" class to the button that opened the tab
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
