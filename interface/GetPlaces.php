<?php
/**
 * Created by PhpStorm.
 * User: LY
 * Date: 2017/5/20
 * Time: 下午7:53
 */
$user_id = $_POST['user_id'];
$isError = false;
$sql = null;
$data = null;
if ($user_id != null)
{
    $sql = "SELECT add_time,place_name,place_address FROM historyPlaces WHERE user_id = '$user_id' ORDER BY add_time";
    $sqlResult = $mysql->query($sql);
    if (empty($sqlResult))
    {
        returnData("查询出错", 9002, $data);
    }
    else
    {
        if (mysqli_num_rows($sqlResult) == 0)
        {
            returnData("暂无历史足迹", 9000, $data);
        }
        else
        {
            $places_list = null;
            $i = 0;
            $num = mysqli_num_rows($sqlResult);
            while($row = mysqli_fetch_array($sqlResult)) {
                $places_list[$i]['add_time'] = $row['add_time'];
                $places_list[$i]['place_name'] = $row['place_name'];
                $places_list[$i]['place_address'] = $row['place_address'];
                $i++;
                if ($i >= $num){
                    break;
                }
            }
            $data['count'] = $i;
            $data['places_list'] = $places_list;
            returnData("ok", 1, $data);
        }
    }
}