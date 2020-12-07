import places from 'places.js';

const initAutocomplete = () => {
  // console.log("Hi this is it")
  const addressInput = document.getElementById("plant_address");
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };