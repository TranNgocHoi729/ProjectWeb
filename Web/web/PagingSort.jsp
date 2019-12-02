<%-- 
    Document   : PagingSort
    Created on : Nov 14, 2019, 2:02:54 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <%@include file="Titleheader.html" %>
    <%@include file="TitleFooster.html" %>
    <style>
        img{
            width: 650px;
            height: 350px;
        }
        .format{
            margin-top: 15px;
            margin-left: 50px;
            margin-top: 40px;
            margin-bottom: 30px;
            float: left;
        }
        .pageging{
            
            margin-left: 10px;
            width: 400px;
      
        }
    </style>
</head>
<body>
    <%@include file="header.jsp" %>
    <jsp:useBean id="display" class="dao.PagingForSort" />
    <jsp:setProperty name="display" property="*" />
    <div class="format">
        <c:forEach var="i" items="${display.displaySort}">
            <div>
                <table border="2" class="format" >       
                    <tr >
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
    <br />
    <br />


    <div class="pageging">.      Page 
        <c:forEach var="i" begin="1" end="${display.numPage}" step="1">
            <c:url value="PagingSort.jsp" var="next">
                <c:param name="page" value="${i}"/>
                <c:param name="size" value="${8}"/>
                <c:param name="status" value="${param.status}" />
            </c:url>
            <a href="${next}">${i} </a>

        </c:forEach>
    </div>
    <br />
     <br />
    <br />
    <br />
    <br />
    <%@include file="footer.html" %>
</body>
</html>

