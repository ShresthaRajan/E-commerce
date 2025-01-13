<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Commerce</title>
        <style>
      #map {
        width: 100%;
        height: 400px;
        background-color: grey;
      }
    </style>
    </head>
    <body>
       <div id="map"></div>         
       <script>
      function initMap() {    
        var jorpati= {lat:27.728950,lng:85.378299}
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom:16,
          center:jorpati
        });
        var marker = new google.maps.Marker({
          position:jorpati,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBc09A8Gtr1fTk6OeUXu5idTGfOxfhe9yE&callback=initMap">
    </script>
    </body>              
</html>