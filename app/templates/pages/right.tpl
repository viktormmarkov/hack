

<div class="row"> {if !$action}

  <div class="col-md-12">
    <div class="panel panel-visible">
      <div class="panel-heading">
        <div class="panel-title hidden-xs"> <span class="glyphicon glyphicon-tasks"></span> {$lang.group_right}</div>
      </div>
      <div class="panel-body padding-bottom-none">
        <div id="datatable_wrapper" class="dataTables_wrapper form-inline" role="grid">
          <table class="table table-striped table-bordered table-hover dataTable"  aria-describedby="datatable_info">
            <thead>
              <tr role="row">
                <th class="" role="columnheader" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Editable: activate to sort column ascending">{$lang.group_name}</th>
                <th class="text-center hidden-xs sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Actions" style="width: 133px;">{$lang.options}</th>
              </tr>
            </thead>
            <tbody role="alert" aria-live="polite" aria-relevant="all">
            
            {section loop=$list name=val}
            <tr class="odd">
              <td class=""><span data-original-title="" title="">{$list[val].name}</span></td>
              <td class="hidden-xs text-center "><div class="btn-group"> <a href="{$CONFIG_HOST}/page/{$page}/{$list[val].id}" class="btn btn-danger btn-gradient"><span class="glyphicons glyphicons-pencil"></span></a> </div></td>
            </tr>
            {/section}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  {else}
  <div class="col-md-8 col-lg-7 col-lg-offset-1">
    <div class="panel">
      <div class="panel-heading">
        <div class="panel-title"> <span class="glyphicon glyphicon-pencil"></span> {$lang.edit_group_right} {$group_name}</div>
      </div>
      <div class="panel-body">
        <form action="{$CONFIG_HOST}" method="post" class="cmxform" role="form">
          {section loop=$list name=val}
          <div class="form-group">
            <div class="checker"> <span>
              <input type="checkbox" class="checkbox"{if $info[$list[val].code]} checked="checked" {/if} name="form[{$list[val].code}]" value="1" id="form[{$list[val].code}]" />
              </span></div>
            <label for="form[{$list[val].code}]">{$list[val].name} </label>
          </div>
          {/section}
          <div class="form-group">
            <input type="hidden" name="page" value="{$page}" />
            <input type="hidden" name="action" value="{$action}" />
            <input type="submit" name="save" value="{$lang.save}" class="submit btn btn-blue" />
          </div>
        </form>
      </div>
    </div>
  </div>

{/if}
</div>
