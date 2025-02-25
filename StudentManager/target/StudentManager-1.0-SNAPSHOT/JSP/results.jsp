<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Results Management - Chinese Language Course</title>
    <link rel="icon" href="https://cdn-icons-png.flaticon.com/512/2921/2921222.png" type="image/png">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            display: flex;
            height: 100vh;
            margin: 0;
        }
        .sidebar {
            width: 250px;
            background-color: #007bff;
            color: white;
            padding: 20px;
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .logo {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }
        .logo img {
            width: 40px;
            height: 40px;
            margin-right: 10px;
        }
        .logo h2 {
            margin: 0;
            font-size: 20px;
        }
        .nav-item {
            display: flex;
            align-items: center;
            color: white;
            text-decoration: none;
            padding: 10px 0;
            margin: 10px 0;
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
        }
        .nav-item i {
            margin-right: 10px;
            font-size: 18px;
        }
        .nav-item.active {
            background-color: #0056b3;
            font-weight: bold;
        }
        .nav-item:hover {
            background-color: #004494;
        }
        .content {
            flex: 1;
            padding: 20px;
        }
        .card {
            background: white;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin-bottom: 20px;
        }
        .settings {
            margin-top: auto;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <div>
            <div class="logo">
                <img src="https://cdn-icons-png.flaticon.com/512/2921/2921222.png" alt="Logo">
                <h2>Course Manager</h2>
            </div>
            <a href="dashboard.jsp" class="nav-item"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
            <a href="attendance.jsp" class="nav-item"><i class="fas fa-calendar-check"></i> Attendance Management</a>
            <a href="#" class="nav-item active"><i class="fas fa-chart-bar"></i> Results Management</a>
        </div>
        <div class="settings">
            <a href="settings.jsp" class="nav-item"><i class="fas fa-cog"></i> Settings</a>
        </div>
    </div>
    <div class="content">
        <h1>Results Management</h1>
        <div class="card">
            <h3>Add Results</h3>
            <p>Enter and update exam scores for students.</p>
        </div>
        <div class="card">
            <h3>Results Overview</h3>
            <p>View student performance and generate reports.</p>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>

