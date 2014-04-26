<div class="row">
{if !$action}
            <div class="col-md-12">
    <div class="panel panel-visible">
      <div class="panel-heading">
        <div class="panel-title hidden-xs"> <span class="glyphicon glyphicon-tasks"></span> {$lang.questions}</div><div class="panel-btns pull-right"> <a href="{$CONFIG_HOST}/page/{$page}/edit" class="btn btn-primary btn-gradient"><i class="fa fa-star-o"></i> {$lang.add_new_question}</a> </div>
      </div>
      <div class="panel-body padding-bottom-none">
        <div id="datatable_wrapper" class="dataTables_wrapper form-inline" role="grid">
          <table class="table table-striped table-bordered table-hover dataTable"  aria-describedby="datatable_info">
            <thead>
              <tr role="row">
                <th class="" role="columnheader" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Editable: activate to sort column ascending">ID</th>
                <th class="" role="columnheader" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Editable: activate to sort column ascending">{$lang.question}</th>
                <th class="" role="columnheader" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Editable: activate to sort column ascending">{$lang.valid_month}</th>
                <th class="" role="columnheader" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Editable: activate to sort column ascending">{$lang.points}</th>
                <th class="" role="columnheader" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Editable: activate to sort column ascending">{$lang.type}</th>
                <th class="" role="columnheader" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Editable: activate to sort column ascending">{$lang.count_answer}</th>
                <th class="" role="columnheader" rowspan="1" colspan="1" aria-label="Actions" >{$lang.options}</th>
              </tr>
            </thead>
            <tbody role="alert" aria-live="polite" aria-relevant="all">
            
            {section loop=$list name=val}
            <tr class="odd">
              <td class=""><span data-original-title="" title="">{$list[val].id}</span></td>
              <td class=""><span data-original-title="" title="">{$list[val].question}</span></td>
              <td class=""><span data-original-title="" title="">{$list[val].valid}</span></td>
              <td class=""><span data-original-title="" title="">{$list[val].points}</span></td>
              <td class=""><span data-original-title="" title="">{if $list[val].type}{$lang.multi_answers}{else}{$lang.one_answer}{/if}</span></td>
              <td class=""><span data-original-title="" title="">{$list[val].answer_count}</span></td>
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
                      <label for="question" class="col-lg-2 control-label">{$lang.question}</label>
                      <div class="col-lg-10">
                        <input type="text" id="question" class="form-control" name="question" value="{$info.question}">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="points" class="col-lg-2 control-label">{$lang.points}</label>
                      <div class="col-md-10">
                          <input type="text" id="points" class="form-control" name="points" value="{$info.points}">
                        </div>
                      </div>
<div class="form-group">
                      <label class="col-md-3 col-lg-2 control-label">{$lang.free_answer}</label>
                      <div class="col-md-9">
                        <label class="checkbox-inline">
                          <div class="checker" id="uniform-inlineCheckbox1"><span><input class="checkbox" type="checkbox" id="manual" name="manual" value="1" {if $info.manual} checked {/if}></span></div>
                           </label>

                      </div>
                    </div>   
                  <div class="form-group">
                      <label class="col-md-3 col-lg-2 control-label">{$lang.answers_type}</label>
                      <div class="col-md-9">
                        <label class="radio-inline">
                          <div class="radio" id="uniform-optionsRadios1"><span><input class="radio" type="radio" name="type" id="type" value="0" {if !$info.type} checked {/if}></span></div>
                          {$lang.one_answer} </label>
                        <label class="radio-inline">
                          <div class="radio" id="uniform-optionsRadios1"><span><input class="radio" type="radio" name="type" id="type" value="1" {if $info.type eq '1'} checked {/if}> </span></div>
                          {$lang.multi_answers} </label>
                      </div>
                    </div>  
                    <div class="form-group">
                      <label for="points" class="col-lg-2 control-label">{$lang.valid_month}</label>
                      <div class="col-md-10">
                          <input type="text" id="valid" class="form-control" name="valid" value="{$info.valid}">
                        </div>
                      </div>
                    <div class="form-group">
                      <label for="points" class="col-lg-2 control-label"><a href="javascript:void(0)" class="btn btn-green" onClick="add_answer()">{$lang.add_new_answer}</a></label>
                      <div class="col-md-10">
                        </div>
                      </div>
  					<div class="form-group">
                      <label for="points" class="col-lg-2 control-label">{$lang.answers}</label>
                      <div class="col-md-10" id="answers">
                      {section loop=$answers name=val}
                      <div id="answer_{$smarty.section.val.index}">
                        <div class="col-lg-5"><input type="text" class="form-control" name="answer[]" value="{$answers[val].answer}"></div>   
                        <div class="col-lg-4 padding-left-sm"><span class="help-block margin-top-sm"><a href="javascript:void(0)" onClick="$('#answer_{$smarty.section.val.index}').remove()"><i class="glyphicons glyphicons-delete"></i> {$lang.delete}</a></span> </div>
                        </div>
                   
                        {/section}
<input type="hidden" id="a_count" value="{$a_count}">
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
{literal}
<script>
function add_answer() {
	var count=$('#a_count');
	var div=$('#answers');
	var f="$('#answer_"+count.val()+"').remove()";
	var answer='<div id="answer_'+count.val()+'"><div class="col-lg-5"><input type="text" class="form-control" name="answer[]"></div><div class="col-lg-4 padding-left-sm"><span class="help-block margin-top-sm"><a href="javascript:void(0)" onClick="'+f+'"><i class="glyphicons glyphicons-delete"></i> {/literal}{$lang.delete}{literal}</a></span> </div> </div>';
	div.append(answer);
	count.val(count.val()+1);

	
	
}


</script>
{/literal}

{/if}

</div>
