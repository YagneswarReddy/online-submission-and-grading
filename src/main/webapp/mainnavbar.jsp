<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Student Assignment Grading System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Global Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Root Layout */
        body {
            font-family: 'Arial', sans-serif;
            display: flex;
            height: 100vh;
            overflow: hidden;
            background: #f0f4fc;
        }

        /* Split Screen */
        .left-section, .right-section {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Left Section (Visual Side) */
        .left-section {
            background: linear-gradient(to bottom right, #4facfe, #00f2fe);
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        .left-section h1 {
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .left-section p {
            font-size: 1.2rem;
            margin-bottom: 40px;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.2);
        }

        .left-section img {
            max-width: 80%;
            border-radius: 10px;
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
        }

        /* Right Section (Interactive Side) */
        .right-section {
            background: #ffffff;
            flex-direction: column;
            padding: 40px;
            box-shadow: -5px 0px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .right-section h2 {
            font-size: 2rem;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
        }

        /* Button Layout */
        .nav-links {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .nav-link {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 15px;
            color: #fff;
            background: linear-gradient(45deg, #6a11cb, #2575fc);
            text-decoration: none;
            font-weight: bold;
            border-radius: 8px;
            text-transform: uppercase;
            transition: all 0.3s ease-in-out;
            font-size: 1.1rem;
        }

        .nav-link i {
            margin-right: 10px;
            font-size: 1.5rem;
        }

        .nav-link:hover {
            transform: translateY(-3px);
            box-shadow: 0px 4px 15px rgba(106, 17, 203, 0.4);
        }

        /* Footer */
        .footer {
            margin-top: auto;
            font-size: 0.9rem;
            color: #666;
            margin-top: 30px;
        }

        .footer a {
            text-decoration: none;
            color: #2575fc;
            font-weight: bold;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .left-section {
                display: none; /* Hide left section for small screens */
            }

            .right-section {
                width: 100%;
                padding: 20px;
            }

            .nav-links {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <!-- Left Visual Section -->
    <div class="left-section">
        <div>
            <h1>Welcome to the AssignMaster</h1>
            <p>Where You Can Submit And Grade Assignments.</p>
        </div>
    </div>

    <!-- Right Interactive Section -->
    <div class="right-section">
        <h2>Select an Option</h2>
        <div class="nav-links">
            <a href="/" class="nav-link"><i class="fas fa-home"></i> Home</a>
            <a href="studentreg" class="nav-link"><i class="fas fa-user-plus"></i> Register</a>
            <a href="studentlogin" class="nav-link"><i class="fas fa-sign-in-alt"></i>Student Login</a>
            <a href="adminlogin" class="nav-link"><i class="fas fa-user-shield"></i> Admin</a>
        </div>
        <div class="footer">
            <p>&copy; 2024 Student Grading System. <a href="contact">Contact Us</a></p>
        </div>
    </div>
</body>
</html>
