<%-- 
    Document   : layout
    Created on : Nov 10, 2019, 11:01:16 PM
    Author     : msi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css1.css" />
        <%@include file="TitleFooster.html"  %>
        <%@include file="Titleheader.html"  %>
    </head>
    <body>

        <%@include file="header.jsp" %> 

        <div class="slide">
            <div class="chuyen-slide">
                <img src="Car/Mercesdes/mercedes-benz-glc200-malaysia-ext-1.jpg"> 
                <img src="Car/Ferrari/F1.jpg"> 
                <img src="Car/KOENIGSEGG REGERA/K3.jpg"> 
                <img src="Car/Lamborghini/L3.jpg"> 
                <img src="Car/RR/R4.jpg"> 
            </div>
        </div>
        <script type="text/javascript" src="slide.js"></script>
        <%@include file="footer.html" %> 
        </body>
</html>
