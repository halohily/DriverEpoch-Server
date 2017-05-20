<?php
/**
 * Created by PhpStorm.
 * User: LY
 * Date: 2017/5/8
 * Time: 下午9:20
 */

$username = $_POST['username'];
$password = $_POST['password'];
$data = null;
$isError = false;
$sql = null;

$sql = "SELECT id FROM `users` WHERE username = '$username'";
$sqlResult = $mysql->query($sql);
if (!empty($sqlResult) && mysqli_num_rows($sqlResult)) {
    returnData("用户名已注册", 9001);
} else {
    $sql = null;
    $sql = "INSERT INTO users (username,password) VALUES ('$username','$password')";
    $sqlResult = $mysql->query($sql);
    if (!empty($sqlResult)) {
        returnData("注册成功", 1);
    } else {
        returnData("注册失败", 9000);
    }
}
