<%-- 
    Document   : moving cost calculator view
    Created on : Mar 24, 2013, 9:45:47 AM
    Author     : Ded Mazai
--%>
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
                        <option value="12000" >4+ Bedroom House / Townhouses</option>
                    </select>
                </td>
            </tr>                      
        </table>
        <p>Extra Furnished Rooms:</p>

        <table width="100%">
            <tr>
                <td>
                    <input type = Checkbox value="dining" name = "dining"  tabindex="5" />
                    dining room
                </td>
                <td>
                    <input type = Checkbox value="basement" name = "basement"  tabindex="6" />
                    basement
                </td>
                <td>
                    <input type = Checkbox value="attic" name = "attic"  tabindex="7" />
                    attic
                </td>
            </tr>
            <tr>
                <td>
                    <input type = Checkbox value="office" name = "office"  tabindex="8" />
                    office
                </td>
                <td>
                    <input type = Checkbox value="garage" name = "garage"  tabindex="9" />
                    garage
                </td>
                <td>
                    <input type = Checkbox value="shed" name = "shed"  tabindex="10" />
                    shed
                </td>
            </tr>
        </table>
        <p><input type="submit" actiom=""></p>
    </form>

