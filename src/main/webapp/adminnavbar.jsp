<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JFSD Project</title>
    <!-- External Libraries -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Styling -->
    <style>
        /* Global Styling */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(120deg, #4a148c, #8e44ad);
            color: #fff;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .container {
            text-align: center;
            margin: 20px auto;
            width: 90%;
            max-width: 1200px;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.1);
            padding: 20px 30px;
        }

        /* Heading */
        h2 {
            font-size: 2rem;
            font-weight: 600;
            color: #6a1b9a;
            margin-bottom: 20px;
        }

        /* Navbar Styling */
        .navbar-custom {
            display: flex;
            justify-content: space-around;
            align-items: center;
            background-color: #4a148c;
            padding: 15px 0;
            border-radius: 8px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
            margin-bottom: 30px;
        }

        .navbar-custom a {
            color: #ffffff;
            font-weight: 600;
            text-decoration: none;
            font-size: 1.1rem;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .navbar-custom a:hover {
            background-color: #7b1fa2;
            transform: scale(1.05);
        }

        /* Footer */
        .footer {
            text-align: center;
            margin-top: auto;
            padding: 15px 0;
            background: #4a148c;
            color: #fff;
            font-size: 0.9rem;
            border-top: 1px solid #6a1b9a;
        }

        .footer a {
            color: #7b1fa2;
            text-decoration: none;
            font-weight: bold;
        }

        .footer a:hover {
            color: #9b59b6;
        }
    </style>
</head>

<body>
    <!-- Main Content -->
    <div class="container">
        <h2>Spring Boot Demo SDP Project</h2>

        <!-- Navbar -->
        <div class="navbar-custom">
            <a href="adminhome.jsp"><i class="fas fa-home"></i> Home</a>
            <a href="/teacher/getAllStudents"><i class="fas fa-users"></i> View All Students</a>
            <a href="/teacher/assignments"><i class="fas fa-tasks"></i> Create Assignment</a>
            <a href="/teacher/review"><i class="fas fa-edit"></i> Review Submissions</a>
            <a href="adminlogin.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 JFSD Project | <a href="/contact">Contact Us</a></p>
    </div>

    <!-- External JS Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
