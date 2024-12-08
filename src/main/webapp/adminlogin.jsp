<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        /* Global Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #8e44ad, #3498db);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }

        /* Login Card */
        .login-card {
            background: #ffffff;
            color: #333;
            width: 100%;
            max-width: 380px;
            border-radius: 15px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
            padding: 40px;
            text-align: center;
        }

        .login-card h2 {
            margin-bottom: 30px;
            font-size: 2rem;
            font-weight: 600;
            color: #333;
        }

        /* Form Styling */
        .form-group {
            margin-bottom: 25px;
            text-align: left;
        }

        .form-group label {
            display: block;
            font-weight: 600;
            margin-bottom: 8px;
            color: #333;
        }

        .form-control {
            width: 100%;
            padding: 14px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #3498db;
            outline: none;
            box-shadow: 0 0 8px rgba(52, 152, 219, 0.3);
        }

        /* Buttons Styling */
        .btn {
            display: inline-block;
            width: 100%;
            padding: 14px;
            font-size: 1rem;
            font-weight: 600;
            color: #fff;
            background: #3498db;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-transform: uppercase;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background: #2e86c1;
        }

        .btn:active {
            transform: scale(0.98);
        }

        .btn-secondary {
            background: #e74c3c;
        }

        .btn-secondary:hover {
            background: #c0392b;
        }

        /* Back Link Styling */
        .back-link {
            margin-top: 20px;
            display: inline-block;
            color: #3498db;
            font-weight: 600;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .back-link:hover {
            color: #2980b9;
        }

        /* Footer Styling */
        .footer {
            margin-top: 30px;
            font-size: 0.85rem;
            color: #777;
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
    <div class="login-card">
        <h2>Admin Login</h2>
        <form method="post" action="checkadminlogin">
            <div class="form-group">
                <label for="ausername">Username</label>
                <input type="text" id="ausername" name="ausername" class="form-control" placeholder="Enter your username" required>
            </div>
            <div class="form-group">
                <label for="apassword">Password</label>
                <input type="password" id="apassword" name="apassword" class="form-control" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="btn">Login</button>
            <button type="reset" class="btn btn-secondary" style="margin-top: 10px;">Clear</button>
        </form>
        <a href="mainnavbar.jsp" class="back-link">Back to Dashboard</a>
        <div class="footer">
            <p>&copy; 2024 Admin System | <a href="contact">Contact Us</a></p>
        </div>
    </div>
</body>

</html>
