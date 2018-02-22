$(document).ready(function(){

  var myLatLng = new google.maps.LatLng(latitude, longitude);

  function initialize(){
    var mapOptions = {
      center: myLatLng,
      zoom: 8
    };
    var map = new google.maps.Map(document.getElementById('destination-map'), mapOptions);
    var iconBase = 'https://assets.change.org/photos/4/gf/wx/pRgFwXTJQgQkWbt-128x128-noPad.jpg?1450557437';
    var marker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      title: address,
      icon: iconBase,
      animation: google.maps.Animation.DROP
    });
    var contentString = '<h2><center>' + address + '</center></h2>';

    var infowindow = new google.maps.InfoWindow({
      content: contentString
    });
    google.maps.event.addListener(marker, 'click', function() {
      infowindow.open(map,marker);
  });
}
  google.maps.event.addDomListener(window, 'load', initialize);
});
