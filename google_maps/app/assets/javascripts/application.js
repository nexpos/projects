// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){

  var myLatLng = new google.maps.LatLng(latitude, longitude);

  function initialize(){
    var mapOptions = {
      center: myLatLng,
      zoom: 8
    };
    var map = new google.maps.Map(document.getElementById('destination-maps'), mapOptions);
    var iconBase = 'https://assets.change.org/photos/4/gf/wx/pRgFwXTJQgQkWbt-128x128-noPad.jpg?1450557437';
    var marker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      icon: iconBase,
      animation: google.maps.Animation.DROP
    });
    var contentString = '<h2><center>Sweet Facts about Atlanta</center></h2>' + '<p>this is a city</p>';

    var infowindow = new google.maps.InfoWindow({
      content: contentString
    });
    google.maps.event.addListener(marker, 'click', function() {
      infowindow.open(map,marker);
  });
}
  google.maps.event.addDomListener(window, 'load', initialize);
});
