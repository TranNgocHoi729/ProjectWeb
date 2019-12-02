<%-- 
    Document   : KoenigseggSlide
    Created on : Nov 13, 2019, 8:32:49 PM
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
            </ul>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="SlideShow/KOENIGSEGG/RSR.png" alt="Koenigsegg Agera RSR" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Koenigsegg Agera RSR</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/KOENIGSEGG/K2.jpg" alt="KOENIGSEGG AGERA R" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>KOENIGSEGG AGERA R</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/KOENIGSEGG/K3.jpg" alt="KOENIGSEGG AGERA RS" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>KOENIGSEGG AGERA RS</h3>
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
     <a href="DisplayCarByBrand.jsp?brandName=KOENIGSEGG REGERA"><button>Click Here to view Car</button></a>
        <%@include file="footer.html" %>
    </body>
</html>
