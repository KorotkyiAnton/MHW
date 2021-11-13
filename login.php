<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex">
    <title>Вход</title>
    <link href="style_entry.css" type="text/css" rel="stylesheet">
    <link rel="shortcut icon" href="images/favicon.ico" type="image/png">

</head>
<body>
<div id="content">
    <div id="login">
        <p style="font-size: 50px; font-weight: bold;">Вход</p>
        <form action="random.php" method="post">
            <p><input id="email" type="email" placeholder="Type your E-mail" name="username"></p>
            <p><input id="password" type="password" placeholder="Type your password" name="userpass"></p>
            <p><input id="apply" type="submit" value="Войти"></p>
            <a href='index.php' style='text-decoration: none; color: white'>На главную</a>
        </form>
        <?php
            $login = "";
            include "db_conf.php";
            if(!$connection){
                echo 'connection lost';
                exit();
            }
            if(isset($_COOKIE['login'])){
                $login = $_COOKIE['login'];
            }
            $request = mysqli_query($connection, "
                                SELECT status FROM user_access_data WHERE login='".$login."'");
            if($request and $row = $request->fetch_assoc()) {
                if($row['status']){
                    $result = mysqli_query($connection, "UPDATE user_access_data SET status='0' WHERE login='".$login."'");
                    header("Location:index.php");
                }
            }

            session_start();
            if(empty($_SESSION)){
                echo "<p id='message'>Нет аккаунта? <a href='registration.php' style='text-decoration: none; color: white'>Зарегистрируйтесь!</a></p>";
            } else {
                switch ($_SESSION['validation']) {
                    case "correct":
                        $_SESSION['validation'] = "noReqests";
                        echo "<p id='rightdata'>Рады вас видеть</p>";
                        session_destroy();
                        break;
                    case "noReqests":
                        $_SESSION['validation'] = "noReqests";
                        echo "<p id='message'>Нет аккаунта? <a href='registration.php' style='text-decoration: none; color: white'>Зарегистрируйтесь!</a></p>";
                        session_destroy();
                        break;
                    case "incorrect":
                        $_SESSION['validation'] = "noReqests";
                        echo "<p id='wrongdata'>Неверный логин или пароль</p>";
                        session_destroy();
                        break;
                }
            }
        ?>
    </div>
</div>
</body>
</html>
