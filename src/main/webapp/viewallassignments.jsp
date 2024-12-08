<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignments Submitted</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc); /* Gradient Background */
            color: #ffffff;
        }

        .navbar {
            background-color: #1b2a49;
        }

        .navbar-brand,
        .nav-link {
            color: #ffffff !important;
            font-weight: bold;
        }

        .nav-link:hover {
            color: #ffd700 !important; /* Gold color on hover */
        }

        .container {
            margin-top: 50px;
        }

        .table-container {
            background-color: #ffffff;
            color: #333;
            border-radius: 10px;
            padding: 20px 30px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #6a11cb;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }

        .table th {
            background-color: #2575fc;
            color: #ffffff;
            text-align: center;
            font-weight: bold;
        }

        .table td {
            text-align: center;
            vertical-align: middle;
        }

        .btn {
            color: #fff;
            background-color: #2575fc;
            border: none;
            padding: 8px 15px;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background-color: #6a11cb;
        }
    </style>
</head>

<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Student Dashboard</a>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/student/assignment">Add Assignment</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/student/submissions">Assignments Submitted</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewStatus.jsp">View Status</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewGrades.jsp">View Grades</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <div class="table-container">
            <h2>Your Submitted Assignments</h2>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Assignment Name</th>
                        <th>File</th>
                        <th>Status</th>
                        <th>Grade</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${submissions}" var="submission">
                        <tr>
                            <td><c:out value="${submission.id}" /></td>
                            <td><c:out value="${submission.assignment.assignmentName}" /></td>
                            <td><c:out value="${submission.fileName}" /></td>
                            <td><c:out value="${submission.status}" /></td>
                            <td><c:out value="${submission.grade}" /></td>
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
