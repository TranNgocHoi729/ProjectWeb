<%-- 
    Document   : Lamborghini
    Created on : Nov 13, 2019, 8:37:19 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="HeadOfSlide.html" %>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div id="demo" class="carousel slide" data-ride="carousel">
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
                <li data-target="#demo" data-slide-to="3"></li>
                <li data-target="#demo" data-slide-to="4"></li>
            </ul>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="SlideShow/Lamborghini/L1.jpg" alt="Lamborghini Aventador LP 750-4 Superveloce" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Lamborghini Aventador LP 750-4 Superveloce</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Lamborghini/L2.jpg" alt="Lamborghini LP 610-4 SPYDER" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Lamborghini LP 610-4 SPYDER</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Lamborghini/L3.jpg" alt="Lamborghini LP 610-4" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Lamborghini LP 610-4</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Lamborghini/L4.jpg" alt="Lamborghini LP 620-2 SUPER TROFEO" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Lamborghini LP 620-2 SUPER TROFEO</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Lamborghini/L5.jpg" alt="Lamborghini LP 750-4 SUPERVELOCE ROADSTER" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Lamborghini LP 750-4 SUPERVELOCE ROADSTER</h3>
                    </div>   
                </div>
            </div>
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
        <a href="DisplayCarByBrand.jsp?brandName=Lamborghini"><button>Click Here to view Car</button></a>
        <%@include file="footer.html" %>
    </body>
</html>
