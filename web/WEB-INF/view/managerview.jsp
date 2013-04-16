<%-- 
    Document   : manager information view
    Created on : Mar 24, 2013, 9:46:42 AM
    Author     : Ded Mazai
--%>
<sql:query var="customers" dataSource="jdbc/goodfellas">
    SELECT * FROM customer
</sql:query>

<div id="indexRightColumn">
    <c:forEach var="customer" items="${customers.rows}">
        <div class="customerBox">
            <a href="customerview?${customer.id}">
                <span class="customerLabelText">${customer.LastName}</span>
            </a>
        </div>
    </c:forEach>
</div>
