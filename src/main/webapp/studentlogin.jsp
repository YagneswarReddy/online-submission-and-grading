<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Login</title>
    <!-- External Stylesheets -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <!-- Custom Styling -->
    <style>
        /* Global Styling */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #8e44ad, #3498db);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }

        /* Card Styling */
        .login-container {
            background: #ffffff;
            color: #333;
            max-width: 400px;
            width: 90%;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .login-container h3 {
            font-size: 1.8rem;
            font-weight: bold;
            margin-bottom: 20px;
            color: #6a1b9a;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-group label {
            font-weight: 600;
            margin-bottom: 5px;
            display: block;
            color: #6a1b9a;
        }

        .form-control {
            border-radius: 8px;
            padding: 12px;
            font-size: 1rem;
            border: 1px solid #ddd;
        }

        .form-control:focus {
            border-color: #6a1b9a;
            box-shadow: 0 0 8px rgba(106, 27, 154, 0.5);
        }

        .btn {
            border-radius: 8px;
            padding: 12px;
            font-size: 1rem;
            width: 100%;
            font-weight: bold;
            transition: all 0.3s;
        }

        .btn-success {
            background-color: #6a1b9a;
            border: none;
        }

        .btn-success:hover {
            background-color: #8e44ad;
        }

        .btn-warning {
            background-color: #e67e22;
            border: none;
        }

        .btn-warning:hover {
            background-color: #d35400;
        }

        /* Back to Dashboard */
        .btn-dashboard {
            margin-top: 15px;
            display: inline-block;
            color: #6a1b9a;
            text-decoration: none;
            font-weight: bold;
            font-size: 0.9rem;
            transition: color 0.3s;
        }

        .btn-dashboard:hover {
            color: #8e44ad;
        }
    </style>
</head>

<body>
    <div class="login-container">
        <h3>Student Login</h3>
        <form method="post" action="checkstudentlogin">
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" class="form-control" id="email" name="cemail" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="cpassword" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="btn btn-success">Login</button>
            <button type="reset" class="btn btn-warning">Clear</button>
            <a href="mainnavbar.jsp" class="btn-dashboard">Back to Dashboard</a>
        </form>
    </div>

    <!-- External JS Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
