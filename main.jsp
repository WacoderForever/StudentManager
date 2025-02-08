<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Main Page</title>
        <style>
            nav{
                background-color: #f2f2f0;
                padding: 20px;
                width:100px;
                border-radius: 8px;
                box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            }
            nav ul{
                list-style: none;
                padding: 0px;
            }
            nav li{
                margin-bottom: 15px;
            }
            nav a{
                text-decoration: none;
                color:#343a40;
                padding: 10px 15px;
                display: block;
                transition: background-color 0.3s ease,color 0.3s ease;
                border-radius:5px; 
            }
            nav a:hover{
                background-color: #e9ecef;
                color:white;
            }
            nav a:active{
                background-color: #007bff;
                color:white;
            }
            main{
                flex: 1;
                padding: 20px;
                display: flex;
                justify-content: center;
                align-items:center; 
            }
            .dashboard{
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 2px 5px rgba(0,0,0,0.1);
                width: 500px;
            }
            .dashboard h1{
                text-align: center;
            }
            .info{
                margin-bottom: 20px;
            }
            .info h2{
                margin-bottom: 10px;
            }
            info p{
                margin: 0;
            }
            .stats{
                display: flex;
                justify-content: space-around;
            }
            .stats div{
                text-align: center;
            }
            .links{
                display: flex;
                justify-content: center;
                margin-top: 20px;
            }
            .links a{
                display: inline-block;
                padding: 10px 20px;
                margin: 0 10px;
                background-color: #007bff;
                color: white;
                text-decoration: none;
                border-radius: 5px;
            }
            body{
                font-family: sans-serif;
                margin: 0;
                display: flex;
                min-height: 100vh;
            }
        </style>
    </head>
    <body>
        <nav>
            <ul>
                <li> <a href="#">Attendance</a></li>
                <li> <a href="./marks.jsp">Marks</a></li>
                <li><a href="#">Register</a></li>
                <li><a href="#">Search</a></li>
            </ul>
        </nav>
        <main>
            <div class="dashboard">
                <h1>Student Dashboard</h1>
                
                <div class="info-section">
                    <h2>Student Information</h2>
                    <p><strong>Name:</strong>Ahmed Aziz</p>
                    <p><srong>ID:</srong>12345</p>
                    <p><strong>Grade:</strong>35A</p>
                </div>
                <div class="stats">
                    <div>
                        <h2>Attendance</h2>
                        <p>95%</p>
                    </div>
                    <div>
                        <h2>Avg.Grade</h2>
                        <p>88%</p>
                    </div>
                    <div class="info">
                        <h2>Recent Activity</h2>
                        <ul>
                            <li>Submitted Math Assignment</li>
                            <li>English text scheduled</li>
                            <li>Paid fees</li>
                        </ul>
                    </div>
                </div>
                 <div class="links">
                            <a href="#">View Attendance</a>
                            <a href="#">Check Marks</a>
                            <a href="#">Update Registration</a>
                </div>
            </div>
        </main>
    </body>
</html>
