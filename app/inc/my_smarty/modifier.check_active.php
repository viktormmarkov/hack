<?php
function smarty_modifier_check_active($start, $end)
{
	$start=strtotime($start);
	$end=strtotime($end);
	$now=strtotime(date());
	return $now>$start and $now<$end;
}


?>
