import "bootstrap";

import places from 'places.js';


const initAutocomplete = () => {
  const destinationInput = document.getElementById('autocomplete-destination');
  if (destinationInput) {
    places({ container: destinationInput });
  }
};

initAutocomplete();

const locationAutocomplete = () => {
  const userLocationInput = document.getElementById('autocomplete-location');
  if (userLocationInput) {
    places({ container: userLocationInput });
  }
};

locationAutocomplete();


