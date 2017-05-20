<?php
/**
 * Created by PhpStorm.
 * User: LY
 * Date: 2017/5/8
 * Time: 下午7:14
 */

$mysql = new mysqli("localhost","root","123456","driverEpoch");
if(mysqli_connect_errno()){
    die("Unable to connect!").mysqli_connect_error();
}
$mysql->set_charset("utf8");