<?php
/**
 * Created by PhpStorm.
 * User: LY
 * Date: 2017/5/20
 * Time: 下午6:25
 */
$uid = $_POST['uid'];
$user_id = $_POST['id'];
$poi_name = $_POST['poi_name'];
$poi_address = $_POST['poi_address'];
$sql = null;
$sql1 = null;
$isError = false;
$data = null;
if ($uid != null && $user_id != null && $poi_name != null && $poi_address != null)
{
    $seed = rand(1, 100);
    if ($seed < 45)
    {
        $sql = "INSERT INTO orders (uid, user_id, poi_name, poi_address, state) VALUES ('$uid', '$user_id', '$poi_name', '$poi_address', 0)";
    }
    else{
        $sql = "INSERT INTO orders (uid, user_id, poi_name, poi_address) VALUES ('$uid', '$user_id', '$poi_name', '$poi_address')";
    }
}
else{
    $isError = true;
}
if ($isError){
    returnMsg("传入参数错误", 9001);
}
else{
    $sqlResult = $mysql->query($sql);
    if (!empty($sqlResult)){
        $sql2 = "SELECT id FROM orders WHERE user_id = '$user_id' AND uid = '$uid' ORDER BY add_time";
        $sqlResult2 = $mysql->query($sql2);
        $i = 0;
        $num = mysqli_num_rows($sqlResult2);
        $list = null;
        while ($row = mysqli_fetch_array($sqlResult2))
        {
            $list[$i] = $row['id'];
            $i++;
            if ($i >= $num){
                break;
            }
        }
        $data['id'] = $list[$i - 1];

        $sql5 = "SELECT * FROM userPoints WHERE user_id = '$user_id' AND uid = '$uid'";
        $sqlResult5 = $mysql->query($sql5);
        $num = mysqli_num_rows($sqlResult5);
        if ($num > 0){
            $point = null;
            while($row = mysqli_fetch_array($sqlResult5)) {
                $point = $row['points'];
                break;
            }
            $point += 10;
            $sql3 = "UPDATE userPoints SET points='$point' WHERE user_id='$user_id' AND uid = '$uid'";
            $sqlResult3 = $mysql->query($sql3);
        }
        else{
            $point = 30;
            $sql4 = "INSERT INTO userPoints (uid, user_id, poi_name, poi_address, points) VALUES ('$uid', '$user_id', '$poi_name', '$poi_address', '$point')";
            $sqlResult4 = $mysql->query($sql4);

        }
        returnData('预约成功', 1, $data);
    }
    else{
        returnMsg("预约失败", 9000);
    }
}