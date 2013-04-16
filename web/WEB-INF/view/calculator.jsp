<%-- 
    Document   : moving cost calculator view
    Created on : Mar 24, 2013, 9:45:47 AM
    Author     : Ded Mazai
--%>
<div id="indexLeftColumn">
    <div id="welcomeText">
        <p>[ Social plug-ins ]</p>
    </div>             
</div>
<div id="indexRightColumn">
    
        <p>Moving Cost Calculator</p>
        <table>
            <tr>
                <td>Date of Moving</td>
                <td><input type="text" id="datepicker" name="date"/></td>
            </tr>
            <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAeXnGT_7shMA76LcVslLZIvWPb3RCqjfY&sensor=true"></script>
<script type="text/javascript">
    var directionsDisplay;
    var directionsService = new google.maps.DirectionsService();

    
   
              
               // var SizeOfMove = document.getElementById(c_selectSizeOfMove).value;
                var flatRate;
                
                var men;
                
                function calc(){
                   var SizeOfMove = document.getElementById('c_selectSizeOfMove').value;
                   document.getElementById('display').innerHTML +=  "Moving size is "+ SizeOfMove;
                  
                }                                      
                         
                   
                     function open_win(){
                                       
                                                                                
                     var SizeOfMove = document.getElementById('c_selectSizeOfMove').value;
                      myWindow=window.open('','','width=600,height=400');
                            myWindow.document.write('Moving size is '+ SizeOfMove );                            
                             myWindow.focus();
               
                      }
                      
        

    function initialize() {
        directionsDisplay = new google.maps.DirectionsRenderer();
        var chicago = new google.maps.LatLng(41.850033, -87.6500523);


        //space
        var mapOptions = {
            zoom: 7,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            center: chicago
        };

        var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
        directionsDisplay.setMap(map);


    }


    function calcRoute() {
        var start = document.getElementById('fromzip').value;
        var end = document.getElementById('tozip').value;
        var totalDistance = 0; //use these for storing the values
        var totalDuration = 0; //this one too
        var request = {
            origin: start,
            destination: end,
            travelMode: google.maps.TravelMode.DRIVING
        };

        directionsService.route(request, function(result, status) {
            if (status === google.maps.DirectionsStatus.OK) {
                directionsDisplay.setDirections(result);

                document.getElementById('distance').innerHTML +=
                        0.000621371 * (result.routes[0].legs[0].distance.value) + " miles";
                totalDistance = result.routes[0].legs[0].distance.value;


                document.getElementById('duration').innerHTML +=
                        0.000277778 * (result.routes[0].legs[0].duration.value) + " hours";
                totalDuration = result.routes[0].legs[0].duration.value;

            }
        });
    }

       </script>
            <tr>
                <td><input type="text" id="fromzip" value="" name="fromzip" placeholder="From Zip" title="Please enter your moving from Zip code" /></td>
                <td><input type="text" id="tozip" value="" name="tozip" placeholder="To Zip" title="Please enter your moving to Zip code" /></td>
            </tr>
            <tr>
                <td>
                    <select name="size"  id="c_selectSizeOfMove" name="size" tabindex="4">
                        <option value="" >Size of Move</option>
                        <option value="1000"  >One Room or less ( < 1000 lbs )</option>
                        <option value="1500"  >Studio Apt.</option>
                        <option value="2500"  >Small 1 Bedroom Apt.</option>
                        <option value="3000"  >Large 1 Bedroom Apt.</option>
                        <option value="4500"  >Small 2 Bedroom Apt.</option>
                        <option value="5500"  >Large 2 Bedroom Apt.</option>
                        <option value="7000"  >3+ Bedroom Apt.</option>
                        <option value="7500"  >2 Bedroom House / Townhouses</option>
                        <option value="9000"  >3 Bedroom House / Townhouses</option>
                        <option value="12000" >4+ Bedroom House / Townhouses</option>
                    </select>
                </td>
            </tr>                      
        </table>
        <p>Extra Furnished Rooms:</p>

        <table width="100%">
            <tr>
                <td >
                    <input type = Checkbox id="c_selectSizeOfMove" value="1000" name = "dining"  tabindex="5" />
                    dining room
                </td>
                <td >
                    <input type = Checkbox id="c_selectSizeOfMove" value="1000"  name = "basement"  tabindex="6" />
                    basement
                </td>
                <td >
                    <input type = Checkbox id="c_selectSizeOfMove" value="1000"  name = "attic"  tabindex="7" />
                    attic
                </td>
            </tr>
            <tr>
                <td >
                    <input type = Checkbox id="c_selectSizeOfMove" value="1000" name = "office"  tabindex="8" />
                    office
                </td>
                <td >
                    <input type = Checkbox  id="c_selectSizeOfMove" value="1000"  name = "garage"  tabindex="9" />
                    garage
                </td>
                <td>
                    <input type = Checkbox id="c_selectSizeOfMove" value="1000" name = "shed"  tabindex="10" />
                    shed
                </td>
            </tr>
        </table>
         <p><input type="submit" onclick = "open_win(); calcRoute()" ></p>    
            
        
        <div id="distance">distance: </div>
        <div id="duration">duration: </div>
          <body onload="initialize();">
        <div id="map_canvas" style="width:400px; height:250px"></div>
         <form action="#" onsubmit="showLocation();
                return false;">  </form>
        </body>
       
        
        </body>
  </div>


