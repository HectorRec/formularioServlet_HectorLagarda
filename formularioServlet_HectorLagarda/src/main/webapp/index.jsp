<%-- 
    Document   : index.jsp
    Created on : 3 dic 2024, 10:57:06?p.m.
    Author     : Hector
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Account</title>
    <style>
       body {
    font-family: Arial, sans-serif;
    background-color: #e0f7fa;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.container {
    background: #ffffff;
    width: 600px;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
}

.title-bar {
    text-align: center;
    margin-bottom: 20px;
}

h2 {
    margin: 0;
    font-size: 1.5rem;
}

.form {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

.form-row {
    display: flex;
    justify-content: space-between;
    gap: 10px;
}

.form-group {
    flex: 1;
    display: flex;
    flex-direction: column;
}

label {
    font-size: 0.9rem;
    margin-bottom: 5px;
}

input, select, textarea {
    padding: 10px;
    font-size: 0.9rem;
    border: 1px solid #ccc;
    border-radius: 5px;
}

textarea {
    resize: none;
}

input[type="range"] {
    padding: 0;
}

#income-value {
    display: inline-block;
    margin-left: 10px;
}

.submit-btn {
    background-color: #26c6da;
    color: #fff;
    border: none;
    padding: 10px;
    font-size: 1rem;
    border-radius: 5px;
    cursor: pointer;
}

.submit-btn:hover {
    background-color: #00acc1;
}
    </style>
</head>
<body>
    <div class="container">
        <h1>Create Account</h1>
        <form action="formulario" method="POST">
            <div class="form-group">
                <label for="first-name">First name *</label>
                <input type="text" id="first-name" name="first-name" required>
            </div>
            <div class="form-group">
                <label for="last-name">Last name *</label>
                <input type="text" id="last-name" name="last-name" required>
            </div>
            <div class="form-group">
                <label for="email">Email *</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password *</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirm-password">Confirm Password *</label>
                <input type="password" id="confirm-password" name="confirm-password" required>
            </div>
            <div class="form-group">
                <label>Gender:</label>
                <div class="inline">
                    <input type="radio" id="male" name="gender" value="Male" required>
                    <label for="male">Male</label>
                </div>
                <div class="inline">
                    <input type="radio" id="female" name="gender" value="Female" required>
                    <label for="female">Female</label>
                </div>
            </div>
            <div class="form-group">
                <label>Hobbies:</label>
                <div class="inline">
                    <input type="checkbox" id="music" name="hobbies" value="Music">
                    <label for="music">Music</label>
                </div>
                <div class="inline">
                    <input type="checkbox" id="sports" name="hobbies" value="Sports">
                    <label for="sports">Sports</label>
                </div>
                <div class="inline">
                    <input type="checkbox" id="travel" name="hobbies" value="Travel">
                    <label for="travel">Travel</label>
                </div>
                <div class="inline">
                    <input type="checkbox" id="movies" name="hobbies" value="Movies">
                    <label for="movies">Movies</label>
                </div>
            </div>
            <div class="form-group">
                <label for="income-source">Source of Income</label>
                <select id="income-source" name="income-source">
                    <option value="Employed">Employed</option>
                    <option value="Self-Employed">Self-Employed</option>
                    <option value="Student">Student</option>
                    <option value="Unemployed">Unemployed</option>
                </select>
            </div>
            <div class="form-group slider">
                <label for="income">Income:</label>
                <input type="range" id="income" name="income" min="0" max="100000" step="1000">
                <span id="income-value">20K</span>
            </div>
            <div class="form-group">
                <label for="age">Age:</label>
                <input type="number" id="age" name="age" min="18" required>
            </div>
            <div class="form-group">
                <label for="bio">Bio:</label>
                <textarea id="bio" name="bio" rows="3"></textarea>
            </div>
            <button type="submit" class="btn">Create</button>
        </form>
    </div>
</body>
</html>
