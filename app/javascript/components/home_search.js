import places from "places.js";

const homeCityAutocomplete = () => {
  const searchField = document.querySelector('.js-banner-search');
  if (searchField) {
    places({
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


export { homeCityAutocomplete };
