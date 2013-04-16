<%-- 
    Document   : Admin console header
    Created on : Apr 16, 2013, 10:29:46 AM
    Author     : Ded Mazai
--%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
--%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../css/goodfellas.css">

        <script src="../js/jquery-1.4.2.js" type="text/javascript"></script>

        <script type="text/javascript">
            $(document).ready(function(){
                $('tr.tableRow').hover(
                    function () {
                        $(this).addClass('selectedRow');
                    },
                    function () {
                        $(this).removeClass('selectedRow');
                    }
                );
             });
        </script>

        <title>GoodFellas Admin Console</title>
    </head>

    <body>
        <div id="main">
            <div id="header">
                <div id="widgetBar"></div>

                <a href="<c:url value='../index.jsp'/>">
                    <img src="../img/logo.png" alt="Affable Bean logo" id="adminLogo">
                </a>

                <img src="../img/logoText.png" id="logoText" alt="the affable bean">
            </div>

            <h2>admin console</h2>
