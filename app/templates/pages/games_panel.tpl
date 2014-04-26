

<div class="row"> {if !$action}

  <div class="col-md-12">
    <div class="panel panel-visible">
      <div class="panel-heading">
        <div class="panel-title hidden-xs"> <span class="glyphicon glyphicon-tasks"></span> {$lang.games}</div><div class="panel-btns pull-right"> <a href="{$CONFIG_HOST}/page/{$page}/edit" class="btn btn-primary btn-gradient"><i class="fa fa-star-o"></i> {$lang.add_new_game}</a> </div>
      </div>
      <div class="panel-body padding-bottom-none">
        <div id="datatable_wrapper" class="dataTables_wrapper form-inline" role="grid">
          <table class="table table-striped table-bordered table-hover dataTable"  aria-describedby="datatable_info">
            <thead>
              <tr role="row">
                <th class="" role="columnheader" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Editable: activate to sort column ascending">ID</th>
                <th class="" role="columnheader" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Editable: activate to sort column ascending">{$lang.begin}</th>
                <th class="" role="columnheader" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Editable: activate to sort column ascending">{$lang.end}</th>
                <th class="" role="columnheader" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Editable: activate to sort column ascending">{$lang.name}</th>
                <th class="" role="columnheader" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Editable: activate to sort column ascending">{$lang.enrolled}</th>
                <th class="" role="columnheader" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Editable: activate to sort column ascending">{$lang.winners}</th>
                <th class="" role="columnheader" rowspan="1" colspan="1" aria-label="Actions" >{$lang.options}</th>
              </tr>
            </thead>
            <tbody role="alert" aria-live="polite" aria-relevant="all">
            
            {section loop=$list name=val}
            <tr class="odd">
              <td class=""><span data-original-title="" title="">{$list[val].id}</span></td>
              <td class=""><span data-original-title="" title="">{$list[val].date_start|date_format:'%d-%m-%Y'}</span></td>
              <td class=""><span data-original-title="" title="">{$list[val].date_end|date_format:'%d-%m-%Y'}</span></td>
              <td class=""><span data-original-title="" title="">{$list[val].name}</span></td>
              <td class=""><span data-original-title="" title="">{$list[val].count}</span></td>
              <td class=""><span data-original-title="" title=""><a href="{$CONFIG_HOST}/page/winners/{$list[val].id}">{$lang.winners}</a></span></td>
              <td class="hidden-xs text-center ">

              <div class="btn-group"> <a href="{$CONFIG_HOST}/page/{$page}/edit/{$list[val].id}" class="btn btn-green btn-gradient"><span class="glyphicon glyphicons-pencil"></span></a><a href="{$CONFIG_HOST}/page/{$page}/delete/{$list[val].id}" class="btn btn-danger btn-gradient"><span class="glyphicon glyphicon-trash"></span></a> </div></td>
            </tr>
            {/section}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  {/if}
  {if $action eq 'edit'}
  <div class="col-md-12">
    <div class="panel">
      <div class="panel-heading">
        <div class="panel-title"> <span class="glyphicon glyphicon-pencil"></span> {$lang.add_edit_game}</div>
      </div>
      <div class="panel-body">
<form class="form-horizontal" role="form" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                      <label for="form[name]" class="col-lg-2 control-label">{$lang.name}</label>
                      <div class="col-lg-10">
                        <input type="text" id="form[name]" class="form-control" name="form[name]" value="{$info.name}">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="form[date_start]" class="col-lg-2 control-label">{$lang.begin}</label>
                      <div class="col-md-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-calendar"></i> </span>
                          <input type="text" id="form[date_start]" class="form-control datepicker margin-top-none" name="form[date_start]" value="{$info.date_start}">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="form[date_end]" class="col-lg-2 control-label">{$lang.end}</label>
                      <div class="col-md-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-calendar"></i> </span>
                          <input type="text" id="form[date_end]" class="form-control datepicker margin-top-none" name="form[date_end]" value="{$info.date_end}">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="form[win]" class="col-lg-2 control-label">{$lang.get_price}</label>
                      <div class="col-md-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-calendar"></i> </span>
                          <input type="text" id="form[win]" class="form-control datepicker margin-top-none" name="form[win]" value="{$info.win}">
                        </div>
                      </div>
                    </div>
                    {if $user_info.group_id eq '1'}
                    <div class="form-group">
                      <label for="form[client_id]" class="col-lg-2 control-label">{$lang.game_is_from}</label>
                      <div class="col-md-10">
                        <select class="form-control" id="form[client_id]" name="form[client_id]" >
                          <option value="0">{$lang.choose}</option>
                            {html_options options=$sponsors selected=$info.client_id}    

                        </select>
                    </div>
                    </div>
                    {/if}
                    <div class="form-group">
                      <label for="form[url_text]" class="col-lg-2 control-label">{$lang.url_text}</label>
                      <div class="col-lg-10">
                        <input type="text" id="form[url_text]" class="form-control" name="form[url_text]" value="{$info.url_text}">
                      </div>
                    </div>
                    
                    
                    <div class="form-group">
                      <label for="form[url]" class="col-lg-2 control-label">URL</label>
                      <div class="col-lg-10">
                        <input type="text" id="form[url]" class="form-control" name="form[url]" value="{$info.url}">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="form[winner_count]" class="col-lg-2 control-label">{$lang.winner_count}</label>
                      <div class="col-lg-10">
                        <input type="text" id="form[winner_count]" class="form-control" name="form[winner_count]" value="{$info.winner_count}">
                      </div>
                   </div>
                    <div class="form-group">
                      <label for="form[info]" class="col-lg-2 control-label">{$lang.content}</label>
                      <div class="col-lg-10">
                  <textarea class="ckeditor editor1"  id="info" name="form[info]" rows="14">{$info.info}</textarea>
                  </div>
                  </div>
                    <div class="form-group">
                      <label for="form[terms]" class="col-lg-2 control-label">{$lang.terms}</label>
                      <div class="col-lg-10">
                  <textarea class="ckeditor editor1"  id="terms" name="form[terms]" rows="14">{$info.terms}</textarea>
                  </div>
                  </div>
                    <div class="form-group">
                      <label for="form[winner_info]" class="col-lg-2 control-label">{$lang.no_winner_info}</label>
                      <div class="col-lg-10">
                  <textarea class="ckeditor editor1"  id="winner_info" name="form[winner_info]" rows="14">{$info.winner_info}</textarea>
                  </div>
                  </div>
                    <div class="form-group">
                      <label for="form[winner_email]" class="col-lg-2 control-label">{$lang.winner_email}</label>
                      <div class="col-lg-10">
                  <textarea class="ckeditor editor1"  id="winner_email" name="form[winner_email]" rows="14">{$info.winner_email}</textarea>
                  </div>
                  </div>
                    <div class="form-group">
                      <label class="col-lg-2 control-label">{$lang.sliders}</label>
                      <div class="col-lg-10">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-lg-2 control-label">1</label>
                      <div class="col-lg-10">
                        <input type="file" name="slider1" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-lg-2 control-label">2</label>
                      <div class="col-lg-10">
                        <input type="file" name="slider2" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-lg-2 control-label">{$lang.banners}</label>
                      <div class="col-lg-10">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-lg-2 control-label">468х60</label>
                      <div class="col-lg-10">
                        <input type="file" name="banner468" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-lg-2 control-label">300x250</label>
                      <div class="col-lg-10">
                        <input type="file" name="banner300" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-lg-2 control-label">160x600</label>
                      <div class="col-lg-10">
                        <input type="file" name="banner160" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-lg-2 control-label">728x90</label>
                      <div class="col-lg-10">
                        <input type="file" name="banner728" />
                      </div>
                    </div>
                  <div class="form-group">
                      <label for="form[post_code]" class="col-lg-2 control-label">&nbsp;</label>
                      <div class="col-lg-10">
                    <input type="hidden" name="page" value="{$page}" />
                    <input type="hidden" name="action" value="{$action}" />
                    <input type="hidden" name="id" value="{$id}" />
                    <input type="submit" name="save" value="{$lang.save}" class="submit btn btn-blue" />
                    </div>
                  </div>
                  </form>      
                  </div>
    </div>
  </div>
<script type="text/javascript" src="{$CONFIG_HOST}/js/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="{$CONFIG_HOST}/js/ckeditor/ckfinder/ckfinder.js"></script>

 {literal}
<script language="javascript">
//<![CDATA[
 
 
    editor = CKEDITOR.replace( 'info',
    {
    height:"291", width:"100%",	
    });
   CKFinder.setupCKEditor( editor, 'js/ckeditor/ckfinder/' ) ;

    editor = CKEDITOR.replace( 'terms',
    {
    height:"291", width:"100%",	
    });
   CKFinder.setupCKEditor( editor, 'js/ckeditor/ckfinder/' ) ;

    editor = CKEDITOR.replace( 'winner_info',
    {
    height:"291", width:"100%",	
    });
   CKFinder.setupCKEditor( editor, 'js/ckeditor/ckfinder/' ) ;

    editor = CKEDITOR.replace( 'winner_email',
    {
    height:"291", width:"100%",	
    });
   CKFinder.setupCKEditor( editor, 'js/ckeditor/ckfinder/' ) ;

  //]]>
</script> 

{/literal}
{/if}
</div>
