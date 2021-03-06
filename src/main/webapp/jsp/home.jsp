<!DOCTYPE html>
<html>

<head>
    <title>Home</title>
    <link rel="stylesheet" href="./css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="./js/script.js"></script>
</head>

<header>
    <div>
        <h1>WELCOME</h1>
    </div>
    <div>
        <div><a href="SignUp">Sign up</a></div>
    </div>
</header>

<main>
    <div id="login">
        <form method="POST" action="ValidateUser">
            <h2>LOGIN</h2>
            <div id="lock-icon"><i class="fa fa-lock"></i></div>
            <div class="form-input"><input type="email" name="email" placeholder="Email" class="form-input-field" onblur="validateEmail(event)" required></div>
            <div class="form-input"><input type="password" name="password" placeholder="Password" class="form-input-field" onblur="validatePassword(event)" required></div>
            <div id="error-message">
             <%
                 String errorMessage = (String) session.getAttribute("errorMessage");
                     if (errorMessage != null) {
             %>
                 <%=errorMessage%>
                     <%
                        session.removeAttribute("errorMessage");
                     }%>
            </div>
            <div class="form-input"><input type="submit" value="Log in" class="form-submit-button"></div>
        </form>
    </div>
</main>

</html>