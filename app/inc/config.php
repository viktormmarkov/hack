<?php

// Include DB Class
define('root', $_SERVER['DOCUMENT_ROOT']."/rq/app");
require_once(root.'/lib/adodb/adodb.inc.php');
define('CONFIG_DB_SERVER', 'localhost'); // DB SERVER
define("CONFIG_DB_USER",'rq'); // DB USERNAME
define('CONFIG_DB_PASSWORD', 'NiVcX5sHhJ'); // DB PASSWORD
define('CONFIG_DB_NAME', 'rq'); // DB NAME
$db = ADONewConnection('mysql');
$db->debug = false;
$db->Connect(CONFIG_DB_SERVER, CONFIG_DB_USER, CONFIG_DB_PASSWORD, CONFIG_DB_NAME);
$ADODB_FETCH_MODE  = ADODB_FETCH_ASSOC;
$ADODB_FORCE_TYPE = ADODB_FORCE_EMPTY;
$db->Execute("set names 'utf8'");

// Include Smarty Class
require_once (root.'/lib/smarty/libs/Smarty.class.php');
$smarty = new Smarty;
$smarty->addPluginsDir( 'inc/my_smarty');

$smarty->debugging = false;
$smarty->caching = false;

// Include Mail Class


define("CONFIG_HOST","http://hackfmi3.fmi.uni-sofia.bg/rq/app"); // FULL SITE NAME
$smarty->Assign('CONFIG_HOST', CONFIG_HOST);
?>