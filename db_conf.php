<?php
$db = array(
    "hostname"=>"127.0.0.1",
    "username"=>"root",
    "password"=>"",
    "database"=>"korotkyianton"
);

$connection = mysqli_connect($db['hostname'], $db['username'], $db['password'], $db['database']);
