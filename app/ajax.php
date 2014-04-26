<?php
session_start();
include ("inc/config.php");
include ("inc/common.php");

$action=get_param("action");

if($action == "reg_user") Ajax_Register_user();
if($action == "login") Ajax_Login();
if($action == "logout") Ajax_Logout();
if ($action == "save_business") Ajax_Save_business();
if ($action == "get_business") Ajax_Get_business();
if ($action == "save_table") Ajax_save_table();
if ($action == "save_reserve") Ajax_save_reserve();
if ($action == "get_reserve") Ajax_get_reserve();
if ($action == "get_tables") Ajax_get_tables();

function Ajax_Register_user() {
	global $db, $smarty, $lang;
	global $result, $error;

	$email=get_param("email");
	$name=get_param("name");
	$phone=get_param("phone");
	$username=get_param("username");
	$password=get_param("password");
	if($db->getrow("Select * from users where lcase('username')=lcase(username)")) $error='username exists';
	if (!$error) {
		$db->execute("insert into users (name,family,email,password,group_id,active) values ('$name','$family','$email','$password',5,0)");
		$db->insert_id("id","users");
		$_SESSION['user_info']=$db->getrow("Select * from users where id=$id");
		   $data["success"]=1;

	}
	else $data["success"]=0;
	echo json_encode ($data);


}


function Ajax_Login(){

	global $db, $smarty, $lang;
	global $result, $error;
	global $page, $action;

		$rs2=$db->getrow("select * from users where lcase(email)=lcase('$email') and password='$password' and id=".$rs["id"]);
		if (!$rs2) $data['success']=0;
		else {
			$_SESSION['user_info']=$rs2;
			$data['success']=1;
		}


	echo json_encode ($_SESSION['user_info']);

	}

function Ajax_Save_business() {
	global $db, $smarty, $lang;
	global $result, $error;
	global $page, $action;

	$name=get_param("name");
	$lat=get_param("lat");
	$lon=get_param("lon");
	$description=get_param("description");
	$uid=$_SESSION['user_info']['id'];
	$type=get_param("type");
	$hour=get_param("hour");
	$id=get_param("id");
	if(!$id) {
	    $db->execute("Insert into businesses (user_id) values ($uid)");
	}
	if($id) {
		$photo=$_FILES['photo']['tmp_name'];	
		if($photo) {
				if(file_exists("uploads/".$id."_map.jpg"))unlink ("uploads/".$id."_map.jpg");
				$file="uploads/".$id."_map.jpg";
				move_uploaded_file($photo,  $file);
				exec("convert $file -resize '468x' +repage  $file");
			}
	    $db->execute ("Update businesses set name='$name', lat='$lat', lon='$lon', description='&description', $type='$type', hour='$hour', img='$file' where id=$id");

	}
	}
	function Ajax_Get_business() {
	global $db, $smarty, $lang;
	global $result, $error;
	global $page, $action;
	
	$type=get_param("type");
	$name=get_param("name");
	$where='';
	if($type) $where.=" and type_id=$type";
	if($name) $where.=" and (lcase(name) like lcase('%$name%')";
		
	$rs=$db->getall("Select businesses.*, types.name as type_name from businesses,types where type_id=types.id $where");

	echo json_encode ($rs);	
		
	}

?>