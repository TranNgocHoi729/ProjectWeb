<%-- 
    Document   : DisplayCarByBrand
    Created on : Nov 13, 2019, 9:21:53 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="TitleFooster.html" %>
        <%@include file="Titleheader.html" %>
        <style>
            img{
                width: 650px;
                height: 350px;
            }
            .format{
                margin-top: 15px;
                margin-left: 50px;
                margin-top: 40px;
                float: left;
            }
            .pageging{
                margin-left: 100px;
            }

        </style>
    </head>
    <body style=" ">
        <%@include file="header.jsp" %>
        <br />
        <br />
        <h1>${brandName}</h1>
        <div class="format">
            <jsp:useBean id="list" class="bean.CarBean" />
            <jsp:setProperty name="list" property="*" />
            <c:forEach var="i" items="${list.selectByBrand}">
                <div >
                    <table border="2" class="format" >       
                        <tr>
                            <td><img  src="${i.image}" /></td>
                        </tr>
                        <tr>
                            <td>
                                <p> Car Name : ${i.carName}</p>
                                <p> Price : ${i.price}$</p>
                            </td>
                        </tr>
                        <tr>
                            <td><a href="detail?car=${i.carName}">Click here to view Detail</a></td>
                        </tr>

                    </table>
                </div>
            </c:forEach>
        </div>
        <br />
        <br />
        <div class="pageging">Page 
            <c:forEach var="i" begin="1" end="${list.page}" step="1">
                <c:url value="DisplayCarByBrand.jsp" var="next">
                    <c:param name="page" value="${i}"/>
                    <c:param name="size" value="${8}"/>
                    <c:param name="brandName" value="${list.brandName}"/>
                </c:url>
                <a href="${next}">${i} </a>

            </c:forEach>
        </div>
        <br />
        <br />
        <%@include file="footer.html" %>
    </body>
</html>
