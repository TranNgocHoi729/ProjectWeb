<%-- 
    Document   : Updates
    Created on : Nov 14, 2019, 10:21:21 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .formatss{
                margin-top: 20px;
                margin-left: 30px;
                border: 3px;
            }
        </style>
    </head>
    <body>
        <div class="formatss">
        <form action="../Update">
            <table>
                <tr>
                    <th>Car Code : </th>
                    <td><input type="text" name="carCode" value="${param.carCode}"></td>


                </tr>
                <tr>
                    <th>New Price : </th>
                    <td><input type="text" name="price" value="${param.price}"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="submit" value="Change"></td>
                </tr>
            </table>
               
        </form>
                <a href="admin.jsp">Back to Admin Page</a>
        </div>>
    </body>
</html>
