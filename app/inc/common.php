<?php
function get_param($ParamName) {
$param=$_GET[$ParamName];
if (!$param) $param=$_POST[$ParamName];
return $param;}

function is_email ($email) {
	return filter_var($email, FILTER_VALIDATE_EMAIL);
}

function send_email($email,$subject,$body,$file="",$from="",$name="") {
	$mail = new PHPMailer();
    $mail->SetLanguage("en", "lib/phpmailer/language/");
	$mail->Mailer = "mail";
  	$mail->CharSet = "utf-8";
	$mail->IsHTML(true);
	$mail->AddAddress($email);
	if (!$from) $mail->From = $_SESSION['settings']['email']; else $mail->From = $from;
	if (!$from) $mail->Sender = $_SESSION['settings']['email']; else $mail->Sender = $from;
	if (!$name) $mail->FromName = SITE_NAME; else $mail->FromName = $name;
	$mail->Subject = $subject;
	$mail->Body = $body;
	echo $file;
	if ($file) $mail->AddAttachment($file,$file); 
	if ($mail->Send()) return true; else die( $mail->ErrorInfo);// return false;
 }
function savetofile($filename, $mess) {
	$fp = fopen($filename, "a+");
  $write = fputs($fp, $mess);
  fclose($fp);}
  
function get_email_tpl ($title) {
	global $db, $lang;
	$lg=$_SESSION['language'];
	$rs=$db->Getrow("select subject_$lg as subject, info_$lg as info from email_templates where title='$title'");
	return $rs;
}

function get_info ($title) {
	global $db, $lang;
	$lg=$_SESSION['language'];
	$rs=$db->Getrow("select meta_title_$lg as meta_title, meta_description_$lg as meta_description, info_$lg as info from info where title='$title'");
	return $rs;
}



?>