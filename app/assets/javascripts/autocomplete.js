$(document).on('turbolinks:load', function() {
function initializeAutocomplete(id) {
    var element = document.getElementById(id);
    if (element) {
      var autocomplete = new google.maps.places.Autocomplete(element, { types: ['establishment'], componentRestrictions: {country: 'fr'}, placeIdOnly: true });
      google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    }
  }

  function onPlaceChanged() {
    var place = this.getPlace();

     console.log(place);
     console.log(place.name);
     console.log(place.place_id);

     var type_element = document.getElementById('place_id');
     if (type_element) {
       type_element.value = place.place_id;
       console.log('Replace place id in documewnt!')
     }
    
    for (var i in place.address_components) {
      var component = place.address_components[i];
      for (var j in component.types) {  // Some types are ["country", "political"]
        var type_element = document.getElementById(component.types[j]);
        if (type_element) {
          type_element.value = component.long_name;
        }
      }
    }
  }

  google.maps.event.addDomListener(window, 'load', function() {
    initializeAutocomplete('autocomplete_address');
  });
});
