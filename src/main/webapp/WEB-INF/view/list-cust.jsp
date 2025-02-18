<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <title>Customers</title>
</head>
<body>
<nav class="navbar navbar-dark navbar-expand-lg bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">CRM</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Features</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Pricing</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
    <div id="wrapper">
        <div id="header">
            <h2 style="text-align: center">CRM - LISTS</h2>
        </div>
    </div>
<div class="container-md" >
<%--<input type="button" value="Add"  onclick="window.location.href('') ; return false;"/>--%>
    <input type="button" value="Add Customer"
           onclick="window.location.href='ShowFormADD'; return false;"
           class="btn btn-primary" />
    <br>
    <br>
    <!--  add a search box -->

    <form:form action="search" method="GET">
        Search customer: <label>
        <input type="text" name="theSearchName" />
    </label>

        <input type="submit" value="Search" class="add-button" />
    </form:form>

    <table class="table" style="text-align: center ; align-items: center ; border-collapse: collapse; ">
        <thead>
        <tr>
            <th scope="col">First</th>
            <th scope="col">Last</th>
            <th scope="col">Email</th>
            <th scope="col">Action to take</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="tempCust" items="${customers}">
            <c:url var="updateLink" value="/customer/ShowFormUpdate">
                <c:param name="customerID" value="${tempCust.id}"/>
            </c:url>

            <c:url var="DeleteLink" value="/customer/Delete">
                <c:param name="customerID" value="${tempCust.id}"/>
            </c:url>
            <tr>
                <td>${tempCust.firstName}</td>
                <td>${tempCust.lastname}</td>
                <td>${tempCust.email}</td>
                <td>
                    <a href="${updateLink}">Update</a> | <a href="${DeleteLink}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>



</body>
<footer>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</footer>
</html>
