<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Assignments</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #1e3c72, #2a5298); /* Gradient background */
            color: #ffffff;
        }

        .navbar {
            background-color: #1b2a49;
        }

        .navbar-brand {
            color: #ffffff !important;
            font-weight: bold;
        }

        .navbar-brand:hover {
            color: #ffb703 !important;
        }

        .container {
            margin-top: 50px;
        }

        .table-container {
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
            color: #333;
        }

        h1 {
            color: #1e3c72;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .table th {
            background-color: #1e3c72;
            color: #ffffff;
            text-align: center;
            font-weight: bold;
        }

        .table td {
            text-align: center;
            vertical-align: middle;
        }

        .btn-primary {
            background-color: #1e3c72;
            border: none;
            border-radius: 5px;
            padding: 5px 15px;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #2a5298;
        }
    </style>
</head>

<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="/studenthome.jsp">Student Dashboard</a>
        </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
        <div class="table-container">
            <h1 class="text-center">Student Assignments</h1>

            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Assignment Info</th>
                        <th>Due Date</th>
                        <th>Submission</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${assignments}" var="assignment">
                        <tr>
                            <td><c:out value="${assignment.id}" /></td>
                            <td><c:out value="${assignment.assignmentName}" /></td>
                            <td><c:out value="${assignment.dueDate}" /></td>
                            <td>
                                <form method="post" action="/student/submitassignment" enctype="multipart/form-data">
                                    <input type="hidden" name="id" value="${assignment.id}">
                                    <input type="file" name="file" class="form-control mb-2" required>
                                    <button type="submit" class="btn btn-primary">Upload Assignment</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bootstrap Bundle JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
