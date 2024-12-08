<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Assignment</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        /* Background and Font */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #00c6ff, #0072ff);
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background: rgba(255, 255, 255, 0.95);
            color: #333;
            border-radius: 20px;
            padding: 40px 30px;
            max-width: 900px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3);
        }

        /* Navbar */
        .navbar {
            display: flex;
            justify-content: space-around;
            background: linear-gradient(90deg, #0072ff, #00c6ff);
            padding: 10px 20px;
            border-radius: 10px;
            margin-bottom: 30px;
        }

        .navbar a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            font-size: 1rem;
            padding: 10px 20px;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .navbar a:hover {
            background: rgba(255, 255, 255, 0.2);
        }

        /* Page Title */
        .page-title {
            text-align: center;
            font-size: 2.5rem;
            font-weight: bold;
            margin-bottom: 20px;
            color: #0072ff;
        }

        /* Form Styling */
        .form-label {
            font-weight: bold;
            color: #0072ff;
        }

        .form-control {
            border-radius: 10px;
            padding: 10px;
            font-size: 1rem;
            border: 2px solid #ddd;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #0072ff;
            box-shadow: 0 0 10px rgba(0, 114, 255, 0.5);
        }

        .btn-custom {
            width: 100%;
            font-size: 1.2rem;
            padding: 12px;
            background: linear-gradient(90deg, #0072ff, #00c6ff);
            color: #fff;
            font-weight: bold;
            border: none;
            border-radius: 10px;
            transition: all 0.3s ease;
            margin-top: 10px;
        }

        .btn-custom:hover {
            transform: scale(1.05);
            opacity: 0.9;
        }

        /* Table */
        .table-container {
            margin-top: 30px;
        }

        table {
            width: 100%;
            border-radius: 10px;
            overflow: hidden;
        }

        th {
            background: linear-gradient(90deg, #0072ff, #00c6ff);
            color: #fff;
            text-transform: uppercase;
            padding: 10px;
        }

        tr:nth-child(odd) {
            background: #f3faff;
        }

        tr:nth-child(even) {
            background: #e7f4ff;
        }

        td {
            padding: 10px;
            text-align: center;
        }

        /* Footer */
        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 0.9rem;
            color: #666;
        }

        .footer a {
            color: #0072ff;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <div class="container">
        <nav class="navbar">
            <a href="/adminhome"><i class="fas fa-home"></i> Home</a>
            <a href="/teacher/getAllStudents"><i class="fas fa-users"></i> Students</a>
            <a><i class="fas fa-plus"></i> Create Assignment</a>
            <a href="/teacher/review"><i class="fas fa-check-circle"></i> Review</a>
            <a href="/adminlogin"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </nav>

        <h2 class="page-title">Create Assignment</h2>

        <form action="/teacher/assignments" method="post">
            <div class="mb-3">
                <label for="assignmentName" class="form-label">Assignment Name</label>
                <input type="text" class="form-control" id="assignmentName" name="assignmentName" placeholder="Enter assignment name" required>
            </div>
            <div class="mb-3">
                <label for="dueDate" class="form-label">Due Date</label>
                <input type="date" class="form-control" id="dueDate" name="dueDate" required>
            </div>
            <button type="submit" class="btn btn-custom">Create Assignment</button>
        </form>

        <div class="table-container">
            <h3 class="text-center mt-4">Existing Assignments</h3>
            <table class="table table-hover mt-3">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Assignment Name</th>
                        <th>Due Date</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${assignments}" var="assignment">
                        <tr>
                            <td><c:out value="${assignment.id}" /></td>
                            <td><c:out value="${assignment.assignmentName}" /></td>
                            <td><c:out value="${assignment.dueDate}" /></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="footer">
            <p>&copy; 2024 Assignment Manager. Built with <i class="fas fa-heart"></i> | <a href="/contact">Contact Support</a></p>
        </div>
    </div>
</body>

</html>
