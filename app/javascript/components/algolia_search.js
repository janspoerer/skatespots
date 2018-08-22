import places from "places.js";

function cityAutocomplete() {
  const searchField = document.querySelector('#query');

  if (searchField) {
    const placesAutocomplete = places({
      container: searchField,
      type: 'city',
      aroundLatLngViaIP: true,
      templates: {
        value: function(suggestion) {
          return suggestion.name;
        }
      }
    });
  }
}


export { cityAutocomplete };
