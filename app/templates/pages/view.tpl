{$info.name}<br />
{$info.description}<br />

<link href='js/fullcallendar/fullcalendar.css' rel="stylesheet" type="text/css">
<link href='js/fullcallendar/fullcalendar.print.css' rel="stylesheet" type="text/css" media='print'>
<script src='js/fullcallendar/fullcalendar.min.js'></script>

{literal}
<script>

$(function() {
$('#calendar').fullCalendar({
		editable: false,
		firstDay:1,
		allDayDefault: true,
		events:  '/ajax.php?action=reservation&room_id='+$('#action').val()
	});
})
</script>
{/literal}
<input type="hidden" name="action" value="{$action}" id="action">
<div id='calendar'></div>
