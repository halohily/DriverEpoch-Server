<?php
/**
 * Created by PhpStorm.
 * User: LY
 * Date: 2017/5/20
 * Time: 下午8:15
 */
$order_id = $_POST['id'];
$isError = false;
$sql = null;

if ($order_id != null)
{
    $sql = "SELECT state FROM orders WHERE id = '$order_id'";
}
else
{
    $isError = true;
}
if ($isError){
    returnMsg("传入参数有误",9001);
}
else
{
    $sqlResult = $mysql->query($sql);
    if (!empty($sqlResult))
    {
        $data = null;
        while($row = mysqli_fetch_array($sqlResult)) {
            $data['state'] = $row['state'];
            break;
        }
        returnData("查询成功", 1, $data);
    }
    else{
        returnMsg("查询失败", 9002);
    }
}