<?php

/* db credentials */

define('DB_HOST','localhost');
define('DB_USER','root');
define('DB_PASS','');
define('DB_NAME','real_estate');

try {
    $db = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS);
}
catch (PDOException $e) {
    exit('{"status": "error", "code": 503, "msg": "Cannot Connect with Database!"}');
}