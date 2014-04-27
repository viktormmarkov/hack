{literal}
<script>
 	function one_login() {
		$('#login').attr('style','display:block');
		
	}
	function close_login() {
		
		$('#login').attr('style','display:none');
	}

</script>
{/literal}
<div class="modal" id="login" style="display:none">
    <div class="modal-dialog" id="login-inside">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" onclick="close_login()" aria-hidden="true">×</button>
          <h4 class="modal-title">Вход</h4>
        </div>
        <div class="modal-body">
        <form  role="form" method="get">
            <div class="form-group">
                <input class = "input-sm my-extended" type="text" placeholder="Username" name="username" />
            </div>
            <div class="form-group">
                <input class = "input-sm my-extended" type="password" placeholder="Password" name="password" />
            </div>
            <input type="hidden" value="login" name="page"  />
            <div class="form-group"><input class="btn btn-sm btn-block" type="submit" name="login" value="Login" /></div>
        </form>
        </div>
      </div>
    </div>
    </div>