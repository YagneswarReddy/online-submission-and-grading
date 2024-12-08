<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        /* Global Styles */
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #1e3c72, #2a5298); /* Updated gradient colors */
            color: #fff;
        }

        /* Header */
        .navbar {
            background-color: #1b2a49;
        }

        .navbar-brand,
        .navbar-nav .nav-link {
            color: #ffffff;
        }

        .navbar-brand:hover,
        .navbar-nav .nav-link:hover {
            color: #ffb703;
        }

        /* Dashboard Card Styles */
        .dashboard-container {
            padding: 40px 20px;
        }

        .dashboard-card {
            background: #ffffff;
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            color: #333;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .dashboard-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }

        .dashboard-card i {
            font-size: 50px;
            margin-bottom: 10px;
            color: #1e3c72;
        }

        .dashboard-card h4 {
            margin-top: 10px;
            font-weight: bold;
        }

        .btn-primary {
            background-color: #1e3c72;
            border: none;
            border-radius: 8px;
            padding: 10px 20px;
            transition: background-color 0.3s ease;
            color: #fff;
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
            <a class="navbar-brand" href="#">Student Dashboard</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/student/assignment?studentId=${sessionScope.studentId}">Add Assignment</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/student/submissions?studentId=${sessionScope.studentId}">Assignments Submitted</a>
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

    <!-- Dashboard Content -->
    <div class="container dashboard-container">
        <div class="row g-4">
            <!-- Card 1 -->
            <div class="col-md-6 col-lg-4">
                <div class="dashboard-card">
                    <i class="fas fa-plus-circle"></i>
                    <h4>Add Assignment</h4>
                    <p>Create and manage your assignments efficiently.</p>
                    <a href="/student/assignment?studentId=${sessionScope.studentId}" class="btn btn-primary">Go</a>
                </div>
            </div>
            <!-- Card 2 -->
            <div class="col-md-6 col-lg-4">
                <div class="dashboard-card">
                    <i class="fas fa-tasks"></i>
                    <h4>Assignments Submitted</h4>
                    <p>Check the assignments you've created or are part of.</p>
                    <a href="/student/submissions?studentId=${sessionScope.studentId}" class="btn btn-primary">Go</a>
                </div>
            </div>
            <!-- Card 3 -->
            <div class="col-md-6 col-lg-4">
                <div class="dashboard-card">
                    <i class="fas fa-graduation-cap"></i>
                    <h4>View Grades</h4>
                    <p>Access and review your academic performance.</p>
                    <a href="viewGrades.jsp" class="btn btn-primary">Go</a>
                </div>
            </div>
            <!-- Card 4 -->
            <div class="col-md-6 col-lg-4">
                <div class="dashboard-card">
                    <i class="fas fa-hourglass-half"></i>
                    <h4>View Status</h4>
                    <p>Track the progress and status of your submissions.</p>
                    <a href="viewStatus.jsp" class="btn btn-primary">Go</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
