<?php
/**
 * Created by PhpStorm.
 * User: LY
 * Date: 2017/5/20
 * Time: 下午6:09
 */
$id = $_POST['id'];
$nickname = $_POST['nickname'];
$data= null;
$sql= null;
$isError = false;

if($id!=null)
{
    $sql="UPDATE users SET nickname='$nickname' WHERE id='$id'";
}
else
{
    $isError=true;
}
if($isError)
{
    returnMsg("传入参数有误",9001);
}
else
{
    $sqlResult  = $mysql->query($sql);
    if (!empty($sqlResult)) {
        returnMsg("修改成功",1);
    } else {
        returnMsg("修改失败",9002);
    }
}