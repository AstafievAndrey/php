<?php
ini_set("display_s_errors",0);
error_reporting(E_ALL);

include 'config.php';
include 'router.php';

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Credentials: true");
header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Token, X-Requested-With");
header('P3P: CP="CAO PSA OUR"'); // Makes IE to support cookies
header("Content-Type: application/json; charset=utf-8");

spl_autoload_register(function($class){
    include 'classes/'.strtolower($class).'.php';
});

$req = str_replace("/vd/","",filter_input(INPUT_SERVER, "REQUEST_URI"));

if(isset($router[$req])){
    $data = json_decode(file_get_contents('php://input'));//принимаем что придет постом
    include "./src/".$router[$req]["src"];
}else{
    s_error::show("udefined uri");
}