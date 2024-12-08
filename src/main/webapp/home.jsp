<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-image: url('images/new1.jpg'); /* Set background image */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        height: 100vh;
        margin: 0;
        padding: 0;
        overflow: hidden;
    }

    /* Dark overlay to enhance text visibility */
    .overlay {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.5); /* Dark overlay with some transparency */
        z-index: 0;
    }

    nav {
        background-color: rgba(59, 89, 152, 0.85); /* Enhanced background color */
        color: white;
        padding: 15px 30px; 
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15); /* Improved shadow effect */
        position: sticky; 
        top: 0;
        z-index: 1000;
    }

    nav ul {
        list-style: none;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        gap: 30px; /* Increased gap between navbar items */
    }

    nav ul li {
        display: inline;
    }

    nav ul li a {
        color: white;
        text-decoration: none;
        padding: 12px 25px;
        font-size: 1.1em;
        font-weight: bold;
        border-radius: 10px;
        transition: all 0.3s ease;
    }

    nav ul li a:hover {
        background-color: #1a2d58; /* Darker shade on hover */
        transform: scale(1.1); /* Slightly enlarge the link */
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2); /* Shadow effect on hover */
    }

    h1 {
        color: white;
        text-align: center;
        text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.8); /* Stronger text shadow for readability */
        font-size: 5em;
        font-weight: bold;
        background: linear-gradient(45deg, #ff6347, #ff4500, #ff8c00); /* Gradient effect */
        -webkit-background-clip: text;
        color: transparent;
        padding: 20px 40px;
        border-radius: 12px;
        margin-top: 50px;
        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
        z-index: 1; /* Ensure heading is on top of overlay */
    }

    p {
        color: white;
        font-size: 1.5em;
        line-height: 1.8;
        text-align: center;
        text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.8); /* Stronger text shadow for readability */
        margin-top: 20px;
        margin-bottom: 50px; /* Space between paragraph and the bottom */
        z-index: 1; /* Ensure text is above overlay */
    }

    /* Add subtle animation to the content */
    h1, p {
        animation: fadeIn 1.5s ease-out;
    }

    @keyframes fadeIn {
        0% { opacity: 0; }
        100% { opacity: 1; }
    }

    /* Position the content centrally */
    .content {
        position: relative;
        z-index: 2;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 90vh;
        text-align: center;
    }

    /* Responsive design */
    @media (max-width: 768px) {
        h1 {
            font-size: 3em;
        }

        nav ul {
            flex-direction: column;
            gap: 15px;
        }

        p {
            width: 80%;
        }
    }
</style>
</head>
<body>

    <!-- Overlay to darken the background -->
    <div class="overlay"></div>

    <!-- Navbar -->
    <nav>
        <ul>
            <li>
                <a href="mainnavbar.jsp">HOME</a>
            </li>
        </ul>
    </nav>

    <!-- Page Content -->
    <div class="content">
        
        <!-- WELCOME Section -->
        <h1>
            ASSIGN MASTER
        </h1>

        <!-- Online Assignment and Grading System Section -->
        <p>
            ONLINE SUBMISSION AND GRADING SYSTEM
        </p>
    </div>

</body>
</html>
