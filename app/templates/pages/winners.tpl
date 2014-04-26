<div class="row">
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <span class="glyphicon glyphicon-list-alt"></span> {$lang.winners} - {$game_name} </div>
                </div>
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
              </div>
            </div>
</div>