<?php

define('root', $_SERVER['DOCUMENT_ROOT']);

// Include DB Class
require_once(root.'/lib/adodb/adodb.inc.php');
define('CONFIG_DB_SERVER', 'localhost'); // DB SERVER
define("CONFIG_DB_USER",'root'); // DB USERNAME
define('CONFIG_DB_PASSWORD', ''); // DB PASSWORD
define('CONFIG_DB_NAME', 'hackfmi'); // DB NAME
$db = ADONewConnection('mysql');
$db->debug = false;
$db->Connect(CONFIG_DB_SERVER, CONFIG_DB_USER, CONFIG_DB_PASSWORD, CONFIG_DB_NAME);
$ADODB_FETCH_MODE  = ADODB_FETCH_ASSOC;
$ADODB_FORCE_TYPE = ADODB_FORCE_EMPTY;
$db->Execute("set names 'utf8'");

?>