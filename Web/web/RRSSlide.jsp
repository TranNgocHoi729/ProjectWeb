<%-- 
    Document   : RRSSlide
    Created on : Nov 13, 2019, 8:41:31 PM
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
                    <img src="SlideShow/RR/R1.jpg" alt="Rolls-Royce Ghost" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Rolls-Royce Ghost</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/RR/R2.jpg" alt="Rolls-Royce Ghost EWB" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Rolls-Royce Ghost EWB</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/RR/R3.jpg" alt="Rolls-Royce Wraith" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Rolls-Royce Wraith</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/RR/R4.jpg" alt="Rolls-Royce Phantom" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Rolls-Royce Phantom</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/RR/R5.jpg" alt="Rolls-Royce Phantom EWB" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Rolls-Royce Phantom EWB</h3>
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
       <a href="DisplayCarByBrand.jsp?brandName=Rolls-Royce"><button>Click Here to view Car</button></a>
       <%@include file="Footer.jsp" %>
    </body>
</html>
