<%-- 
    Document   : FerarrySlide
    Created on : Nov 13, 2019, 8:26:13 PM
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
            </ul>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="SlideShow/Ferrari/F1.jpg" alt="Ferrari FF" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Ferrari FF</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Ferrari/F2.jpg" alt="Ferrari Ferrari 488 GTB" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Ferrari Ferrari 488 GTB</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Ferrari/F3.jpg" alt="Ferrari 488 Spider" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Ferrari 488 Spider</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Ferrari/F4.jpg" alt="Ferrari 458 Speciale" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Ferrari 458 Speciale</h3>
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
        <a href="DisplayCarByBrand.jsp?brandName=Ferrari"><button>Click Here to view Car</button></a>
        <%@include file="footer.html" %>
    </body>
</html>
