
<div id="table-container">
{if !$action}
<a id="change" href="?page=tables&id={$id}&action=edit" class="btn btn-default">Промени </a>
{else}

<input id="bind" value="Bind" type="button" class="btn btn-default"/>
    <input id="unbind" value="UnBind" type="button" class="btn btn-default" />
    <input id="del" value="Delete" type="button"  class="btn btn-default"/>
    <input id="clr" value="Clear All" type="button" class="btn btn-default"/>
    <input id="copy" value="Copy" type="button" class="btn btn-default" />
    <input id="savechanges" type="button" value="Save changes"  class="btn btn-default"/>
</div>
{/if}
<input id="hidden_id" type="hidden" value={$id}  />
<div class="modal" id="calendar_modal" style="display:none;">
    <div class="modal-dialog" id="login-inside">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" onclick="close_calendar()" aria-hidden="true">×</button>
          <h4 class="modal-title">Calendar</h4>
        </div>
        <div class="modal-body">
        <div id="calendar"></div>

        </div>
      </div>
    </div>
</div>


<div class="row">
    <div class="dvcl col-md-8" id="d1" style="background: url('{$CONFIG_HOST}/{$info.img}') center; background-size:1024px 500px; height: 500px; background-repeat: no-repeat"></div>

<script src="js/lib/Rafael.js"></script>
<script src="js/tables/tables.js"></script>
{if !$action}
                        

<div class="notification col-md-4" >
<div class="modal-header" style=" border:0">  
          <h4 class="modal-title">Намери свободни маси</h4>
        </div>
        <form class="form-inline" role="form">
        <div class="form-group">
        <input type="text" id="filter-date" class="form-control input-sm datepicker"/>
        </div>
        <div class="form-group">
        <input type="text" id="filter-hour" class="form-control input-sm"/>
        </div>
        <div class="form-group">
        <a id="filter_search" value="Search" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></a></div>
        </form>
                        <div class="modal-header" style=" border:0">  
          <h4 class="modal-title">Резервации</h4>
        </div>

        <div class="notification-list">
        {section loop=$notifications name=val}
        	<div class="notification-item" reserve_id="{$notifications[val].id}" date="{$notifications[val].date}" hour="{$notifications[val].hour}" id="not_{$notifications[val].id}">
        	   <span class="msg">{$notifications[val].name} - {$notifications[val].date|date_format:"%Y.%m.%d"} 
               {if $notifications[val].hour} {$notifications[val].hour} часа{/if}</span><a href="javascript:void(0)" class="btn btn-default fright" onclick="remove_notification({$notifications[val].id})">x</a><br />
        	</div>
        {/section}
        </div>
                <div class="modal-header" style=" border:0">  
          <h4 class="modal-title">Направи резервация</h4>
        </div>
        <form role="form" class="form-inline" action="{$CONFIG_HOST}/index.php" method="post">
        
        <div class="form-group"> <input class="datepicker input-sm" name="date" type="text" placeholder="date"/></div>
        <div class="form-group"> <input class="input-sm" name="hour" type="text" placeholder="hour"/></div>
        <div class="form-group"> <input class="input-sm" name="p_count" type="text" placeholder="people count"/></div>
        <div class="form-group"> <input id="" type="submit" value="Save reserve" name="save"  class="btn btn-default"/> </div>
            
            
            
            <input type="hidden" name="page" value="save_reserve">
            <input type="hidden" name="id" value="{$id}">
            <input type="hidden" name="business_id" id="business_id" value="{$business_id.id}">
            <input type="hidden" name="admin" id="business_id" value="1">
            
        </form>

</div>
{/if}
</div>