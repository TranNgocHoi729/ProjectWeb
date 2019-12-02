<%-- 
    Document   : admin
    Created on : Nov 12, 2019, 4:21:19 PM
    Author     : Khanh Duy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/admin.css">
        <link rel="stylesheet" href="./css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>

    <body>
        <div class="container">
            <!--header-->
            <div>
                <img src="image/Untitled-1.jpg" width="1000px" height="250px">
            </div>
            </br>
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
                        <li>
                            <a href="delete.jsp">Delete a car</a>
                        </li>
                    </ul>
                </div>
                <!--content-->
                <div class="col-9">
                    
                </div>
            </div>
        </div>
        
    </body>
</html>
