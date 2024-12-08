<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Grades</title>
    <!-- Bootstrap 5.3.0 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(120deg, #ff9966, #ff5e62);
            color: #333;
            min-height: 100vh;
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
        }

        .navbar {
            background-color: #2b3d59;
            padding: 15px;
            width: 100%;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.2);
        }

        .navbar-brand,
        .nav-link {
            color: #fff !important;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .nav-link:hover {
            color: #ffd700 !important; /* Gold hover */
        }

        .content-container {
            max-width: 800px;
            margin: 30px auto;
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            padding: 40px;
        }

        .content-container h1 {
            text-align: center;
            font-size: 36px;
            color: #2b3d59;
            font-weight: bold;
            margin-bottom: 30px;
        }

        .grade-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #f8f9fa;
            margin: 15px 0;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 3px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .grade-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
        }

        .grade-item span {
            font-size: 20px;
            font-weight: 500;
        }

        .badge {
            font-size: 22px;
            padding: 12px 25px;
            border-radius: 25px;
        }

        .btn-primary {
            background-color: #2b3d59;
            border: none;
            padding: 12px 25px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #1c2a3b;
        }
    </style>
</head>

<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">Student Dashboard</a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="addAssignment.jsp">Add Assignment</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewallassignments.jsp">View Assignments</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewStatus.jsp">View Status</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewGrades.jsp">View Grades</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Grades Section -->
    <div class="content-container">
        <h1>Your Grades</h1>
        <!-- Grade Card: Assignment 1 -->
        <div class="grade-item">
            <span>Assignment 1</span>
            <span class="badge bg-success">A</span>
        </div>
        <!-- Grade Card: Assignment 2 -->
        <div class="grade-item">
            <span>Assignment 2</span>
            <span class="badge bg-warning text-dark">B+</span>
        </div>
        <!-- Grade Card: Assignment 3 -->
        <div class="grade-item">
            <span>Assignment 3</span>
            <span class="badge bg-danger">C</span>
        </div>
    </div>

    <!-- Include Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
