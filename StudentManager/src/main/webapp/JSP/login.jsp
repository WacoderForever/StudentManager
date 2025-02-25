<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Chinese Language Course</title>
    <link rel="icon" href="https://cdn-icons-png.flaticon.com/512/2921/2921222.png" type="image/png">
    <link rel="stylesheet" type="text/css" href="/CSS/login.css">
</head>
<body>
    <div class="login-container">
        <div class="logo">
            <img src="https://cdn-icons-png.flaticon.com/512/2921/2921222.png" alt="Logo">
            <h2>Course Manager</h2>
        </div>
        <h3>Login</h3>
        <form action="login" method="post">
            <div class="form-group">
                <label for="instructor-id">Instructor ID</label>
                <input type="text" name="instructor-id" placeholder="Enter your instructor ID" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="password" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="login-button">Login</button>
            <a href="#" class="forgot-password">Forgot Password?</a>
        </form>
    </div>
</body>
</html>

