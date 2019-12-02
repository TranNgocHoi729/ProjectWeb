<%-- 
    Document   : OrderInfor
    Created on : Nov 14, 2019, 6:25:56 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .formats{
                margin-top: 50px;
                margin-left: 350px;
            }
        </style>
    </head>
    <body>
        <h1 style="text-align: center">~~~ List Of All Orders ~~~</h1>
        <div class="formats">
        <jsp:useBean id="bill" class="model.Bill" />
        <table border="2" cellspacing="4">             
                    <tr>
                        <th>Customer</th>
                        <td>Car Code</td>
                        <th>Date</th>
                        <th>Address</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>VAT</th>
                        <th>Total Price</th>
                        <th>Is Bought</th>
                    </tr>
                    <c:forEach var="i" items="${bill.allBill}">
                    <tr>
                        <td>${i.customerName}</td>
                        <td>${i.carCode}</td>
                        <td>${i.date}</td>
                        <td>${i.customerAddress}</td>
                        <td>${i.customerPhone}</td>
                        <td>${i.customerEmail}</td>
                        <td>${i.VAT}</td>
                        <td>${i.totalCost}</td>
                        <c:if test="${i.isBought==1}">
                            <td>
                                Pay
                            </td>
                        </c:if>
                        <c:if test="${i.isBought==0}">
                            <td>
                                Not
                            </td>
                            <td><a href="../bought?email=${i.customerEmail}">Bought</a></td>
                        </c:if>
                        
                    </tr>
               
            </c:forEach>
                     </table>
        </div>
    </body>
</html>
