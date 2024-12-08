<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #6f42c1, #ff6f61);
            color: #fff;
            margin: 0;
            padding: 0;
        }

        /* Container Styling */
        .container {
            background-color: #ffffff;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            margin-top: 60px;
            width: 100%;
            max-width: 800px;
        }

        /* Heading */
        h3.form-title {
            font-size: 32px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
            color: #2d87f0;
        }

        /* Form Group Styling */
        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-size: 16px;
            color: #333;
            font-weight: bold;
        }

        .form-group input,
        .form-group select,
        .form-group .radio-inline {
            font-size: 16px;
            padding: 12px;
            border-radius: 10px;
            width: 100%;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            border: 1px solid #ddd;
        }

        /* Gender Radio Buttons Styling */
        .form-group .radio-inline {
            width: auto;
            display: inline-block;
            padding-left: 20px;
        }

        /* Buttons */
        .btn {
            border-radius: 25px;
            font-weight: 600;
            padding: 12px 30px;
            text-transform: uppercase;
            transition: background-color 0.3s ease;
            border: none;
        }

        .btn-success {
            background-color: #28a745;
            color: white;
        }

        .btn-success:hover {
            background-color: #218838;
        }

        .btn-primary {
            background-color: #007bff;
            color: white;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .btn-default {
            background-color: #f0f0f0;
            color: #333;
        }

        .btn-default:hover {
            background-color: #ddd;
        }

        /* Footer */
        .footer {
            text-align: center;
            font-size: 14px;
            margin-top: 40px;
            color: #fff;
        }

        .footer a {
            color: #ffcc00;
        }

        /* Input Field Focus */
        .form-control:focus {
            box-shadow: 0 0 0 0.2rem rgba(38, 143, 255, 0.5);
            border-color: #28a745;
        }

        /* Styling the buttons */
        .btn-lg {
            padding: 15px 40px;
            font-size: 18px;
            font-weight: 700;
            text-transform: uppercase;
        }

        .btn-register {
            background: linear-gradient(45deg, #f44336, #ff9800);
            color: #fff;
        }

        .btn-register:hover {
            background: linear-gradient(45deg, #ff5722, #ff9800);
        }

        .btn-dashboard {
            background-color: #2196f3;
            color: #fff;
        }

        .btn-dashboard:hover {
            background-color: #1976d2;
        }

    </style>
</head>

<body>

    <!-- Registration Form -->
    <div class="container">
        <h3 class="form-title">Student Registration Form</h3>
        <form method="post" action="insertstudent" class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-3">Enter ID:</label>
                <div class="col-sm-9">
                    <input type="text" name="cid" class="form-control" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">Enter Name:</label>
                <div class="col-sm-9">
                    <input type="text" name="cname" class="form-control" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">Select Gender:</label>
                <div class="col-sm-9">
                    <label class="radio-inline"><input type="radio" name="cgender" value="MALE" required /> Male</label>
                    <label class="radio-inline"><input type="radio" name="cgender" value="FEMALE" required /> Female</label>
                    <label class="radio-inline"><input type="radio" name="cgender" value="OTHERS" required /> Others</label>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">Select Program:</label>
                <div class="col-sm-9">
                    <select name="cprogram" class="form-control" required>
                        <option value="">--Select Program--</option>
                        <option value="BSc">BSc</option>
                        <option value="BTech">BTech</option>
                        <option value="MSc">MSc</option>
                        <option value="MTech">MTech</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">Select Branch:</label>
                <div class="col-sm-9">
                    <select name="cbranch" class="form-control" required>
                        <option value="">--Select Branch--</option>
                        <option value="CSE">Computer Science Engineering (CSE)</option>
                        <option value="ECE">Electronics and Communication Engineering (ECE)</option>
                        <option value="EEE">Electrical and Electronics Engineering (EEE)</option>
                        <option value="ME">Mechanical Engineering (ME)</option>
                        <option value="CE">Civil Engineering (CE)</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">Enter Email:</label>
                <div class="col-sm-9">
                    <input type="email" name="cemail" class="form-control" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">Enter Password:</label>
                <div class="col-sm-9">
                    <input type="password" name="cpassword" class="form-control" required />
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-9">
                    <input type="submit" value="Register" class="btn btn-register btn-lg" />
                    <input type="reset" value="Clear" class="btn btn-default btn-lg" />
                    <a href="mainnavbar.jsp" class="btn btn-dashboard btn-lg">Back to Dashboard</a>
                </div>
            </div>
        </form>
    </div>

    <div class="footer">
        <p>© 2024 Student Portal - All rights reserved. <a href="#">Terms & Conditions</a></p>
    </div>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
