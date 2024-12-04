<%-- 
    Document   : welcome
    Created on : 3 dic 2024, 10:53:37?p.m.
    Author     : Hector
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #e0f7fa;
            margin: 0;
        }
        .card {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
        }
        .card h2 {
            margin-bottom: 10px;
        }
        .card p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <div class="card">
        <h2>Welcome, ${usuario.firstName} ${usuario.lastName}!</h2>
        <p><strong>Email:</strong> ${usuario.email}</p>
        <p><strong>Gender:</strong> ${usuario.gender}</p>
        <p><strong>Hobbies:</strong> ${usuario.hobbies}</p>
        <p><strong>Source of Income:</strong> ${usuario.sourceOfIncome}</p>
        <p><strong>Income:</strong> ${usuario.income}</p>
        <p><strong>Age:</strong> ${usuario.age}</p>
        <p><strong>Bio:</strong> ${usuario.bio}</p>
    </div>
</body>
</html>

