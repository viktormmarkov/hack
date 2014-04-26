<?php
session_start();
include ("inc/config.php");
include ("inc/common.php");
//error_reporting(E_STRICT |E_ALL | E_DEPRECATED);
ini_set("display_errors", 0);

$action=get_param("action");

if($action == "reg_user") Ajax_Register_user();
if($action == "login") Ajax_Login();
if($action == "logout") Ajax_Logout();
if ($action == "save_business") Ajax_Save_business();
if ($action == "get_business") Ajax_Get_business();
if ($action == "save_tables") Ajax_save_table();
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
		$db->execute("insert into users (name,email,username,password,phone) values ('$name','$email','$username','$password','$phone')");
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
		
	$rs=$db->getall("Select businesses.*, types.code as type_code from businesses,types where type_id=types.id $where");

	echo json_encode ($rs);	
		
	}
function Ajax_save_table() {
	global $db, $smarty, $lang;
	global $result, $error;
	global $page, $action;
	echo json_encode ($data);
	$business_id=get_param("business_id")?get_param("business_id") : 1;
	$object=get_param("data");
	$db->execute("Delete from tables where business_id=$business_id");
	for($i=0;$object[$i];$i++) {
		$db->execute("insert into tables (business_id,description,x1,x2,y1,y2) values ($business_id,'".$object[$i]['description']."','".$object[$i]['x1']."','".$object[$i]['x2']."','".$object[$i]['y1']."','".$object[$i]['y2']."')");
	    $data[$i]['sql']="insert into tables (business_id,description,x1,x2,y1,y2) values ($business_id,'".$object[$i]['description']."','".$object[$i]['x1']."','".$object[$i]['x2']."','".$object[$i]['y1']."','".$object[$i]['y2']."')";
		
	}
	$data["success"]=1;
	echo json_encode ($data);	
}
function Ajax_save_reserve() {
	global $db, $smarty, $lang;
	global $result, $error;
	global $page, $action;
	
	$business_id=get_param("business_id");
	$table_id=get_param("table_id");
	$date=get_param("date");
	$time=get_param("time");
	$p_count=get_param("p_count");
	$name=get_param("name");
	$phone=get_param("phone");
	$email=get_param("email");
		$db->execute("insert into reserve (business_id,table_id,date,time,p_count,name,phone,email) values ($business_id,$table_id,'$date','$time','$p_count','$name','$phone','$email')");
	
	$data["success"]=1;
	echo json_encode ($data);	
}
function Ajax_get_reserve() {
	global $db, $smarty, $lang;
	global $result, $error;
	global $page, $action;
	
	$business_id=get_param("business_id");
	$rs=$db->getall("Select * from reserve where business_id=$business_id");
	echo json_encode ($rs);	

}
function Ajax_get_tables() {
	global $db, $smarty, $lang;
	global $result, $error;
	global $page, $action;
	
	$business_id=get_param("business_id");
	$rs=$db->getall("Select * from tables where business_id=$business_id");
	echo json_encode ($rs);
}
?>