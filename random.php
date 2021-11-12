<?php
    session_start();
    $login = "antondp750@gmail.com";
    $password = "assistant";
    $connection = mysqli_connect('127.0.0.1', 'korotkyianton', '2002&2004aA', 'korotkyianton');
    if(!$connection){
        echo 'connection lost';
        exit();
    }
    $request = mysqli_query($connection, "
    SELECT password, login, nickname FROM user_access_data WHERE login = '" . $_POST['username'] . "'");
    if(!$request){
        echo 'request lost';
        exit();
    }

    $row = $request->fetch_assoc();

    if($_POST['username']==$row["login"] and password_verify($_POST['userpass'], $row["password"])){
        $_SESSION['validation']="correct";
        setcookie("login", $row["login"]);
        setcookie("nickname", $row["nickname"]);
        $result = mysqli_query($connection, "UPDATE user_access_data SET status='1' WHERE login='".$_COOKIE['login']."'");
        header("Location:index.php");
   } elseif ($_POST['username']=="" or $_POST['userpass']==""){
        $_SESSION['validation']="noReqests";
        header("Location:entry.php");
    } else{
        $_SESSION['validation']="incorrect";
        header("Location:entry.php");
    }

