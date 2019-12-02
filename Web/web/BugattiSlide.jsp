<%-- 
    Document   : BugattiSlide
    Created on : Nov 13, 2019, 8:20:10 PM
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
                    <img src="SlideShow/Bugatti/B1.jpg" alt="Bugatti Veyron 16.4 Super Sport" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Bugatti Veyron 16.4 Super Sport</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Bugatti/B2.jpg" alt="Bugatti Veyron Grand Sport Vitesse" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Bugatti Veyron Grand Sport Vitesse</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Bugatti/B3.jpg" alt="Bugatti EB 18.4 Veyron Concept" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Bugatti EB 18.4 Veyron Concept</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Bugatti/B4.jpg" alt="Bugatti Veyron Mansory Linea Vincero" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Bugatti Veyron Mansory Linea Vincero</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Bugatti/B5.jpg" alt="Bugatti 16C Galibier Concept" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Bugatti 16C Galibier Concept</h3>
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
        <a href="DisplayCarByBrand.jsp?brandName=Bugatti"><button>Click Here to view Car</button></a>
        <%@include file="footer.html" %>
    </body>
</html>
