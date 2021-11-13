<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="src/favicon.ico" type="image/png">
    <link href="style.css" type="text/css" rel="stylesheet">
    <meta name="google-site-verification" content="bEt_Lw6XIKQGx7kpSEZil9O9IfmeogU5rtBcVYUQYYg" />
    <link rel="shortcut icon" href="src/favicon/favicon.ico" type="image/png">
    <script src="script.js"></script>
    <title>Добавление статьи</title>
</head>
<body onresize="resizeMenuBar()", onload="resizeMenuBar()">

<?php
include "header.php";
?>

<main id="main">
    <div class="tools_panel" style="display: flex; flex-direction: row">
        <div class="file_buttons" style="display: flex; flex-direction: column; margin-right: 10px">
            <a id="file_button" onclick="fileBtnClick()">Файл</a>
            <div id="sub_file" style="display: none">
                <a id="save-button">Сохранить</a>
            </div>
        </div>

        <div class="insert_buttons" style="display: flex; flex-direction: column; margin-right: 7px">
            <a id="insert_button" onclick="insertBtnClick()">Вставить</a>
            <div id="sub_insert" style="display: none">
                <a id="insert_title" onclick="insertTitle()">Вставить заголовок</a><br>
                <a id="insert_subtitle" onclick="insertSubTitle()">Вставить подзаголовок</a><br>
                <a id="insert_subtitle" onclick="insertText()">Вставить текст</a><br>
                <a id="insert_picture" onclick="insertImg()">Вставить каритнку</a>
            </div>
        </div>
    </div>
    <div id="main_place">
        <span>Вы добавите:</span>
        <div class="write_content">
            <?php
            include "db_conf.php";
            if (!$connection) {
                echo 'connection lost';
                exit();
            }

            $HTML_CONTENT = "";
                if(!empty($_POST)){
                    foreach ($_POST as $key => $part) {
                        if (strstr($key, "subtitle")) {
                            $HTML_CONTENT .= "<h2 style='text-align: left'>" . $part . "</h2>";
                        }
                        if (strstr($key, "h1")) {
                            $HTML_CONTENT .= "<h1 style='text-align: center'>" . $part . "</h1>";
                        }
                        if (strstr($key, "text")) {
                            $HTML_CONTENT .= "<p style='text-align: left; margin-right: 14px'>" . $part . "</p>";
                        }
                        if(!empty($_FILES)){
                            foreach ($_FILES as $file_key => $file){
                                if((int)chunk_split($key,1,"-")==(int)chunk_split($file_key,1,"-")-1){
                                    move_uploaded_file($_FILES[$file_key]['tmp_name'], "uploaded/".$file_key.$_FILES[$file_key]['name']);?>
                                    <?php $HTML_CONTENT.= '<img class="img_in_article" src="uploaded/'.$file_key . $_FILES[$file_key]['name'].'">';
                                }
                            }
                        }
                    }
                    echo $HTML_CONTENT;
                    move_uploaded_file($_FILES["main_photo"]['tmp_name'], "uploaded/main_photo".$_FILES["main_photo"]['name']);
                    $photo_dir = "uploaded/main_photo".$_FILES["main_photo"]['name'];
                    $title = $_POST["main_title"];
                    $cat_id = $_POST["categorie_id"];
                    $HTML_CONTENT = htmlspecialchars($HTML_CONTENT, ENT_QUOTES);
                    $result = mysqli_query($connection, "INSERT INTO articles (photo, title, `text`, categorie_id) VALUES ('$photo_dir', '$title', '$HTML_CONTENT', '$cat_id')");

                    if ($result == false) {
                        print("Произошла ошибка при выполнении запроса");
                    }
                }?>

        </div>
        <form id="work_area" action="add_article.php" method="post" enctype="multipart/form-data">
            <input type="submit" value="Подтвердить">
            <input type="file" name="main_photo">
            <input type="text" name="main_title" placeholder="Write main title">
            <input type="text" name="categorie_id" placeholder="Categorie id">
        </form>
    </div>
</main>

<footer>

</footer>

</body>
</html>