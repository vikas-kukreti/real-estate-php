<?php
header('Content-Type: application/json; charset=UTF-8');
header('Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With');
include '../../inc/db.conn.php';

try {
    if(!isset($_GET['id']) || $_GET['id'] == '')
        throw new Exception(0);
    $id = (int)trim($_GET['id']);
    $query = 'SELECT * from `properties` WHERE `id`=?';
    $stmt = $db->prepare($query);
    $stmt->execute([$id]);
    $response = new stdClass;
    $response->status = "success";
    $response->details = $stmt->fetch(PDO::FETCH_ASSOC);
    if($response->details == false)
        throw new Exception(1);
    echo json_encode($response);
} catch(Exception $e) {
    if($e->getMessage() == 0)
        echo '{"status": "error", "code":"400", "msg": "Property id not specified!"}';    
    else if($e->getMessage() == 1)
        echo '{"status": "error", "code":"404", "msg": "Property not found!"}';    
    else
        echo '{"status": "error", "code":"500", "msg": "Something went wrong!"}';
}