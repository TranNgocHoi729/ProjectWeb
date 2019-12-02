<%-- 
    Document   : admin
    Created on : Nov 12, 2019, 4:21:19 PM
    Author     : Khanh Duy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/admin.css">
        <link rel="stylesheet" href="./css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>

    <body>
        <jsp:useBean id="brand" class="dao.BrandDao" />
        <div class="container">
            <!--header-->
            <div>
                <img src="../image/Untitled-1.jpg" width="1000px" height="250px">
            </div>
            </br>
            
            <img src="file://C:\Users\dell\Desktop\ASSSS22.doc">
            <!--body-->
            <div class="row">
                <!--sidemenu-->
                <div class="col-3">
                    <ul>
                        <li>
                            <a href="addCar.jsp">Add a new car</a>
                        </li>
                        <li>
                            <a href="update.jsp">Update car</a>
                        </li>
                       
                    </ul>
                </div>
                <!--content-->
                <div class="col-9">
                    <form action="../Update">
                        <table border="0" cellspacing="1">
                            <tr>
                                <td>
                                    Car Code 
                                </td>
                                <td>
                                    <input type="text" name="code">   
                                </td> 
                            </tr>
                            <tr>
                                <td>
                                    Car Name 
                                </td>
                                <td>
                                    <input type="text" name="name">  
                                </td> 
                            </tr>
                            <tr>
                                <td>
                                    Brand ID <td><select name="brand">
                                        <c:forEach var="i" items="${brand.brand}">
                                                <option ${i.brandId==param.brand?'selected':''}>${i.brandId}</option>
                                        </c:forEach>
                                    </select></td> 
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    Price <td><input type="text" name="price"></td> 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Height
                                </td>
                                <td><input type="text" name="height"></td> 

                            </tr>
                            <tr>
                                <td>
                                    Weight 
                                </td> <td><input type="text" name="weight"></td> 
                            </tr>
                            <tr>
                                <td>
                                    Engine 
                                </td>
                                <td>
                                    <input type="text" name="engine">

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Capacity 
                                </td>
                                <td>
                                    <input type="text" name="capacity">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Acceleration 
                                </td>
                                <td>
                                    <input type="text" name="acceleration">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Max Speed 
                                </td>
                                <td>
                                    <input type="text" name="speed">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Fuel Type 
                                </td>
                                <td>
                                    <input type="text" name="fuel">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Image <td><input type="file" name="img" ></td> 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="submit" value="Submit" name="submit">
                                </td>
                                <td>
                                    <input type="reset" value="Reset">
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
