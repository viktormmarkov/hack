<br />
<div class="col-lg-10 col-lg-offset-1">
{section loop=$notifications name=val}
<div class="alert alert-dismissable alert-success">
    <button type="button" class="close" data-dismiss="alert">×</button>
    <strong>{$notifications[val].name}</strong> successfully added <a href="#" class="alert-link">click here</a>.
</div>
{/section}
</div>