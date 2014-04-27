{$info.name}<br />
{$info.description}<br />

<link href='//cdnjs.cloudflare.com/ajax/libs/fullcalendar/1.6.4/fullcalendar.css' rel="stylesheet" type="text/css" media='print'>
<link href='//cdnjs.cloudflare.com/ajax/libs/fullcalendar/1.6.4/fullcalendar.print.css' rel="stylesheet" type="text/css" media='print'>
<script src='//cdnjs.cloudflare.com/ajax/libs/fullcalendar/1.6.4/fullcalendar.min.js'></script>

{literal}
<script>
function set_calemdar(events) {
		$('#calendar').fullCalendar({
			editable: false,
			events: events
		});
	
}
	$(document).ready(function() {
	
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		var events;
			$.ajax({type: "POST",
			url:'ajax.php',
			data: {action:'reservation',
			table_id:1,
			business_id:5},
			dataType: "json",
			success: function(data){
				set_calemdar(data);
			}
			});
		
	});


</script>
{/literal}
<input type="hidden" name="action" value="{$action}" id="action">
<div id='calendar' style="background-color:red"></div>
