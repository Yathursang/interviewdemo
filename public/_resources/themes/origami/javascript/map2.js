 function makeRequest(url, callback) {
     var request;
     if (window.XMLHttpRequest) {
         request = new XMLHttpRequest(); // IE7+, Firefox, Chrome, Opera, Safari
     } else {
         request = new ActiveXObject("Microsoft.XMLHTTP"); // IE6, IE5
     }
     request.onreadystatechange = function() {
         if (request.readyState == 4 && request.status == 200) {
             callback(request);
         }
     }
     request.open("GET", url, true);
     request.send();
 }

 /////////////////////////////////////////////////////////////////////
 function displayLocation(location) {

     var content = '<div class="infoWindow"><strong>' + location.name + '</strong>' +
         '<br/>' + location.address +
         '<br/>' + location.description + '</div>';

     if (parseInt(location.lat) == 0) {
         geocoder.geocode({ 'address': location.address }, function(results, status) {
             if (status == google.maps.GeocoderStatus.OK) {
                 var marker = new google.maps.Marker({
                     map: map,
                     position: results[0].geometry.location,
                     title: location.name
                 });

                 google.maps.event.addListener(marker, 'click', function() {
                     infowindow.setContent(content);
                     infowindow.open(map, marker);
                 });
             }
         });
     } else {
         var position = new google.maps.LatLng(parseFloat(location.lat), parseFloat(location.lon));
         var marker = new google.maps.Marker({
             map: map,
             position: position,
             title: location.name
         });

         google.maps.event.addListener(marker, 'click', function() {
             infowindow.setContent(content);
             infowindow.open(map, marker);
         });
     }
 }
 //////////////////////////////////////////////////////////////

 //<![CDATA[

 var map;

 // Ban Jelačić Square - Center of Zagreb, Croatia
 var center = new google.maps.LatLng(-40.900558, 174.885971);
 var geocoder = new google.maps.Geocoder();
 var infowindow = new google.maps.InfoWindow();

 function init() {

     var mapOptions = {
         zoom: 5,
         center: center,
         mapTypeId: google.maps.MapTypeId.ROADMAP
     }

     map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
     makeRequest('app/src/GetlocationsPage.php', function(data) {
         var data = JSON.parse(data.responseText);
         for (var i = 0; i < data.length; i++) {
             displayLocation(data[i]);
         }
     });
     var marker = new google.maps.Marker({
         map: map,
         position: center,
     });
 }
 //]]>