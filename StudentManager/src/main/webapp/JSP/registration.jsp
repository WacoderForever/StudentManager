<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration - Chinese Language Course</title>
    <link rel="icon" href="https://cdn-icons-png.flaticon.com/512/2921/2921222.png" type="image/png">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .register-container {
            background: white;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 100%;
            max-width: 400px;
            text-align: center;
        }
        .logo {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
        }
        .logo img {
            width: 50px;
            height: 50px;
            margin-right: 10px;
        }
        .logo h2 {
            margin: 0;
            font-size: 24px;
        }
        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }
        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .register-button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .register-button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <div class="logo">
            <img src="https://cdn-icons-png.flaticon.com/512/2921/2921222.png" alt="Logo">
            <h2>Course Manager</h2>
        </div>
        <h3>Register</h3>
        <form>
            <div class="form-group">
                <label for="fullname">Full Name</label>
                <input type="text" id="fullname" placeholder="Enter your full name" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="instructor-id">Instructor ID</label>
                <input type="text" id="instructor-id" placeholder="Enter your instructor ID" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" placeholder="Enter your password" required>
            </div>
            <div class="form-group">
                <label for="confirm-password">Confirm Password</label>
                <input type="password" id="confirm-password" placeholder="Confirm your password" required>
            </div>
            <button type="submit" class="register-button">Register</button>
        </form>
    </div>
</body>
</html>

