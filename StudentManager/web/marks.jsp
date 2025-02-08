<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Enter Marks</title>
    </head>
    <body>
        <h1>Enter Marks</h1>
        <form action="#" method="post">
            Student ID:<input type="text" id="student_id"><br>
            Subject:<select>
                <option>Maths 212</option>
                <option>Comp 360</option>
                <option>Econ 345</option>
            </select><br>
            Marks:<input type="text" name="marks"><br>
            <button type="submit">Submit</button>
        </form>
    </body>
</html>