<?php
header('Content-Type: application/json; charset=UTF-8');
header('Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With');
include '../../inc/db.conn.php';

try {
    $query = 'SELECT * from `properties` ORDER BY `id` DESC';
    $stmt = $db->prepare($query);
    $stmt->execute();
    $response = new stdClass;
    $response->status = "success";
    $response->details = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($response);
} catch(Exception $e) {
    echo '{"status": "error", "code":"204", "msg": "Something went wrong!"}';
}