<?php
/**
 * Created by PhpStorm.
 * User: LY
 * Date: 2017/5/8
 * Time: 下午7:17
 */

header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Headers:x-requested-with,content-type,If-Modified-Since');
header("Content-type: application/json; charset=utf-8");

require "helper/jsonHelper.php";		//json封装
require "helper/sqlHelper.php";
require "helper/common.php";

$PostType = $_POST['if'];
switch($PostType){
    case "Login": require "interface/Login.php"; break;
    case "Register": require "interface/Register.php"; break;
    case "EditNickName": require "interface/EditNickName.php"; break;
    case "EditCar": require  "interface/EditCar.php"; break;
    case "DateOrder": require "interface/DateOrder.php"; break;
    case "CheckOrderState": require "interface/CheckOrderState.php"; break;
    case "GetOrders": require "interface/GetOrders.php"; break;
    case "AddPlace": require "interface/AddPlace.php"; break;
    case "GetPlaces": require "interface/GetPlaces.php"; break;
    case "GetPoints": require "interface/GetPoints.php"; break;
}
