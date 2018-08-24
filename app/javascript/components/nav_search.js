import places from "places.js";

const cityAutocomplete = () => {
  const searchField = document.querySelector('.js-nav-search');
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


export { cityAutocomplete };
