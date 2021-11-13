<?php
    session_start();
    include "db_conf.php";
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
        $login = '';
        if(isset($_COOKIE['login'])){
            $login = $_COOKIE['login'];
        }
        $result = mysqli_query($connection, "UPDATE user_access_data SET status='1' WHERE login='".$login."'");
        header("Location:index.php");
   } elseif ($_POST['username']=="" or $_POST['userpass']==""){
        $_SESSION['validation']="noReqests";
        header("Location:entry.php");
    } else{
        $_SESSION['validation']="incorrect";
        header("Location:entry.php");
    }

