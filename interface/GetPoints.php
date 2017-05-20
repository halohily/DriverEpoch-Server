<?php
/**
 * Created by PhpStorm.
 * User: LY
 * Date: 2017/5/21
 * Time: 上午1:02
 */
$user_id = $_POST['user_id'];
$isError = false;
$sql = null;

if ($user_id != null)
{
    $sql = "SELECT id,uid,poi_name,poi_address,points FROM userPoints WHERE user_id = '$user_id' ORDER BY id";
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
            returnData("暂无积分记录", 9000, $data);
        }
        else
        {
            $points_list = null;
            $i = 0;
            $num = mysqli_num_rows($sqlResult);
            while($row = mysqli_fetch_array($sqlResult)) {
                $points_list[$i]['id'] = $row['id'];
                $points_list[$i]['poi_name'] = $row['poi_name'];
                $points_list[$i]['poi_address'] = $row['poi_address'];
                $points_list[$i]['uid'] = $row['uid'];
                $points_list[$i]['points'] = $row['points'];
                $i++;
                if ($i >= $num){
                    break;
                }
            }
            $data['count'] = $i;
            $data['points_list'] = $points_list;
            returnData("ok", 1, $data);
        }
    }
}