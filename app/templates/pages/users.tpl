<div class="panel-group accordion margin-top-lg" id="accordion1">
                <div class="panel">
                  <div class="panel-heading"> <a class="accordion-toggle {if $list} collapsed {/if}" data-toggle="collapse" data-parent="#accordion1" href="#accord1_1">
                    <div class="accordion-toggle-icon"> <i class="fa fa-minus-square-o"></i> <i class="fa fa-plus-square-o"></i> </div>
                    {$lang.filter} </a> </div>
                  <div id="accord1_1" class="panel-collapse collapse{if !$list} in{/if}">
                    <div class="panel-body"> 

<form class="form-horizontal" role="form" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                      <label for="name" class="col-lg-2 control-label">{$lang.name}</label>
                      <div class="col-lg-10">
                        <input type="text" id="name" class="form-control" name="name" value="{$info.name}">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="email" class="col-lg-2 control-label">{$lang.email}</label>
                      <div class="col-lg-10">
                        <input type="text" id="email" class="form-control" name="email" value="{$info.email}">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-md-3 col-lg-2 control-label">{$lang.sex}</label>
                      <div class="col-md-9">
                        <label class="radio-inline">
                        <div class="radio" id="male"><span class="checked">
                          <input class="radio" type="radio" name="sex" id="male" value="1" {if $info.sex eq '1'}checked="checked"{/if}>
                          </span></div>
                        {$lang.male}
                        </label>
                        <label class="radio-inline">
                        <div class="radio" id="female"><span>
                          <input class="radio" type="radio" name="sex" id="female" value="2" {if $info.sex eq '2'}checked="checked"{/if}>
                          </span></div>
                        {$lang.female}
                        </label>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="from_age" class="col-lg-2 control-label">{$lang.from_age}</label>
                      <div class="col-lg-10">
                        <input type="text" id="from_age" class="form-control" name="from_age" value="{$info.from_age}">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="to_age" class="col-lg-2 control-label">{$lang.to_age}</label>
                      <div class="col-lg-10">
                        <input type="text" id="to_age" class="form-control" name="to_age" value="{$info.to_age}">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="from_date" class="col-lg-2 control-label">{$lang.from_date}</label>
                      <div class="col-md-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-calendar"></i> </span>
                          <input type="text" id="datepicker" class="form-control datepicker margin-top-none" name="from_date" value="{$info.from_date}">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="to_date" class="col-lg-2 control-label">{$lang.to_date}</label>
                      <div class="col-md-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-calendar"></i> </span>
                          <input type="text" id="datepicker" class="form-control datepicker margin-top-none" name="to_date" value="{$info.to_date}">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="country_id" class="col-lg-2 control-label">{$lang.country}</label>
                      <div class="col-md-10">
                        <select class="form-control" id="country_id" name="country_id" onchange="get_regions(this)">
                          <option value="0">{$lang.choose}</option>
                            {html_options options=$country selected=$info.country_id}    

                        </select>
                    </div>
                    </div>
                    <div class="form-group">
                      <label for="region_id" class="col-lg-2 control-label">{$lang.region}</label>
                      <div class="col-md-10">
                        <select class="form-control" id="region_id" name="region_id" onchange="get_cities(this)">
                          <option value="0">{$lang.choose}</option>
                            {html_options options=$regions selected=$info.region_id}    

                        </select>
                    </div>
                    </div>
                    <div class="form-group">
                      <label for="city_id" class="col-lg-2 control-label">{$lang.city}</label>
                      <div class="col-md-10">
                        <select class="form-control" id="city_id" name="city_id" >
                          <option value="0">{$lang.choose}</option>
                            {html_options options=$cities selected=$info.city_id}    

                        </select>
                    </div>
                    </div>

                    <div class="form-group">
                      <label for="interests" class="col-md-3 col-lg-2 control-label">{$lang.interests}</label>
                      <div class="col-md-9">
                        <label class="checkbox-inline">
                          <div class="checker" id="checkbox_interests"><span><input class="checkbox" type="checkbox" name="interests[{$interests[0].id}]" value="1" {if $info.interests[$interests[0].id]} checked="checked"{/if}></span></div>{$interests[0].name}
                           </label>
                      </div>
                      </div>
{section loop=$interests name=val start=1}
                    <div class="form-group">
                      <label for="interests" class="col-md-3 col-lg-2 control-label">&nbsp;</label>
                      <div class="col-md-9">
                        <label class="checkbox-inline">
                          <div class="checker" id="checkbox_interests"><span><input class="checkbox" type="checkbox" name="interests[{$interests[val].id}]" value="1" {if $info.interests[$interests[val].id]} checked="checked"{/if}></span></div>{$interests[val].name}
                           </label>
                      </div>
                      </div>                  {/section} 
                  <div class="form-group">
                      <label for="form[post_code]" class="col-lg-2 control-label">&nbsp;</label>
                      <div class="col-lg-10">
                    <input type="hidden" name="page" value="{$page}" />
                    <input type="submit" name="search" value="{$lang.search}" class="submit btn btn-blue" />
                    </div>
                  </div>
                  </form>

</div>
                  </div>
                </div>
                
                
              </div>
{if $list}
<div class="row">
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <span class="glyphicon glyphicon-list-alt"></span> {$lang.users} </div>
                  <div class="panel-btns pull-right"> {$lang.finded_user} - {$count} </div>
                    
                </div>
                {if $user_r.access_all_users}
                <div class="panel-body">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>ID</th>
                        <th>{$lang.registered}</th>
                        <th>{$lang.actived}</th>
                        <th>{$lang.country}</th>
                        <th>{$lang.city}</th>
                        <th>{$lang.name}</th>
                        <th>{$lang.email}</th>
                        <th>{$lang.address}</th>
                        <th>{$lang.sex}</th>
                        <th>{$lang.birth_date}</th>
                      </tr>
                    </thead>
                    <tbody>
                    {section loop=$list name=val}
                      <tr>
                        <td>{$list[val].id}</td>
                        <td>{$list[val].datein|date_format:'%d-%m-%Y'}</td>
                        <td>{$list[val].active}</td>
                        <td>{$list[val].country}</td>
                        <td>{$list[val].city}</td>
                        <td>{$list[val].name} {$list[val].family}</td>
                        <td>{$list[val].email}</td>
                        <td>{$list[val].address}</td>
                        <td>{if $list[val].sex eq '1'} {$lang.male} {/if}{if $list[val].sex eq '2'} {$lang.female} {/if}</td>
                        <td>{$list[val].birth_date|date_format:'%d-%m-%Y'}</td>
                      </tr>
                      {/section}
                    </tbody>
                  </table>
                </div>
                {/if}
              </div>
            </div>
</div>
{/if}