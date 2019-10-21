<style>#map-canvas{
 width: 400px;
 height: 400px;
}
</style>

<input type="text" name="mapsearch">

<div id="map-canvas">
 
</div>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCsjPOCSrt4z9zQ51JrAvDF95ikp7r70R4&libraries=places" type="text/javascript"></script>


<script>
 var map = new google.maps.Map(document.getElementById('map-canvas'),{
  center:{
   lat: 6.927079,
   lng: 79.861244
  },
  zoom:15
 });

 var marker = new google.maps.Marker({
  position:{
   lat: 6.927079,
   lng: 79.861244
  },
  map:map,
  draggable: true
 });

var searchBox = new google.maps.places.searchBox(document.getElementById('mapsearch'));

//places change event on search box
google.maps.event.addListener(searchBox, 'places_changed',function(){

 //console.log(searchBox.getPlaces());
 var places = searchBox.getPlaces();

 //bound
 var bounds = new google.maps.LatLngBounds();
 var i, place;

 for(i=0; place=places[i];i++){

  //console.log(place.geometry.location);

  bounds.extend(place.geometry.location);
  marker.setPosition(place.geometry.location); //set marker position
 }

 map.fitBounds(bounds); // fir to bound
 map.setZoom(15); //set zomm
})





</script>
