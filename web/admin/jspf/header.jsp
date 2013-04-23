<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : header
    Created on : Mar 21, 2013, 2:40:01 PM
    Author     : Ded Mazai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/goodfellas.css">
        <title>GoodFellas Administrative Console</title>

    </head>
    <body>
        <div id="container">
            <div id="header">
                <img src="images/goodfellas_logo.png">
            </div>
            <div id="navigation">
                <ul>
                    <li><a href="<c:url value='order'/>">[ View orders ]</a></li>
                    <li><a href="<c:url value='customer'/>">[ View customers ]</a></li>
                    <li><a href="<c:url value='index'/>">[ Main index ]</a></li>
                </ul>
            </div>
            <div id="content-container">
                <div id="aside">
                    <li>
                        <h3>
                            <a href="http://www.facebook.com" target="_blank">Check the FaceBook</a>
                        </h3>
                    </li>
                    <li>
                        <h3>
                            <a href="http://www.yelp.com" target="_blank">Check the Yelp!</a>
                        </h3>
                    </li>          
                </div>