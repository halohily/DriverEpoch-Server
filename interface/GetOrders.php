<?php
/**
 * Created by PhpStorm.
 * User: LY
 * Date: 2017/5/20
 * Time: 下午9:28
 */
$user_id = $_POST['user_id'];
$isError = false;
$sql = null;
$data = null;
if ($user_id != null)
{
    $sql = "SELECT id,poi_name,poi_address,add_time,state FROM orders WHERE user_id = '$user_id' ORDER BY add_time";
}
else
{
    $isError = true;
}
if ($isError){
    returnMsg('输入参数错误', 9001);
}
else
{
    $sqlResult = $mysql->query($sql);
    if (empty($sqlResult))
    {
        returnData("查询出错", 9002, $data);
    }
    else
    {
        if (mysqli_num_rows($sqlResult) == 0)
        {
            returnData("暂无历史预约", 9000, $data);
        }
        else
        {
            $orders_list = null;
            $i = 0;
            $num = mysqli_num_rows($sqlResult);
            while($row = mysqli_fetch_array($sqlResult)) {
                $orders_list[$i]['id'] = $row['id'];
                $orders_list[$i]['poi_name'] = $row['poi_name'];
                $orders_list[$i]['poi_address'] = $row['poi_address'];
                $orders_list[$i]['add_time'] = $row['add_time'];
                $orders_list[$i]['state'] = $row['state'];
                $i++;
                if ($i >= $num){
                    break;
                }
            }
            $data['count'] = $i;
            $data['orders_list'] = $orders_list;
            returnData("ok", 1, $data);
        }
    }
}