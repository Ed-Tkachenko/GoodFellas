<%-- 
    Document   : contact and billing address information view
    Created on : Mar 24, 2013, 9:47:06 AM
    Author     : Ded Mazai
--%>

<div id="indexLeftColumn">
    <div id="welcomeText">
        <p>[ Social plug-ins ]</p>
    </div>             
</div>

<div id="indexRightColumn">
    <fieldset name="clubfields" disabled>
        <legend> <label>
                <input type=checkbox name=club onchange="form.clubfields.disabled = !checked">
                Use Club Card
            </label> </legend>
        <p><label>Name on card: <input name=clubname required></label></p>
        <p><label>Card number: <input name=clubnum required pattern="[-0-9]+"></label></p>
        <p><label>Expiry date: <input name=clubexp type=month></label></p>
    </fieldset>
</div>
