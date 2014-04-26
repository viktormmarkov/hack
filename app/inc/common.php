<?php
function get_param($ParamName) {
$param=$_GET[$ParamName];
if (!$param) $param=$_POST[$ParamName];
return $param;}




?>