<?php
session_start();
include ("inc/config.php");
include ("inc/common.php");
//error_reporting(E_STRICT |E_ALL | E_DEPRECATED);
ini_set("display_errors", 0);

$action=get_param("action");
$page=get_param("page");
$action = get_param("action");
$id = get_param("id");

if($page == "register") Ajax_Register_user();
if($page == "login") Ajax_Login();
if($page == "logout") Ajax_Logout();
if ($page == "business") Load_business();
if ($page == "get_business") Ajax_Get_business();
if ($page == "save_table") Ajax_save_table();
if ($page == "save_reserve") Ajax_save_reserve();
if ($page == "get_reserve") Ajax_get_reserve();
if ($page == "get_tables") Ajax_get_tables();

$smarty->assign('id', $id);
$smarty->assign('page', $page);
$smarty->assign('user_info', $_SESSION['user_info']);
$smarty->assign('action', $action);
$smarty->assign('error', $error); 
$smarty->assign('result', $result);

$smarty->display('index.tpl');	
 
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


}


function Ajax_Login(){

	global $db, $smarty, $lang;
	global $result, $error;
	global $page, $action;
	$username=get_param("username");
	$password=get_param("password");
		$rs2=$db->getrow("select * from users where lcase(username)=lcase('$username') and password='$password'");
		if (!$rs2) $data['success']=0;
		else {
			$_SESSION['user_info']=$rs2;
			$data['success']=1;
		}



	}

function Load_business() {
	global $db, $smarty, $lang;
	global $result, $error;
	global $page, $action,$id;
	if($action=='edit') {
		$name=get_param("name");
		$lat=get_param("lat");
		$lon=get_param("lon");
		$description=get_param("description");
		$uid=$_SESSION['user_info']['id']?$_SESSION['user_info']['id'] : 1;
		$type=get_param("type");
		$hour=get_param("hour");
		if(!$id) {
			$db->execute("Insert into businesses (user_id) values ($uid)");
			$id=$db->insert_id("businesses","id");
		}
		if($id) {
			$photo=$_FILES['photo']['tmp_name'];	
			if($photo) {
					if(file_exists("uploads/".$id."_map.jpg"))unlink ("uploads/".$id."_map.jpg");
					$file="uploads/".$id."_map.jpg";
					echo $file;
					move_uploaded_file($photo,  $file);
				}
			$db->execute ("Update businesses set name='$name', lat='$lat', lon='$lon', description='".$description."', type_id='$type', hour='$hour', img='$file' where id=$id");
		$page='';
		$result="Successfully saved";
		}
		$info=$db->getrow("Select * from businesses where id=$id");
	}
	$smarty->assign("types",$db->getassoc("Select id,name from types"));
	}
	
function Ajax_Get_business() {
	global $db, $smarty, $lang;
	global $result, $error;
	global $page, $action,$id;
	
	$type=get_param("type");
	$name=get_param("name");
	$where='';
	if($type) $where.=" and type_id=$type";
	if($name) $where.=" and (lcase(name) like lcase('%$name%')";
		
	$rs=$db->getall("Select businesses.*, types.name as type_name from businesses,types where type_id=types.id $where");

	echo json_encode ($rs);	
		
	}
function Ajax_save_table() {
	global $db, $smarty, $lang;
	global $result, $error;
	global $page, $action,$id;
	$save=get_param("save");
	if($save) {
		$business_id=get_param("business_id");
		$description=get_param("description");
		$x1=get_param("x1");
		$x2=get_param("x2");
		$y1=get_param("y1");
		$y2=get_param("y2");
		$db->execute("Delete from tables where business_id=$business_id");
		for($i=0;$description[$i];$i++) {
			$db->execute("insert into tables (business_id,description,x1,x2,y1,y2) values ($business_id,'".$description[$i]."','".$x1[$i]."','".$x2[$i]."',,'".$y1[$i]."','".$y2[$i]."')");
		}
	}
	
}
function Ajax_save_reserve() {
	global $db, $smarty, $lang;
	global $result, $error;
	global $page, $action,$id;
	$save=get_param("save");
	if($save) {
	$business_id=get_param("business_id");
	$table_id=get_param("table_id");
	$date=get_param("date");
	$time=get_param("time");
	$p_count=get_param("p_count");
	$name=get_param("name");
	$phone=get_param("phone");
	$email=get_param("email");
		$db->execute("insert into reserve (business_id,table_id,date,time,p_count,name,phone,email) values ($business_id,$table_id,'$date','$time','$p_count','$name','$phone','$email')");
	
	}
}
function Ajax_get_reserve() {
	global $db, $smarty, $lang;
	global $result, $error;
	global $page, $action,$id;
	
	$business_id=get_param("business_id");
	$rs=$db->getall("Select * from reserve where business_id=$business_id");
	echo json_encode ($rs);	

}
function Ajax_get_tables() {
	global $db, $smarty, $lang;
	global $result, $error;
	global $page, $action,$id;
	
	$business_id=get_param("business_id");
	$rs=$db->getall("Select * from tables where business_id=$business_id");
	echo json_encode ($rs);	
}
?>