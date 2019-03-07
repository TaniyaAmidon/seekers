import "bootstrap";

import places from 'places.js';


const initAutocomplete = () => {
  const addressInput = document.getElementById('autocomplete-destination');
  if (addressInput) {
    places({ container: addressInput });
  }
};

initAutocomplete();
