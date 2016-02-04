var map;
var latitude;
var longitude

// function initMap() {
//   map = new google.maps.Map(document.getElementById('map'), {
//     center: {lat: latitude, lng: longitude},
//     zoom: 8
//   });
// }

var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: -34.397, lng: 150.644},
    zoom: 8
  });
}
    
    
function othercodeAddress(){
  var result = $.ajax({
    url: 'https://maps.googleapis.com/maps/api/geocode/json?address=1246+Adams+Street,+Franklin+TN&key=AIzaSyABDLpDWA8NZkvbfuP7RCIWjL7_UrLsWmw',
    method: "GET"
})
  result.done(function(response){
    latitude = response.results[0].geometry.location.lat;
    longitude = response.results[0].geometry.location.lng;
  });
}






