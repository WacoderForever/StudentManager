<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Page</title>
        <style>
            body{
                background-color: lightblue;
                font-family: sans-serif;
                font-size: 1.3em;
                padding: 0;
                margin: 0;
                text-align: center;
            }
            .form-container{
                display: flex;
                justify-content: center;
                min-height: 100vh;
                background-color:lightblue;
            }
            form{
                display: flex;
                justify-content: center;
                flex-direction: column;
                align-items: center;
                padding:0;
                border: 1px solid #ccc;
                border-radius: 5px;
                background-color:purple;
                max-height: 300px;
                width: 100%;
                box-shadow: 5px 5px 10px rgba(0,0,0,0.3)
            }
            input,button{
                margin:8px 0;
                width: 200px;
                border-radius: 5px;
                font-size: 1.2em;
                box-sizing: border-box;
            }
            button{
                background: brown;
                font-size: 1.2em;
                color:black;
            }
            
        </style>
    </head>
    <body>
        <h1>Welcome User</h1>
        <div class="form-container">
            <form action="./main.jsp" method="post">
                <p>To login Enter your details below</p>
                <label for="name">User Name:</label>
                <input type="text" name="name" required>
                <label for="pass">Password</label>
                <input type="password" name="pass" id="id" minlength="4">
                <button type="Submit">Login</button>
            </form>
        </div>
    </body>
</html>
