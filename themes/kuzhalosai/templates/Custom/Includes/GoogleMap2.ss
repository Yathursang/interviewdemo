<%-- <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyCx6_Y_HqpkXYvxkNizfxW-WjCo47PbrwA&sensor=false"></script> --%>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCx6_Y_HqpkXYvxkNizfxW-WjCo47PbrwA&sensor=false&libraries=places" type="text/javascript"></script>

<script type="text/javascript">
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
    function displayLocation(name,address,description,lat,lon,price) {

var content = '<div class="infoWindow"><h6 >' + name + '</h6>' +
            '<p >' + description +
            '</p> <h6>' + price +
        '</h6><div class="price  navbar"> <a class="getstarted scrollto ms-0" href="/contact-us/">DONATE</a> </span></div> </div>';

        if (parseInt(lat) == 0) {
            geocoder.geocode({ 'address': address }, function(results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    var marker = new google.maps.Marker({
                        map: map,
                        position: results[0].geometry.location,
                        title: name
                    });

                    google.maps.event.addListener(marker, 'click', function() {
                        infowindow.setContent(content);
                        infowindow.open(map, marker);
                    });
                }
            });
        } else {
            var position = new google.maps.LatLng(parseFloat(lat), parseFloat(lon));
            var marker = new google.maps.Marker({
                map: map,
                position: position,
                title: name
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
    var center = new google.maps.LatLng(11.127123, 78.656891);
    var geocoder = new google.maps.Geocoder();
    var infowindow = new google.maps.InfoWindow();

    function init() {

        var mapOptions = {
            zoom: 7,
            center: center,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
        '<% loop $Results %>'
            displayLocation('$MainTitle','$Title','$Description.LimitSentences(3)','0','0','$PricePerNight.Nice');
        '<% end_loop %>'
        var input = document.getElementById('Form_ItemEditForm_Title');
      var options = {
        types: ['geocode'], //this should work !
        componentRestrictions: {country: "in"}
      };
      var autocomplete = new google.maps.places.Autocomplete(input, options);
        <%-- var marker = new google.maps.Marker({
            map: map,
            position: center,
        }); --%>
    }
    //]]>

</script>



    <section id="main" class="map-margin">
        <%-- <div>
            <input id="searchTextField" type="text" size="50" placeholder="Enter a location" autocomplete="on">
         </div> --%>
    <div id="map_canvas" style="width: 100%; height: 500px;"></div>
    </section>
