<%-- 
    Document   : PorscheSlide
    Created on : Nov 13, 2019, 8:40:01 PM
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
            </ul>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="SlideShow/Porsche/P1.jpg" alt="Porsche 718 Boxster" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Porsche 718 Boxster</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Porsche/P2.jpg" alt="Porsche 718 Cayman" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Porsche 718 Cayman</h3>
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
        <a href="DisplayCarByBrand.jsp?brandName=Porsche"><button>Click Here to view Car</button></a>
        <%@include file="footer.html" %>
    </body>
</html>
