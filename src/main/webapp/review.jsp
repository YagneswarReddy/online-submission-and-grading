<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Assignments</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        /* Global Styling */
        body {
            font-family: 'Arial', sans-serif;
            background: #f1f5f9;
            margin: 0;
            padding: 0;
        }

        /* Navigation Bar */
        .navbar {
            display: flex;
            justify-content: space-evenly;
            background: #2d3436;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        .navbar a {
            text-decoration: none;
            color: #ffffff;
            font-weight: bold;
            font-size: 1rem;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background: #636e72;
        }

        /* Page Title */
        .page-title {
            font-size: 2.2rem;
            font-weight: 600;
            color: #2d3436;
            text-align: center;
            margin-top: 50px;
        }

        /* Table Styling */
        .table-container {
            margin-top: 30px;
            padding: 30px;
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.1);
        }

        .table th,
        .table td {
            text-align: center;
            padding: 15px;
        }

        .table th {
            background-color: #3498db;
            color: #ffffff;
            font-weight: bold;
            text-transform: uppercase;
        }

        .table tbody tr:nth-child(odd) {
            background-color: #f9f9f9;
        }

        .table tbody tr:nth-child(even) {
            background-color: #f1f5f9;
        }

        .btn-custom {
            background-color: #3498db;
            color: #fff;
            padding: 8px 15px;
            border-radius: 5px;
            border: none;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .btn-custom:hover {
            background-color: #2980b9;
            cursor: pointer;
        }

        .input-grade {
            width: 150px;
            padding: 8px;
            border: 2px solid #3498db;
            border-radius: 5px;
            font-size: 1rem;
        }

        .footer {
            text-align: center;
            margin-top: 50px;
            font-size: 1rem;
            color: #7f8c8d;
        }

        .footer a {
            color: #3498db;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="adminhome.jsp"><i class="fas fa-home"></i> Home</a>
        <a href="/teacher/getAllStudents"><i class="fas fa-users"></i> View Students</a>
        <a href="/teacher/assignments"><i class="fas fa-plus"></i> Create Assignment</a>
        <a href="/teacher/review"><i class="fas fa-check-circle"></i> Review Submissions</a>
        <a href="adminlogin.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>

    <!-- View Assignments Table -->
    <div class="container table-container">
        <h2 class="page-title">Assignments Submitted for Review</h2>

        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Assignment Name</th>
                    <th>Student Name</th>
                    <th>File</th>
                    <th>Download</th>
                    <th>Status</th>
                    <th>Grade</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${submissions}" var="submission">
                    <tr>
                        <td><c:out value="${submission.id}" /></td>
                        <td><c:out value="${submission.assignment.assignmentName}" /></td>
                        <td><c:out value="${submission.student.name}" /></td>
                        <td><c:out value="${submission.fileName}" /></td>
                        <td>
                            <a href="/teacher/downloadFile/${submission.id}" class="btn-custom">
                                <i class="fas fa-download"></i> Download
                            </a>
                        </td>
                        <td><c:out value="${submission.status}" /></td>
                        <td>
                            <c:if test="${not empty submission.grade}">
                                <p>${submission.grade}</p>
                            </c:if>

                            <c:if test="${empty submission.grade}">
                                <form method="post" action="/teacher/providegrades">
                                    <input type="hidden" name="id" value="${submission.id}">
                                    <input type="text" name="grade" class="input-grade" placeholder="Enter grade">
                                    <button type="submit" class="btn-custom">Submit Grade</button>
                                </form>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Assignment Manager | <a href="/contact">Contact Support</a></p>
    </div>

    <!-- Include JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
