<%-- 
    Document   : MercedesSlide
    Created on : Nov 13, 2019, 8:05:47 PM
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
                    <img src="SlideShow/Mercesdes/M1.jpg" alt="Mercedes Benz S 450" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Mercedes Benz S 450</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Mercesdes/M2.jpg" alt="Mercedes Benz C300" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Mercedes Benz C300</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Mercesdes/M3.jpg" alt="Mercedes Benz GLC 300 AMG" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Mercedes Benz GLC 300 AMG</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Mercesdes/M4.jpg" alt="Mercedes Benz GLC 200" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Mercedes Benz GLC 200</h3>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="SlideShow/Mercesdes/M5.jpg" alt="Mercedes Benz C200" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Mercedes Benz C200</h3>
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
         <a href="DisplayCarByBrand.jsp?brandName=Mercedes"><button>Click Here to view Car</button></a>
        <%@include file="Footer.jsp" %>
    </body>
</html>
