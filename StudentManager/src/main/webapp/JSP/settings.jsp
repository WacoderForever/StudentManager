<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Settings - Chinese Language Course</title>
    <link rel="icon" href="https://cdn-icons-png.flaticon.com/512/2921/2921222.png" type="image/png">
    <link rel="stylesheet" type="text/css" href="/CSS/settings.css">
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
            <a href="results.jsp" class="nav-item"><i class="fas fa-chart-bar"></i> Results Management</a>
        </div>
        <div class="settings">
            <a href="#" class="nav-item active"><i class="fas fa-cog"></i> Settings</a>
        </div>
    </div>
    <div class="main-content">
        <div class="content">
            <h1>Settings</h1>
            <div class="card">
                <h3>Account Preferences</h3>
                <form>
                    <div class="form-group">
                        <label for="fullname">Full Name</label>
                        <input type="text" id="fullname" placeholder="Enter your full name">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" id="email" placeholder="Enter your email">
                    </div>
                    <button type="submit" class="save-button">Save Changes</button>
                </form>
            </div>
            <div class="card">
                <h3>Notification Settings</h3>
                <form>
                    <div class="form-group">
                        <label for="notifications">Receive Email Notifications</label>
                        <input type="checkbox" id="notifications" checked>
                    </div>
                    <button type="submit" class="save-button">Update Preferences</button>
                </form>
            </div>
            <div class="card">
                <h3>User Permissions</h3>
                <p>Manage permissions for different user roles.</p>
            </div>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>

