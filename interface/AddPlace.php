<?php
/**
 * Created by PhpStorm.
 * User: LY
 * Date: 2017/5/20
 * Time: 下午7:17
 */
$user_id = $_POST['user_id'];
$latitude = $_POST['latitude'];
$longitude = $_POST['longitude'];
$place_name = $_POST['place_name'];
$place_address = $_POST['place_address'];
$sql = null;
$isError = false;

if ($user_id != null && $latitude != null && $longitude != null && $place_name != null && $place_address != null)
{
    $sql = "INSERT INTO historyPlaces (user_id, latitude, longitude, place_name, place_address) VALUES ('$user_id', '$latitude', '$longitude', '$place_name', '$place_address')";
}
else
{
    $isError = true;
}
if ($isError){
    returnMsg("传入参数出错", 9001);
} else {
    $sqlResult = $mysql->query($sql);
    if(!empty($sqlResult))
    {
        returnMsg('添加成功', 1);
    }
    else
    {
        returnMsg('添加失败', 9000);
    }
}