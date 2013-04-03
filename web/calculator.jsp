<%-- 
    Document   : calculator
    Created on : Mar 24, 2013, 9:45:47 AM
    Author     : Ded Miloud
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="goodfellas.css">
        <title>GoodFellas Moving</title>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css" />
        <script>
            $(function() {
                $( "#datepicker" ).datepicker();
            });
        </script>
    </head>
    <body>
        <div id="main">
            <div id="header">
                <div id="widgetBar">
                    <div class="headerWidget">
                         Language 
                    </div>
                    <div class="headerWidget">
                        Moving Calculator 
                    </div>
                    <div class="headerWidget">
                         Services 
                    </div>
                    <div class="headerWidget">
                         Book Now 
                    </div>
                    <a href="#">
                        <img src="#" id="logo" alt="GoodFellas logo">
                    </a>
                    <img src="#"  id="logoText" alt="GoodFellas Moving">
                </div>
            </div>

            <div id="indexLeftColumn">
                <div id="welcomeText">
                    <p>[ Social plug-ins ]</p>
                </div>             
            </div>

            <div id="indexRightColumn">
                <form action="calculateMovingCost" method="post">
                    <p>Moving Cost Calculator</p>
                    <table>
                        <tr>
                            <td>Date of Moving</td>
                            <td><input type="text" id="datepicker" name="date"/></td>
                        </tr>
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
                                    <option value="12000"  >4+ Bedroom House / Townhouses</option>
                                </select>
                            </td>
                        </tr>                      
                    </table>
                    <p>Extra Furnished Rooms:</p>
  
                        <table width="100%">
                            <tr>
                                <td>
                                    <input type = Checkbox value="dining" name = "dining"  tabindex="5" />
                                    <span class="label">dining room</span>
                                </td>
                                <td>
                                    <input type = Checkbox value="basement" name = "basement"  tabindex="6" />
                                    <span class="label">basement</span>
                                </td>
                                <td>
                                    <input type = Checkbox value="attic" name = "attic"  tabindex="7" />
                                    <span class="label">attic</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type = Checkbox value="office" name = "office"  tabindex="8" />
                                    <span class="label">office@home</span>
                                </td>
                                <td>
                                    <input type = Checkbox value="garage" name = "garage"  tabindex="9" />
                                    <span class="label">garage</span>
                                </td>
                                <td>
                                    <input type = Checkbox value="shed" name = "shed"  tabindex="10" />
                                    <span class="label">shed</span>
                                </td>
                            </tr>
                        </table>
                    <p><input type="submit" actiom=""></p>
                </form>

            <div id="footer">
                GoodFellas Moving, Inc. Licensing Information: MDPU #00000, DOT #0000000, ICC #0000000<br>
                Copyright © 2013 GoodFellas Moving, Inc. 
            </div>
        </div>
    </body>
</html>
