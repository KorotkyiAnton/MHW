function resizeMenuBar(){
    if(window.innerWidth<=1536&&window.innerWidth>640){
        document.getElementById("menu-btn").innerHTML="≋Меню";
        document.getElementById("main-logo").style.display="none";
        document.getElementById("menu-btn").style.display="block";
        document.getElementById("center-logo").style.display="block";
        document.getElementById("main-menu").style.display="none";
        document.getElementById("side-menu-items").style.flexDirection = "row";
        document.getElementsByClassName("article_pre")
        var x = document.getElementsByClassName("article_pre")
        var i;
        for (i = 0; i < x.length; i++) {
            x[i].style.width="45%";
            x[i].style.maxWidth="45%";
        }
        document.getElementById("main").style.flexFlow = "row wrap";
    }else if(window.innerWidth<=640){
        document.getElementById("menu-btn").innerHTML="≋";
        document.getElementById("side-menu-items").style.flexDirection = "column";
        document.getElementById("main-menu").style.display="none";
        document.getElementById("main-logo").style.display="none";
        document.getElementById("menu-btn").style.display="block";
        document.getElementById("center-logo").style.display="block";
        var x = document.getElementsByClassName("article_pre")
        var i;
        for (i = 0; i < x.length; i++) {
            x[i].style.width="100%";
            x[i].style.maxWidth="100%";
        }
        document.getElementById("main").style.flexFlow = "column wrap";
    }else{
        document.getElementById("main-logo").style.display= "block";
        document.getElementById("menu-btn").style.display="none";
        document.getElementById("center-logo").style.display="none";
        document.getElementById("main-menu").style.display="block";
        var x = document.getElementsByClassName("article_pre")
        var i;
        for (i = 0; i < x.length; i++) {
            x[i].style.width="45%";
            x[i].style.maxWidth="45%";
        }
        document.getElementById("main").style.flexFlow = "row wrap";
    }
}

let checker = true;
function menuBtnClick(){
    if(checker){
        document.getElementById("side-menu").style.display = "block";
        checker = false;
    }else{
        document.getElementById("side-menu").style.display = "none";
        checker = true;
    }
}

let check_file = true;
function fileBtnClick(){
    if(check_file) {
        document.getElementById("sub_file").style.display = "block";
        check_file = false;
    }else{
        document.getElementById("sub_file").style.display = "none";
        check_file = true;
    }
}

let check_insert = true;
function insertBtnClick(){
    if(check_insert) {
        document.getElementById("sub_insert").style.display = "block";
        check_insert = false;
    }else{
        document.getElementById("sub_insert").style.display = "none";
        check_insert = true;
    }
}

let part_count = 0;

function insertTitle(){
    part_count++;
    document.getElementById("work_area").innerHTML+="<p><input style='width: 100%; height: 150px' type='text' placeholder='Write title here' name='"+part_count+"-h1"+"'></p>";
}

function insertSubTitle(){
    part_count++;
    document.getElementById("work_area").innerHTML+="<p><input style='width: 100%; height: 150px' id='subtitle' type='text' placeholder='Write subtitle here' name='"+part_count+"-subtitle"+"'></p>";
}

function insertText(){
    part_count++;
    document.getElementById("work_area").innerHTML+="<p><input style='width: 100%; height: 150px' type='text' placeholder='Write text here' name='"+part_count+"-text"+"'></p>";
}

function insertImg(){
    part_count++;
    document.getElementById("work_area").innerHTML += "<p><input style='width: 100%; height: 150px' type='file' name='" + part_count + "-img"+ "'></p>";
}