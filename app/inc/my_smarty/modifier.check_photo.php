<?php
function smarty_modifier_check_photo($photo="", $big=false)
{
	global $puuuuut;
	$picture="uploads/".$photo;
	if (!$big) $picture.="_s.jpg"; else  $picture.="_b.jpg";
	

		if (file_exists($puuuuut."/".$picture)) return CONFIG_HOST."/".$picture;
	
	return "";
}


?>
