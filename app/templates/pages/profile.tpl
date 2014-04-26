{literal}
<script>
function get_regions (obj) {
			$.post(CONFIG_HOST+"/ajax.php", { 
				  'action' : 'get_select',
				  'type' : 'regions',
				  'id' : obj.value,
				   },
				  function(data) {
					$("#city_id").empty();
					var sel = $("#region_id");
					sel.empty();
										
					for (var i=0; i<data.length; i++) {
					  sel.append('<option value="' + data[i].id + '">' + data[i].name + '</option>');
					}
					$("#city_id").append('<option value="' + data[0].id + '">' + data[0].name + '</option>');
				  }, "json");
			
			
		}
function get_cities (obj) {
			$.post(CONFIG_HOST+"/ajax.php", { 
				  'action' : 'get_select',
				  'type' : 'cities',
				  'id' : obj.value,
				   },
				  function(data) {
					var sel = $("#city_id");
					sel.empty();
					for (var i=0; i<data.length; i++) {
					  sel.append('<option value="' + data[i].id + '">' + data[i].name + '</option>');
					}
				  }, "json");
			
			
		}
</script>
{/literal}
<div class="row">
  <div class="col-md-10 col-md-offset-1">
    <div class="row">
      <div class="col-md-12">
        <div class="panel">
          <div class="panel-heading">
            <div class="panel-title"> <span class="glyphicon glyphicon-pencil"></span> {$lang.edit_profile} </div>
            <ul class="nav panel-tabs">
              <li class="active"><a href="#tab1" data-toggle="tab">{$lang.private_data}</a></li>
              <li><a href="#tab2" data-toggle="tab">{$lang.interests}</a></li>
              <li><a href="#tab3" data-toggle="tab">{$lang.secure_data}</a></li>
            </ul>
          </div>
          <div class="panel-body padding-none margin-top-sm">
            <div class="tab-content padding-none border-none">
              <div id="tab1" class="tab-pane active">
                <div class="tab-body">
                <img src="{if $user_info.photo}{$CONFIG_HOST}/uploads/avatars/{$user_info.id}.jpg{else}{if $user_info.sex eq '2'}{$CONFIG_HOST}/img/avatars/default_woman.jpg{else}{$CONFIG_HOST}/img/avatars/default_man.jpg{/if}{/if}" />
                  <form class="form-horizontal" role="form" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                      <label for="form[name]" class="col-lg-2 control-label">{$lang.name}</label>
                      <div class="col-lg-10">
                        <input type="text" id="form[name]" class="form-control" name="form[name]" value="{$user_info.name}">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="form[family]" class="col-lg-2 control-label">{$lang.family}</label>
                      <div class="col-lg-10">
                        <input type="text" id="form[family]" class="form-control" name="form[family]" value="{$user_info.family}">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-md-3 col-lg-2 control-label">{$lang.sex}</label>
                      <div class="col-md-9">
                        <label class="radio-inline">
                        <div class="radio" id="male"><span class="checked">
                          <input class="radio" type="radio" name="form[sex]" id="male" value="1" {if $user_info.sex eq '1'}checked="checked"{/if}>
                          </span></div>
                        {$lang.male}
                        </label>
                        <label class="radio-inline">
                        <div class="radio" id="female"><span>
                          <input class="radio" type="radio" name="form[sex]" id="female" value="2" {if $user_info.sex eq '2'}checked="checked"{/if}>
                          </span></div>
                        {$lang.female}
                        </label>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="datepicker" class="col-lg-2 control-label">{$lang.birth_date}</label>
                      <div class="col-md-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-calendar"></i> </span>
                          <input type="text" id="datepicker" class="form-control datepicker margin-top-none" name="form[birth_date]" value="{$user_info.birth_date}">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="form[country_id]" class="col-lg-2 control-label">{$lang.country}</label>
                      <div class="col-md-10">
                        <select class="form-control" id="form[country_id]" name="form[country_id]" onchange="get_regions(this)">
                          <option value="0">{$lang.choose}</option>
                            {html_options options=$country selected=$user_info.country_id}    

                        </select>
                    </div>
                    </div>
                    <div class="form-group">
                      <label for="region_id" class="col-lg-2 control-label">{$lang.region}</label>
                      <div class="col-md-10">
                        <select class="form-control" id="region_id" name="form[region_id]" onchange="get_cities(this)">
                          <option value="0">{$lang.choose}</option>
                            {html_options options=$regions selected=$user_info.region_id}    

                        </select>
                    </div>
                    </div>
                    <div class="form-group">
                      <label for="city_id" class="col-lg-2 control-label">{$lang.city}</label>
                      <div class="col-md-10">
                        <select class="form-control" id="city_id" name="form[city_id]" >
                          <option value="0">{$lang.choose}</option>
                            {html_options options=$cities selected=$user_info.city_id}    

                        </select>
                    </div>
                    </div>
                    <div class="form-group">
                      <label for="form[post_code]" class="col-lg-2 control-label">{$lang.post_code}</label>
                      <div class="col-lg-10">
                        <input type="text" id="form[post_code]" class="form-control" name="form[post_code]" value="{$user_info.post_code}">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="form[address]" class="col-lg-2 control-label">{$lang.address}</label>
                      <div class="col-lg-5">
                        <input type="text" id="form[address]" class="form-control" name="form[address]" value="{$user_info.address}">
                      </div>
                      <div class="col-lg-2">
                        <input type="text" id="form[address]" class="form-control" name="form[address_number]" value="{$user_info.address_number}">
                      </div>
                       <div class="col-lg-3">
                        <input type="text" id="form[address]" class="form-control" name="form[address_houses]" value="{$user_info.address_houses}">
                      </div>
                   </div>
                    <div class="form-group">
                      <label for="form[post_code]" class="col-lg-2 control-label">{$lang.avatar}</label>
                      <div class="col-lg-10">
                        <input type="file" name="avatar" />
                      </div>
                    </div>
                  <div class="form-group">
                      <label for="form[post_code]" class="col-lg-2 control-label">&nbsp;</label>
                      <div class="col-lg-10">
                    <input type="hidden" name="page" value="{$page}" />
                    <input type="hidden" name="tab" value="1" />
                    <input type="submit" name="save" value="{$lang.save}" class="submit btn btn-blue" />
                    </div>
                  </div>
                  </form>
                </div>
              </div>
              <div id="tab2" class="tab-pane">
                <div class="tab-body">
                  <form action="{$CONFIG_HOST}" method="post" class="form-horizontal">
                 
                  {section loop=$interests name=val}
                   <div class="form-group">
                      <label class="col-md-3 col-lg-8">{$interests[val].name}</label>
                      <div class="col-md-2">
                        <label class="checkbox-inline">
                          <div class="checker" id="checkbox_interests"><span><input class="checkbox" type="checkbox" name="form[{$interests[val].id}]" value="1" {if $users_interests[$interests[val].id]} checked="checked"{/if}></span></div>
                           </label>
                       
                      </div>
                    </div>
                  {/section}
                  <div class="form-group">
                      <div class="col-lg-10">
                    <input type="hidden" name="page" value="{$page}" />
                    <input type="hidden" name="tab" value="2" />
                    <input type="submit" name="save" value="{$lang.save}" class="submit btn btn-blue" />
                    </div>
                  </div>
                  </form>
                  
                  
                </div>
              </div>
              <div id="tab3" class="tab-pane">
                <div class="tab-body">
                  <form action="{$CONFIG_HOST}" method="post" class="form-horizontal">
					<div class="form-group">
                      <label for="form[email]" class="col-lg-2 control-label">{$lang.email}</label>
                      <div class="col-lg-10">
                        <input type="text" id="form[email]" class="form-control" name="form[email]" value="{$user_info.email}">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="old_password" class="col-lg-2 control-label">{$lang.old_password}</label>
                      <div class="col-lg-10">
                        <input type="password" id="old_password" class="form-control" name="old_password" >
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="form[password]" class="col-lg-2 control-label">{$lang.new_password}</label>
                      <div class="col-lg-10">
                        <input type="password" id="form[password]" class="form-control" name="form[password]">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="password_repeat" class="col-lg-2 control-label">{$lang.password_repeat}</label>
                      <div class="col-lg-10">
                        <input type="password" id="password_repeat" class="form-control" name="password_repeat">
                      </div>
                    </div>
                    
                  
                  <div class="form-group">
                      <label for="form[post_code]" class="col-lg-2 control-label">&nbsp;</label>
                      <div class="col-lg-10">
                    <input type="hidden" name="page" value="{$page}" />
                    <input type="hidden" name="tab" value="3" />
                    <input type="submit" name="save" value="{$lang.save}" class="submit btn btn-blue" />
                    </div>
                  </div>
                  </form>
                  
                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

