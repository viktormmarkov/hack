<div id="table-container">{if !$action}<a id="change" href="?page=tables&id={$id}&action=edit" class="btn btn-default">Промени </a>{else}<input id="bind" value="Bind" type="button" class="btn btn-default"/>    <input id="unbind" value="UnBind" type="button" class="btn btn-default" />    <input id="del" value="Delete" type="button"  class="btn btn-default"/>    <input id="clr" value="Clear All" type="button" class="btn btn-default"/>    <input id="copy" value="Copy" type="button" class="btn btn-default" />    <input id="savechanges" type="button" value="Save changes"  class="btn btn-default"/></div>{/if}<input id="hidden_id" type="hidden" value={$id}  /><div class="row">    <div class="dvcl span6" id="d1" style="background: url('img/simple-home-plan.png') center; background-size:1024px 500px; width: 1024px; height: 500px; background-repeat: no-repeat"></div><script src="js/lib/Rafael.js"></script><script src="js/tables/tables.js"></script>{if !$action}<div class="notification span1" >        {section loop=$notifications name=val}        	<div>        	    <p class="user_name">{$notifications[val].name}<br /></p>        	    <p class="date">{$notifications[val].date}<br /></p>        	    <p class="hour">{$notifications[val].hour}<br /></p>        	</div>        {/section}</div>{/if}</div>