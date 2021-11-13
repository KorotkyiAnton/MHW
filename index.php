<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="google-site-verification" content="bEt_Lw6XIKQGx7kpSEZil9O9IfmeogU5rtBcVYUQYYg" />
    <link rel="shortcut icon" href="src/favicon.ico" type="image/png">
    <link href="style.css" type="text/css" rel="stylesheet">
    <link rel="shortcut icon" href="src/favicon/favicon1.ico" type="image/png">
    <script src="script.js"></script>
    <title>GAME KOT</title>
</head>
<body onresize="resizeMenuBar()", onload="resizeMenuBar()">

<?php
include "header.php";
?>

    <main id="main">
        <?php
            include "db_conf.php";
            if(!$connection){
                echo 'connection lost';
                exit();
            }
            if(isset($_GET['article_id'])){
                $request = mysqli_query($connection, "
                SELECT id, photo, title, pubdate, views FROM articles WHERE categorie_id='".(int)$_GET['article_id']."'");
            } else {
                $request = mysqli_query($connection, "
                SELECT id, photo, title, pubdate, views FROM articles");
            }
            if(!$request){
                echo 'request lost';
                exit();
            }

            while ($row = $request->fetch_assoc()){?>
                <a class='article_pre' href="article.php?id=<?php echo $row['id']?>">
                    <div class='article_photo'>
                        <img src="<?php echo $row['photo']?>" alt='img'>
                    </div>
                    <div class='article_text'>
                        <div class='article_title'><?php echo htmlspecialchars_decode($row['title'], ENT_QUOTES )?> </div>
                        <div class='article_pubdate'><?php echo $row['pubdate'] ?> </div>
                        <div class='article_views'> <?php echo $row['views']."🕶️"?></div>
                    </div>
                </a>
            <?php }
        ?>
    </main>

    <footer>
        <p>Блог создавался с целью обучения языку php, все авторские тексты, которые я использовал нужны толоько для демонстрации функционала и будут удалены через несколько дней.</p>
        <p>Если вы хотите немедленно удалить статью пишите по адресу: <a href="mailto:antondp750@gmail.com">antondp750@gmail.com</a></p>
        <p>Это бета тест, присутствуют баги, гличи, непрекрытые тупости. Не бейте ногами, пожалуйста. <a href="add_article.php">Добавить статью</a></p>
    </footer>

</body>
</html>