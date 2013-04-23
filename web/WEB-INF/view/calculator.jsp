<%--
    Document   : moving cost calculator view
    Created on : Mar 24, 2013, 9:45:47 AM
    Author     : Ded Mazai
--%>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAeXnGT_7shMA76LcVslLZIvWPb3RCqjfY&sensor=true"></script>
<script type="text/javascript">
    var directionsDisplay;
    var directionsService = new google.maps.DirectionsService();
    var FlatRate = 75;
    var Price;

    function calc() {
        var MovingSize = document.getElementById('c_selectSizeOfMove').value;
        document.getElementById('display').innerHTML += "moving size is " + MovingSize;
        var Men = document.getElementById('NumberOfMen').value;
        document.getElementById('men').innerHTML += "moving size is " + Men;
    }

    function initialize() {
        directionsDisplay = new google.maps.DirectionsRenderer();
        var providence = new google.maps.LatLng(41.8239, -71.4133);

        var mapOptions = {
            zoom: 8,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            center: providence
        };

        var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
        directionsDisplay.setMap(map);
    }

    function testCheckbox(oCheckbox)
    {
        //     var checkbox = oCheckbox.value;
        if (oCheckbox.checked == true)
        {
            oCheckbox.value = 1000;
        }
        else
        {
            oCheckbox.value = 0;
        }
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
            if (status == google.maps.DirectionsStatus.OK) {
                directionsDisplay.setDirections(result);

                totalDistance = Math.round(0.000621371 * (result.routes[0].legs[0].distance.value));

                totalDuration = Math.round(0.000277778 * (result.routes[0].legs[0].duration.value));

                var SizeOfMove = parseInt(document.getElementById('c_selectSizeOfMove').value);

                oCheckBox1 = document.getElementById('basement');
                oCheckBox2 = document.getElementById('attic');
                oCheckBox3 = document.getElementById('office');
                oCheckBox4 = document.getElementById('garage');
                oCheckBox5 = document.getElementById('shed');
                oCheckBox6 = document.getElementById('dining');

                testCheckbox(oCheckBox1);
                testCheckbox(oCheckBox2);
                testCheckbox(oCheckBox3);
                testCheckbox(oCheckBox4);
                testCheckbox(oCheckBox5);
                testCheckbox(oCheckBox6);

                var Basement = parseInt(document.getElementById('basement').value);
                var Attic = parseInt(document.getElementById('attic').value);
                var Office = parseInt(document.getElementById('office').value);
                var Garage = parseInt(document.getElementById('garage').value);
                var Shed = parseInt(document.getElementById('shed').value);
                var Dining = parseInt(document.getElementById('dining').value);
                var TotalPounds = Basement + Attic + Office + Garage + Shed + Dining + SizeOfMove;
                var JobDuration = totalDuration + (TotalPounds * 0.02);


                Price = FlatRate + (TotalPounds * 0.05) + (totalDuration * 10) + (totalDistance * 0.2);

                document.getElementById('price').innerHTML += ("Your total price would be around $" + Price +
                        "<br> The total duration of the trip would be about " + totalDuration + " hour(s)." +
                        "<br> Total distance covered is about: " + totalDistance + " mile(s)");

            }
        });
    }

</script>
<div id="indexLeftColumn">
    
                
</div>

<div id="indexRightColumn">
     
    <form id="booknow" action="calculateMovingCost" method="post">
        <p>Moving Cost Calculator</p>
        <table>
            <tr>
                <td>Date of Moving</td>
                <td><input type="text" id="datepicker" name="date"/></td>
            </tr>
            <tr>
                <td> <input id="fromzip" type="text" value="From Address"/></td>
                <td> <input id="tozip" type="text" value="To Address"/></td>
            </tr>
            <tr>
                <td>
                    <select name="size"  id="c_selectSizeOfMove" tabindex="4">

                        <option type="number" value=1000  >One Room or less ( < 1000 lbs )</option>
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
            <tr>
                <td>
                    <select name="men" id="NumberOfMen" tabindex="4">
                        <option value="2"> 2 Men</option>
                        <option value="3"> 3 Men</option>
                        <option value="4"> 4 Men</option>

                    </select>

                </td>
            </tr>

            </tr>                     
        </table>
        <p>Extra Furnished Rooms:</p>

        <table width="100%">
            <tr>
                <td>
                    <input type = Checkbox value="1000" id = "dining"  tabindex="5" />
                    dining room
                </td>
                <td>
                    <input type = Checkbox value="1000" id = "basement"  tabindex="6" />
                    basement
                </td>
                <td>
                    <input type = Checkbox value="1000" id = "attic"  tabindex="7" />
                    attic
                </td>
            </tr>
            <tr>
                <td>
                    <input type = Checkbox value="1000" id = "office"  tabindex="8" />
                    office
                </td>
                <td>
                    <input type = Checkbox value="1000" id = "garage"  tabindex="9" />
                    garage
                </td>
                <td>
                    <input type = Checkbox value="1000" id = "shed"  tabindex="10" />
                    shed
                </td>
            </tr>
        </table>

        <p><input type="button" value="GET A QUOTE NOW!" onclick = "calcRoute();" ></p>
        
           <div id="price"> </div>
        <body onload="initialize();">
        <center>
            <div id="map_canvas" style="width:400px; height:250px"></div>
             </center>   
        <form action="#" onsubmit="showLocation();

        return false;">  </form>
    
        </body>
    </form>
</div>
