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
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" onclick="close_login()" aria-hidden="true">×</button>
                      <h4 class="modal-title">Вход</h4>
                    </div>
                    <div class="modal-body">
                    <form method="post">
                    <input type="text" placeholder="Username" name="username" />
                    <input type="password" placeholder="Password" name="password" />
                    <input type="hidden" value="login" name="page"  />
                    </form>                    
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                      <input type="submit" name="login" value="Login" />
                    </div>
                  </div>
                </div>
              </div>
