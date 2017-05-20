<?php
/**
 * Created by PhpStorm.
 * User: LY
 * Date: 2017/5/20
 * Time: 下午5:05
 */

function returnData ($msg, $code, $data) {
    $result['msg'] = $msg;
    $result['code'] = $code;
    if ($data) {
        $result['data'] = $data;
    }

    $json = JSON($result);
    echo $json;
}
function returnMsg ($msg, $code) {
    $result['msg'] = $msg;
    $result['code'] = $code;

    $json = JSON($result);
    echo $json;
}