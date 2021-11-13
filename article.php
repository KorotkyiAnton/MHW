<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="src/favicon.ico" type="image/png">
    <meta name="google-site-verification" content="bEt_Lw6XIKQGx7kpSEZil9O9IfmeogU5rtBcVYUQYYg" />
    <link href="style.css" type="text/css" rel="stylesheet">
    <link rel="shortcut icon" href="src/favicon/favicon1.ico" type="image/png">
    <script src="script.js"></script>
    <?php
    include "db_conf.php";
    if(!$connection){
        echo 'connection lost';
        exit();
    }
    $request = mysqli_query($connection, "
            SELECT id, title, pubdate, text, views FROM articles WHERE id=".(int)$_GET['id']);
    if(!$request){
        echo 'request lost';
        exit();
    }
    $article = $request->fetch_assoc();
    $views = (int)$article['views']+1;
    $result = mysqli_query($connection, "UPDATE articles SET views='$views' WHERE id=".(int)$_GET['id']);
    ?>
    <title><?php echo $article

["title"]?></title>
</head>
<body onresize="resizeMenuBar()", onload="resizeMenuBar()">

<?php
    include "header.php";
?>

<main id="main">
    <div class="article_area">
        <?php
            echo $article["pubdate"]."<br>";
            echo htmlspecialchars_decode($article["text"], ENT_QUOTES );
            mysqli_close($connection);
            include "db_conf.php";
            if(!$connection){
                echo 'connection lost';
                exit();
            }
            $request = mysqli_query($connection, "
                        SELECT status, nickname FROM user_access_data WHERE login='".$_COOKIE['login']."'");
            if(!$request){
                echo 'request lost';
                exit();
            }
            $acc = $request->fetch_assoc();
        ?>
    </div>
    <div class="comment_area">
        <?php
        if($acc['status']){?>
        <form action="article.php?id=<?php echo $_GET['id']?>" method="post">
            <input type="text" name="comment" placeholder="Write your comment" class="commet_text"><br>
            <input type="submit" class="comment_aply">
        </form>
        <?php } else{
            echo "<a href='login.php'>Войдите,</a> чтобы писать комментарии.";
        }?>
        <?php
            $request = mysqli_query($connection, "
                            SELECT status, nickname FROM user_access_data WHERE ip='".$_SERVER['REMOTE_ADDR']."'");
            if (!empty($_POST)){
                $author = $_COOKIE['nickname'];
                $comment_text = htmlspecialchars($_POST['comment'], ENT_QUOTES);;
                $art_id =(int)$_GET['id'];
                if(!empty($comment_text)){
                    $result = mysqli_query($connection, "INSERT INTO comments (author, `text`, articles_id) VALUES ('$author', '$comment_text', '$art_id')");
                }
            }
            $request = mysqli_query($connection, "
                SELECT pubdate, author, `text` FROM comments WHERE articles_id='".(int)$_GET['id']."'");
            if(!$request){
                echo 'request lost';
                exit();
            }
            while ($comment = $request->fetch_assoc()){
                echo "<div class='full_comm'><div class='show_comm_pubdate'>".$comment['pubdate']."</div>".
                     "<div class='show_comm_author'>".$comment['author']."</div>".
                     "<p class='show_comm_text'>".strip_tags(htmlspecialchars_decode($comment['text'], ENT_QUOTES ))."</p></div>";
            }
        ?>
    </div>
</main>

<footer>

</footer>

</body>
</html>