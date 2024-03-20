<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOC TYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    form {
        max-width: 400px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    label {
        display: block;
        margin-bottom: 5px;
        color: #333;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        border: none;
        border-radius: 4px;
        color: #fff;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    </style>

</head>
<body>
    <h1>Mediator Login Form</h1>
    <form:form action="/loginMediator" modelAttribute="mediator">
        <input type="hidden" name="mid" value="${mid}">
        <label for="username">Username:</label>
        <form:input path="username" id="username" required="true" /><br/><br/>

        <label for="password">Password:</label>
        <form:password path="password" id="password" required="true" /><br/><br/>

        <input type="submit" value="Login">
    </form:form>
</body>
</html>
