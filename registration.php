<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex">
    <title>Регистрация</title>
    <link href="style_entry.css" type="text/css" rel="stylesheet">
    <link rel="shortcut icon" href="images/favicon.ico" type="image/png">

</head>
<body>
<div id="content">
    <div id="login">
        <p style="font-size: 50px; font-weight: bold;">Регистрация</p>
        <form action="reg.php" method="post">
            <p><input id="email" type="email" placeholder="Type your E-mail" name="username"></p>
            <p><input id="email" type="text" placeholder="Type your nickname" name="nickname"></p>
            <p><input id="password" type="password" placeholder="Type your password" name="userpass"></p>
            <a href='login.php' style='text-decoration: none; color: white;'>Войти</a>
            <p><input id="apply" type="submit" value="Ок"></p>
        </form>
        <?php
            include "db_conf.php";
            if (!$connection) {
                echo 'connection lost';
                exit();
            }
            if(!empty($_POST)) {
                $username = $_POST["username"];
                $nickname = $_POST["nickname"];
                $password = password_hash($_POST["userpass"], PASSWORD_DEFAULT);
                $ip = $_SERVER['REMOTE_ADDR'];
                if(is_null($username) and is_null($password) and is_null($nickname))
                    $result = mysqli_query($connection, "INSERT INTO user_access_data (login, password, nickname, ip) VALUES ('$username', '$password', '$nickname', '$ip')");
                header("Location:login.php");
            }
            ?>
    </div>
</div>
</body>
</html>
