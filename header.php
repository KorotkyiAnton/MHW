<header>
    <!-- Весь хедер, который представлен линией -->
    <div class="header-bar">
        <!-- Левая часть хедера с кнопкой меню -->
        <div class="left">
            <span id="main-logo"><a href="index.php"><img src="src/gamekotmain1.png" alt="logo"></a></span>
            <a class="menu-btn" id="menu-btn" style="display: none;" onclick="menuBtnClick()" href="#">
                <span class="text">≋Меню</span>
            </a>
        </div>

        <!-- Средняя часть хедера с логотипом и основным меню -->
        <div class="center">
            <div class="logo">
                <span id="center-logo" style="display: none;"><a href="index.php"><img style="height: 1.5em" src="src/gamekot.png" alt="logo"></a></span>
            </div>

            <nav class="main-menu" id="main-menu" style = "font-size: 0.89em">
                <div class="main-menu-items">
                    <a class="item" href="index.php?article_id=<?php echo 1?>">
                        <span class="text">Игры</span>
                    </a>
                    <a class="item" href="index.php?article_id=<?php echo 2?>">
                        <span class="text">Книги</span>
                    </a>
                    <a class="item" href="index.php?article_id=<?php echo 3?>">
                        <span class="text">Фильмы</span>
                    </a>
                    <a class="item" href="https://t.me/antondp750">
                        <span class="text">Telegram</span>
                    </a>
                    <a class="item" href="https://www.linkedin.com/in/%D0%B0%D0%BD%D1%82%D0%BE%D0%BD-%D0%BA%D0%BE%D1%80%D0%BE%D1%82%D0%BA%D0%B8%D0%B9-3748a7216/">
                        <span class="text">Про меня</span>
                    </a>
                </div>
        </div>

        <!-- Правая часть хедера с кнопкой войти -->
        <div class="right">
            <span>
                <?php
                    $connection = mysqli_connect('127.0.0.1', 'korotkyianton', '2002&2004aA', 'korotkyianton');
                    if(!$connection){
                        echo 'connection lost';
                        exit();
                    }
                    $request = mysqli_query($connection, "
                            SELECT status FROM user_access_data WHERE login='".$_COOKIE['login']."'");
                    if($request and !empty($row = $request->fetch_assoc())){
                        if($row['status']) {
                            echo "<div style = 'font-size: 1em'>
                                      <span style='color: green;'>●</span>
                                      <a href='entry.php'>⎆</a>
                                  </div>";
                        }
                        
                    }if (!$row['status']) {
                            echo "<div style = 'font-size: 1em'>
                                      <span style='color: red'>●</span>
                                      <a href='entry.php'>⎆</a>
                                  </div>";
                        }
                    ?>
</span>
        </div>
    </div>

    <nav class="side-menu" id="side-menu" style="display: none; overflow: hidden;">
        <div class="side-menu-items" id="side-menu-items">
            <a class="item" href="index.php?article_id=<?php echo 1?>">
                <span class="text">Игры</span>
            </a>
            <a class="item" href="index.php?article_id=<?php echo 2?>">
                <span class="text">Книги</span>
            </a>
            <a class="item" href="index.php?article_id=<?php echo 3?>">
                <span class="text">Фильмы</span>
            </a>
            <a class="item" href="https://t.me/antondp750">
                <span class="text">Telegram</span>
            </a>
            <a class="item" href="https://www.linkedin.com/in/%D0%B0%D0%BD%D1%82%D0%BE%D0%BD-%D0%BA%D0%BE%D1%80%D0%BE%D1%82%D0%BA%D0%B8%D0%B9-3748a7216/">
                <span class="text">Про меня</span>
            </a>
        </div>
    </nav>
</header>
	