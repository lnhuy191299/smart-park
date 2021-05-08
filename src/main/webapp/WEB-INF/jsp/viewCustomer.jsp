<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 3/7/2021
  Time: 10:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Parking Manager</title>
    <jsp:include page="css.jsp"/>
</head>
<body>
<div class="menu">
    <p class="menu-title">Parking</p>
    <div class="menu-group">
        <div class="menu-item">
            <i class="fa fa-user" aria-hidden="true" style="color: #FFE81A"></i>
            <a href="/viewCustomer" class="menu-link">Customer</a>
        </div>
        <div class="menu-item">
            <i class="fa fa-car" aria-hidden="true" style="color: #333"></i>
            <a href="/viewVehicle" class="menu-link">Vehicle</a>
        </div>
        <div class="menu-item">
            <i class="fa fa-money" aria-hidden="true" style="color: #2BEE86"></i>
            <a href="/viewParkingFee" class="menu-link">Parking Fee</a>
        </div>
    </div>
</div>
<div class="content">
    <div class="content-title">
        <p>Customer</p>
        <a href="/addCustomer" class="btn btn-outline-info float-right">New</a>
    </div>

    <table id="example" class="table table-hover table-bordered w-100">
        <thead>
        <tr style="color: #333333;font-weight: bold;text-align: center">
            <td>Name</td>
            <td>Email</td>
            <td>Mobile</td>
            <td>Address</td>
            <td>Vehicle Number</td>
            <td>Action</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="cus" items="${customerList}">
            <tr>
                <td>${cus.cusName}</td>
                <td>${cus.cusEmail}</td>
                <td>${cus.cusMobile}</td>
                <td>${cus.cusAddress}</td>
                <td>${cus.vehicle.vehicleNum}</td>
                <td>
                    <a href="/editCustomer?id=${cus.cusId}" class="btn btn-sm btn-outline-warning">Edit</a>
                    <a href="/deleteCustomer?id=${cus.cusId}" class="btn btn-sm btn-outline-danger">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
