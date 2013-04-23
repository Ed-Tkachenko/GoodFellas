<%-- 
    Document   : moving details information view
    Created on : Mar 24, 2013, 9:47:06 AM
    Author     : Ded Mazai
--%>
<div id="content">
    <form actiom="<c:url value='contact'/>" method="post">
        <p>Moving details gathering form</p>
        <table>
            <th>Moving Details :</th>
            <tr>
                <td>Date of Moving</td>
                <td><input type="text" id="datepicker" name="date"/></td>
            </tr>
            <tr>
                <td>Start Time</td>
                <td>
                    <select name="time">
                        <option value="any">Any time</option>
                        <option value="am">Moring</option>
                        <option value="noon">Noon</option>
                        <option value="pm">Afternoon</option>
                    </select>
                </td>
            </tr>
            <th>Moving From Address :</th>
            <tr>
                <td>Street Address</td>
                <td><input type="text" name="fromAddress"/></td>
            </tr>
            <tr>
                <td>Apartment</td>
                <td><input type="text" name="fromApartment"/></td>
            </tr>
            <tr>
                <td>City</td>
                <td><input type="text" name="fromCity"/></td>
            </tr>
            <tr>
                <td>State</td>
                <td><input type="text" name="fromState"/></td>
            </tr>
            <tr>
                <td>Zip Code</td>
                <td><input type="text" name="fromZip"/></td>
            </tr>
            <tr>
                <td>Walk In Type</td>
                <td>                    
                    <select name="fromWalkin">
                        <option value="">Walk In Type</option>
                        <option value="1.1">Private House</option>
                        <option value="1.2">Elevator</option>
                        <option value="1.0">1st/Ground Floor</option>
                        <option value="1.2">Stairs 2nd Floor</option>
                        <option value="1.4">Stairs 3rd Floor</option>
                        <option value="1.5">Stairs 4th Floor and Up</option>
                        <option value="1.2">Storage Unit</option>
                    </select>
                </td>
            </tr>
            <th>Moving To Address :</th>
            <tr>
                <td>Street Address</td>
                <td><input type="text" name="toAddress"/></td>
            </tr>
            <tr>
                <td>Apartment</td>
                <td><input type="text" name="toApartment"/></td>
            </tr>
            <tr>
                <td>City</td>
                <td><input type="text" name="toCity"/></td>
            </tr>
            <tr>
                <td>State</td>
                <td><input type="text" name="toState"/></td>
            </tr>
            <tr>
                <td>Zip Code</td>
                <td><input type="text" name="toZip"/></td>
            </tr>
            <tr>
                <td>Type of Entrance</td>
                <td>                    
                    <select name="toWalkin">
                        <option value="">Walk In Type</option>
                        <option value="1.1">Private House</option>
                        <option value="1.2">Elevator</option>
                        <option value="1.0">1st/Ground Floor</option>
                        <option value="1.2">Stairs 2nd Floor</option>
                        <option value="1.4">Stairs 3rd Floor</option>
                        <option value="1.5">Stairs 4th Floor and Up</option>
                        <option value="1.2">Storage Unit</option>
                    </select>
                </td>
            </tr>
            <th>Size of Move :</th>
            <tr>
                <td>Principal Staff :</td>
                <td>
                    <select name="size"  id="c_selectSizeOfMove" name="size" tabindex="4">
                        <option value="" >Size of Move</option>
                        <option value="1000">One Room or less ( < 1000 lbs )</option>
                        <option value="1500">Studio Apt.</option>
                        <option value="2500">Small 1 Bedroom Apt.</option>
                        <option value="3000">Large 1 Bedroom Apt.</option>
                        <option value="4500">Small 2 Bedroom Apt.</option>
                        <option value="5500">Large 2 Bedroom Apt.</option>
                        <option value="7000">3+ Bedroom Apt.</option>
                        <option value="7500">2 Bedroom House / Townhouses</option>
                        <option value="9000">3 Bedroom House / Townhouses</option>
                        <option value="12000">4+ Bedroom House / Townhouses</option>
                    </select>
                </td>
            </tr>                      
            <th>Extra Furnished Rooms:</th>

            <tr>
                <td>
                    <input type = Checkbox value="1000" name = "dining"  tabindex="5" />
                    dining room
                </td>
                <td>
                    <input type = Checkbox value="1000" name = "basement"  tabindex="6" />
                    basement
                </td>
                <td>
                    <input type = Checkbox value="1000" name = "attic"  tabindex="7" />
                    attic
                </td>
            </tr>
            <tr>
                <td>
                    <input type = Checkbox value="1000" name = "office"  tabindex="8" />
                    office
                </td>
                <td>
                    <input type = Checkbox value="1000" name = "garage"  tabindex="9" />
                    garage
                </td>
                <td>
                    <input type = Checkbox value="1000" name = "shed"  tabindex="10" />
                    shed
                </td>
            </tr>
            <th>Customer Contact Information :</th>
            <tr>
                <td>First Name</td>
                <td><input type="text" name="fname"/></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><input type="text" name="lname"/></td>
            </tr>
            <tr>
                <td>Primary Phone</td>
                <td><input type="text" name="pphone"/></td>
            </tr>
            <tr>
                <td>Alternative Phone</td>
                <td><input type="text" name="aphone"/></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email"/></td>
            </tr>
            <th>Billing Address</th>
            <tr>
                <td>Street Address</td>
                <td><input type="text" name="billAddress"/></td>
            </tr>
            <tr>
                <td>Apartment</td>
                <td><input type="text" name="billApartment"/></td>
            </tr>
            <tr>
                <td>City</td>
                <td><input type="text" name="billCity"/></td>
            </tr>
            <tr>
                <td>State</td>
                <td><input type="text" name="billState"/></td>
            </tr>
            <tr>
                <td>Zip Code</td>
                <td><input type="text" name="billZip"/></td>
            </tr>
        </table>
        <p><input type="submit" value="Submit Order"></p>
    </form>
</div>
