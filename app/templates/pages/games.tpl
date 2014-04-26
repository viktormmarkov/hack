{literal}
<script>
function Save_sex (uid) {
	sex=$('#sex').val();
	$.ajax({type: "POST",
	url: CONFIG_HOST+'/ajax.php',
	data: {action:'save_sex',
	 uid:uid,
	 sex:sex},
	dataType: "json",
	success: function(data){
		$('#choosesex').removeClass('in').css("display","none");
		Enroll_user(data.uid,$('#gid').val(),data.sex);
	}
	});
}
function Register_game(gid,uid){
	$.ajax({type: "POST",
	url: CONFIG_HOST+'/ajax.php',
	data: {action:'register_game',
	 uid:uid,
	 gid:gid},
	dataType: "json",
	success: function(data){
		if(data.success=='1') {
			$('#game_'+gid).removeClass('btn-danger').addClass('btn-success').html('{/literal}{$lang.enrolled}{literal}').attr('disabled','disabled');
			
		}
	}
	});
}

function Save_answer(uid) {
	var gid=$('#gid_q').val();
	var qid=$('#id_q').val();
	var tip=$('#type').val();
	if(tip=='0') {
		var answer = "";
		var selected = $("input[type='radio'][name='answer']:checked");
		if (selected.length > 0) {
			answer = selected.val();
			var type=0;
			if(answer=='text'){
				answer='';
				answer=$('#answer_text').val();
				type=1;
			}
	
			if (answer) {
			$.ajax({type: "POST",
					url: CONFIG_HOST+'/ajax.php',
					data: {action:'save_answers',
					 answer_id:answer,quest_id:qid,type:type},
			dataType: "json",
			success: function(data){
					if(data.success=='1') {
						$('#question').removeClass('in').css("display","none");
						Register_game ($('#gid_q').val(),data.uid);
					}
				}
		});
				
			}
		}
	}
	else {
		var answer = "";
		var success='';
		var answers='';
		var types='';
		$('input:checkbox[id="answer"]:checked').each(function(){
			answer=$(this).attr("value");
			var type=0;
			if(answer=='text') {
				answer='';
				answer=$('#answer_text').val();
		 		type=1;
			}
			
			if (answer) {
			answers+=','+answer;
			types+=','+type;	
			}		 
		 });
		 $.ajax({type: "POST",
					url: CONFIG_HOST+'/ajax.php',
					data: {action:'save_answer',
					 answer_id:answers,quest_id:$('#quest_id').val(),type:types,checkbox:1},
			dataType: "json",
			success: function(data){
					if(data.success=='1') {
						$('#question').removeClass('in').css("display","none");
						Register_game ($('#gid_q').val(),data.uid);

					}
		 }			});

}
}

function Enroll_user(uid,gid,sex)
{
	if(!uid) window.location="google.com";
	else {
	if (!sex) {
		 $('#choosesex').addClass('in').css("display","block");
		 $('#gid').val(gid);
	}
	if (sex) {
		$.ajax({type: "POST",
		url: CONFIG_HOST+'/ajax.php',
		data: {action:'get_question',
		 uid:uid,
		 gid:gid,
		 sex:sex},
		dataType: "json",
		success: function(data){
			$('#question_title').html(data.question);
			$('#answers').html('');
			$('#id').val(data.id);
			$('#id_q').val(data.id);
			$('#type').val(data.type);
			$('#gid').val(data.game_id);
			$('#gid_q').val(data.game_id);
			var list=data.list;
			if(data.type=='0'){
			for(i=0;list[i];i++) 
			$('#answers').append('<div class="form-group"><div class="col-md-9"><label class="radio-inline"><input type="radio" name="answer" id="answer" value="'+list[i]['id']+'"><div class="col-md-6">'+list[i]['answer']+'</div></label></div></div>');
			if(data.manual=='1')
			$('#answers').append('<div class="form-group"><div class="col-md-9"><label class="radio-inline"><input type="radio" name="answer" id="answer" value="text"><div class="col-md-12"><input type="text" name="answer_text" id="answer_text" class="form-control"></div></label></div></div>');
		}	
			else {
				
			for(i=0;list[i];i++) 
			$('#answers').append('<div class="form-group"><div class="col-md-9"><label class="checkbox-inline"><input type="checkbox" name="answer" class="checkbox" id="answer" value="'+list[i]['id']+'"><div class="col-md-6">'+list[i]['answer']+'</div></label></div></div>');
			if(data.manual=='1')
			$('#answers').append('<div class="form-group"><div class="col-md-9"><label class="checkbox-inline"><input type="checkbox" name="answer" id="answer" class="checkbox" value="text"><div class="col-md-12"><input type="text" name="answer_text" id="answer_text" class="form-control"></div></label></div></div>');
			}
			if(data.list) $('#question').addClass('in').css("display","block");
		}
		});
	}
	}
}


</script>
{/literal}
<div class="modal fade" id="choosesex" tabindex="-1" role="dialog" aria-hidden="false">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="$('#choosesex').removeClass('in').css('display','none');">×</button>
        <h4 class="modal-title"> {$lang.please_choose_sex}</h4>
      </div>
      <div class="modal-body">
          <div class="form-group">
                      <label for="standard-list1" class="col-md-3 control-label">{$lang.sex}</label>
                      <div class="col-md-9">
                        <select class="form-control" name="sex" id="sex">
                          <option value="0"> {$lang.choose}</option>
                          <option value="1"> {$lang.male}</option>
                          <option value="2"> {$lang.female}</option>
                        </select>
                      </div>
                    </div>
          </div>
      <div class="modal-footer">
      <input type="hidden" id="gid" />
        <button type="button" class="btn btn-primary" onClick="Save_sex('{$user_info.id}')" data-dismiss="modal">{$lang.save}</button>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="question" tabindex="-1" role="dialog" aria-hidden="false">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="$('#question').removeClass('in').css('display','none');">×</button>
        <h4 class="modal-title" id="question_title"></h4>
      </div>
      <div class="modal-body panel-body"  id="answers">
          <div class="form-group">
                      <label for="standard-list1" class="col-md-3 control-label">{$lang.sex}</label>
                      <div class="col-md-9">
                        <select class="form-control" name="sex" id="sex">
                          <option value="0"> {$lang.choose}</option>
                          <option value="1"> {$lang.male}</option>
                          <option value="2"> {$lang.female}</option>
                        </select>
                      </div>
                    </div>
          </div>
      <div class="modal-footer">
      <input type="hidden" id="gid_q" />
      <input type="hidden" id="id_q" />
      <input type="hidden" id="type" />
        <button type="button" class="btn btn-primary" onClick="Save_answer('{$user_info.id}')" data-dismiss="modal">{$lang.save}</button>
      </div>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-md-12">
    <div id="console-btns">
      <div class="row"> <a href="{$CONFIG_HOST}/page/{$page}/past{if $id}/{$id}{/if}">
        <div class="col-sm-6 col-md-3">
          <div class="console-btn">
            <div class="console-icon divider-right"> <span class="glyphicons glyphicons glyphicons-hdd"></span> </div>
            <div class="console-text">
              <div class="console-title">{$lang.past_games}</div>
            </div>
          </div>
        </div>
        </a><a href="{$CONFIG_HOST}/page/{$page}/current{if $id}/{$id}{/if}">
        <div class="col-sm-6 col-md-3">
          <div class="console-btn">
            <div class="console-icon divider-right"> <span class="glyphicons glyphicons-print"></span> </div>
            <div class="console-text">
              <div class="console-title">{$lang.current_games}</div>
            </div>
          </div>
        </div>
        </a><a href="{$CONFIG_HOST}/page/{$page}/future{if $id}/{$id}{/if}">
        <div class="col-sm-6 col-md-3">
          <div class="console-btn">
            <div class="console-icon divider-right"> <span class="glyphicons glyphicons-security_camera"></span> </div>
            <div class="console-text">
              <div class="console-title">{$lang.future_games}</div>
            </div>
          </div>
        </div>
        </a> </div>
    </div>
  </div>
</div>

<div class="row">
  {section loop=$list2 name=val} 
        <div class="col-sm-6 col-lg-4">
          <div class="panel">
            <div class="panel-heading">
              <div class="panel-title"> <span class="glyphicon glyphicon-cog"></span> {$lang.to} {$list2[val].date_end|date_format:"%d.%m.%Y"} </div>
              <div class="panel-btns pull-right">
                <div class="btn-group">
                  {if !$user_games[$list2[val].id]}{if $list2[val].date_start|check_active:'$list2[val].date_end'}<button type="button" class="btn btn-danger" onClick="Enroll_user('{$user_info.id}','{$list2[val].id}','{$user_info.sex}')" id="game_{$list2[val].id}"> {$lang.enroll}</button>{/if}{else}<button type="button" class="btn btn-success" disabled> {$lang.in_game}</button>{/if}
                </div>
              </div>
            </div>
            <div class="panel-body">
                <a href="{$CONFIG_HOST}/page/game/{$list2[val].id}"><p>Praesent non nibh nisi. Proin eu massa faucibus, volutpat tellus eu, dapibus velit. Sed feugiat risus at velit lobortis porta.</p></a>
            </div>
          </div>
        </div>
        {/section}
  {section loop=$list1 name=val} 
        <div class="col-sm-6 col-lg-4">
          <div class="panel">
            <div class="panel-heading">
              <div class="panel-title"> <span class="glyphicon glyphicon-cog"></span> {$lang.to} {$list1[val].date_end|date_format:"%d.%m.%Y"} </div>
              <div class="panel-btns pull-right">
                <div class="btn-group">
                  {if !$user_games[$list1[val].id]}{if $list1[val].date_start|check_active:'$list1[val].date_end'}<button type="button" class="btn btn-danger" onClick="Enroll_user('{$user_info.id}','{$list1[val].id}','{$user_info.sex}')" id="game_{$list1[val].id}"> {$lang.enroll}</button>{/if}{else}<button type="button" class="btn btn-success" disabled> {$lang.in_game}</button>{/if}
                </div>
              </div>
            </div>
            <div class="panel-body">
                <a href="{$CONFIG_HOST}/page/game/{$list1[val].id}"><p>Praesent non nibh nisi. Proin eu massa faucibus, volutpat tellus eu, dapibus velit. Sed feugiat risus at velit lobortis porta.</p></a>
            </div>
          </div>
        </div>
        {/section}

      </div>
