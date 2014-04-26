
<div class="row"> {if !$id}
  <div class="col-md-10 col-md-offset-1">
    <div class="progress hidden">
      <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>
    </div>
    <div class="panel">
      <div class="panel-heading">
        <div class="panel-title"> <span class="glyphicon glyphicon-flash"></span> {$info.name} </div>
      </div>
      <div class="panel-body"> <img src="http://i00.i.aliimg.com/img/pb/184/056/872/872056184_247.jpg"> {$info.info}
      <div class="clear">
        {if !$user_games[$info.id]}{if $info.date_start|check_active:'$info.date_end'}
        <button type="button" class="btn btn-danger btn-lg" onClick="Enroll_user('{$user_info.id}','{$info.id}','{$user_info.sex}')" id="game_{$info.id}"> {$lang.enroll}</button>
        {/if}{else}
        <button type="button" class="btn btn-success btn-lg" disabled> {$lang.in_game}</button>
        {/if} </div></div>
      <a href="{$CONFIG_HOST}/page/{$page}/{$action}/terms">{$lang.terms}</a>
      <div class="panel-heading">
        <div class="panel-title"> <span class="glyphicon glyphicon-flash"></span> {$lang.game_sponsored} </div>
      </div>
      <div class="panel-body"> {section loop=$list name=val}
        <div class="col-sm-6 col-lg-4">
          <div class="panel">
            <div class="panel-heading">
              <div class="panel-title"> <span class="glyphicon glyphicon-cog"></span> {$lang.to} {$list[val].date_end|date_format:"%d.%m.%Y"} </div>
              <div class="panel-btns pull-right">
                <div class="btn-group"> {if !$user_games[$list[val].id]}{if $list[val].date_start|check_active:'$list[val].date_end'}
                  <button type="button" class="btn btn-danger" onClick="Enroll_user('{$user_info.id}','{$list[val].id}','{$user_info.sex}')" id="game_{$list[val].id}"> {$lang.enroll}</button>
                  {/if}{else}
                  <button type="button" class="btn btn-success" disabled> {$lang.in_game}</button>
                  {/if} </div>
              </div>
            </div>
            <div class="panel-body"> <a href="{$CONFIG_HOST}/page/game/{$list[val].id}">
              <p>Praesent non nibh nisi. Proin eu massa faucibus, volutpat tellus eu, dapibus velit. Sed feugiat risus at velit lobortis porta.</p>
              </a> </div>
          </div>
        </div>
        {/section} </div>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-md-8 col-md-offset-2"> </div>
  {else}
  <div class="col-md-10 col-md-offset-1">
    <div class="panel"> {$info.terms}</div>
  </div>
  {/if} </div>
