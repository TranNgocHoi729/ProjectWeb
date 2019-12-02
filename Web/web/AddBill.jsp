<%-- 
    Document   : AddBill
    Created on : Nov 14, 2019, 4:30:01 AM
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
                width: 600px;
                margin-left: 150px;
                margin-bottom: 40px;
                margin-top: 150px;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div>
            <form action="add">
            <table>
                <tr>               
                    <td><div class="formar"><img src="${param.image}"></div></td>
                    <td>
                        <div class="formar">
                            <h2>------- ${param.carName} -------</h2>
                            <br />
                            <p><input type="text" hidden name="carName" value="${param.carName} "></p>
                                <p>Customer Name : <input type="text" name="name" value="${param.name}"></p>
                                <p>Customer Address : <input type="text" name="address" value="${param.address}"></p>
                                <p>Customer Phone : <input type="text" name="phone" value="${param.phone}"></p>
                                <p>Customer Email : <input type="text" name="email" ></p>
                                <p>PRICE :  ${param.price}$ </p>
                                <input type="submit" name="submit" value="--- Buy ---">
                        </div>
                    </td>
                </tr>
                </table>
            </form>
        </div>
                                
                        <br />
                        <br />
                        <br />
                        <br />
        <%@include file="footer.html" %>
    </body>
</html>

