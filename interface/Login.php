<?php
/**
 * Created by PhpStorm.
 * User: LY
 * Date: 2017/5/8
 * Time: 下午9:34
 */
$username = $_POST['username'];
$password = $_POST['password'];
$data = null;
$isError = false;
$sql = null;
$sql = "SELECT id,username,password,nickname,car FROM `users` WHERE username = '$username'";
$sqlResult = $mysql->query($sql);
$isNameError = true;
$isPasswordError = false;
while($row = mysqli_fetch_array($sqlResult)) {
    if ($password == $row['password']) {
            $data['id'] = $row['id'];
            $data['username'] = $row['username'];
            $data['nickname'] = $row['nickname'];
            $data['car'] = $row['car'];
    } else {
        $isPasswordError = true;
    }
    $isNameError = false;
    break;
}

if ($isNameError) {
    returnData("用户名错误", 9002, $data);
} else if ($isPasswordError) {
    returnData("密码错误", 9003, $data);
} else {
    returnData("登录成功", 1, $data);
}
