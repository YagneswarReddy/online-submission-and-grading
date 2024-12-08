<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Status</title>
    <!-- Bootstrap 5.3.0 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f1f3f5;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
            min-height: 100vh;
        }

        /* Updated Navbar */
        .navbar {
            background-color: #007bff;
            padding: 10px 20px;
            width: 100%;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            color: white;
            font-size: 24px;
            font-weight: bold;
            text-transform: uppercase;
        }

        .navbar-nav .nav-item {
            margin-left: 20px;
        }

        .navbar-nav .nav-item .nav-link {
            color: #fff !important;
            font-size: 16px;
            font-weight: 500;
            text-transform: capitalize;
            padding: 8px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .navbar-nav .nav-item .nav-link:hover {
            background-color: #ff8c00;
            color: #fff !important;
        }

        .navbar-nav .nav-item .nav-link.active {
            background-color: #004080;
            color: #fff !important;
        }

        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
            margin-top: 30px;
        }

        .container h1 {
            text-align: center;
            font-size: 32px;
            font-weight: 700;
            color: #004aad;
            margin-bottom: 20px;
        }

        .status-box {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 20px 0;
            padding: 20px;
            border-radius: 8px;
            background-color: #f8f9fa;
        }

        .status-box span {
            font-size: 20px;
            font-weight: 500;
        }

        .status-pending {
            background-color: #ffcc00;
            padding: 10px 20px;
            color: white;
            border-radius: 30px;
            font-weight: 600;
        }

        .status-completed {
            background-color: #28a745;
            padding: 10px 20px;
            color: white;
            border-radius: 30px;
            font-weight: 600;
        }

        .btn-primary {
            background-color: #004aad;
            border: none;
            padding: 12px 30px;
            border-radius: 8px;
            transition: background-color 0.3s ease;
            color: white;
            font-size: 18px;
            font-weight: 600;
        }

        .btn-primary:hover {
            background-color: #003366;
        }

        .footer {
            margin-top: 50px;
            font-size: 14px;
            color: #888;
            text-align: center;
        }

    </style>
</head>

<body>

    <!-- Updated Navigation Bar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">Student Dashboard</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link btn btn-primary" href="addAssignment.jsp">Add Assignment</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-primary" href="viewallassignments.jsp">View Assignments</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-primary active" href="viewStatus.jsp">View Status</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-primary" href="viewGrades.jsp">View Grades</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- View Status Section -->
    <div class="container">
        <h1>Assignment Status</h1>

        <!-- Status Cards -->
        <div class="status-box">
            <span>Assignment 1</span>
            <span class="status-pending">Pending</span>
        </div>

        <div class="status-box">
            <span>Assignment 2</span>
            <span class="status-completed">Completed</span>
        </div>

        <div class="status-box">
            <span>Assignment 3</span>
            <span class="status-pending">Pending</span>
        </div>

        <!-- Action Button -->
        <div class="text-center mt-4">
            <a href="viewAssignments.jsp" class="btn-primary">View Assignments</a>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>© 2024 Student Portal - All rights reserved.</p>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
