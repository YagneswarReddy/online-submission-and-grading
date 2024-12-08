<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Students</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        /* Global Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(120deg, #3498db, #8e44ad);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }

        .container {
            width: 80%;
            max-width: 1200px;
            margin: 0 auto;
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }

        .btn-dashboard {
            background-color: #4a148c;
            color: white;
            padding: 12px 25px;
            font-weight: bold;
            text-decoration: none;
            border-radius: 8px;
            display: inline-block;
            transition: background-color 0.3s ease;
            font-size: 1.1rem;
            margin-bottom: 20px;
        }

        .btn-dashboard:hover {
            background-color: #7b1fa2;
        }

        h3 {
            text-align: center;
            color: #6a1b9a;
            font-size: 2.2rem;
            font-weight: 600;
            margin-bottom: 30px;
        }

        .table-container {
            margin-top: 20px;
            width: 100%;
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            text-align: center;
            font-size: 1rem;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #6a1b9a;
            color: white;
        }

        td {
            color: #555;
        }

        tr:hover {
            background-color: #f3e5f5;
            cursor: pointer;
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            .btn-dashboard {
                width: 100%;
                text-align: center;
            }
        }
    </style>
</head>

<body>

    <div class="container">
        <!-- Back to Dashboard Button -->
        <a href="/adminhome.jsp" class="btn-dashboard">
            <i class="fas fa-arrow-left"></i> Back to Dashboard
        </a>

        <h3>View All Students</h3>

        <!-- Table of Students -->
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Program</th>
                        <th>Branch</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${students}" var="student">
                        <tr>
                            <td><c:out value="${student.id}"/></td>
                            <td><c:out value="${student.name}"/></td>
                            <td><c:out value="${student.gender}"/></td>
                            <td><c:out value="${student.program}"/></td>
                            <td><c:out value="${student.branch}"/></td>
                            <td><c:out value="${student.email}"/></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</body>

</html>
