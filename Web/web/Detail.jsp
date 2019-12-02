<%-- 
    Document   : Detail
    Created on : Nov 13, 2019, 10:20:41 PM
    Author     : dell
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="TitleFooster.html" %>
        <%@include file="Titleheader.html" %>
        <style>
            img{
                width: 700px;
                height: 450px;
            }
            .formar{
                width: 700px;
                margin-left: 150px;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>


        <br />
        <br />
        <br />

        <div>
            <c:forEach var="i" items="${product}">
                <table>
                    <tr>
                        <td><div class="formar"><img src="${i.image}"></div></td>
                        <td><div class="formar">
                                <p>Name : ${i.carName}</p>
                                <p>Brand : ${i.brandName}</p>
                                <p>Height : ${i.car_height}</p>
                                <p>Weight : ${i.car_weight}</p>
                                <p>Engine : ${i.carEngine}</p>
                                <p>Capacity : ${i.carCapacity}</p>
                                <p>Acceleration : ${i.acceleration}</p>
                                <p>MaximumSpeed : ${i.maximumSpeed}</p>
                                <p>FuelType : ${i.fuelType}</p>
                                <br />
                                <a href="AddBill.jsp?image=${i.image}&price=${i.price}&carName=${i.carName}" style="background: #005cbf"><button>Buy</button></a>
                            </div></td>
                    </tr>

                </table>


            </c:forEach>
        </div>


        <br />
       
        <br />
        <br />
        <br />
        <%@include file="footer.html" %>
    </body>
</html>
