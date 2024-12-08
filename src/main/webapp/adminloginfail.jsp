<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Failed</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #f44336, #ff9800);
            color: white;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        .container {
            background-color: #ffffff;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 100%;
        }

        h1 {
            font-size: 32px;
            font-weight: bold;
            color: #f44336;
        }

        p {
            font-size: 18px;
            color: #333;
            margin-bottom: 30px;
        }

        .btn-retry {
            background-color: #ff5722;
            color: white;
            padding: 12px 25px;
            font-size: 16px;
            border-radius: 25px;
            text-transform: uppercase;
            font-weight: bold;
            border: none;
            transition: background-color 0.3s ease;
        }

        .btn-retry:hover {
            background-color: #e64a19;
        }

        .message {
            margin-bottom: 20px;
        }
    </style>
</head>

<body>

    <div class="container">
        <div class="message">
            <h1>Login Failed</h1>
            <p><c:out value="${message}"></c:out></p>
        </div>
        <a href="adminlogin" class="btn-retry">Try Again</a>
    </div>

    <!-- Bootstrap JS (Optional for any interactive components) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
