<form method="post" enctype="multipart/form-data">
<label>name</label><br />
<input type="text" name="name" id="name" value="{$info.name}" /><br />
<label>latitude</label><br />
<input type="text" name="lat" id="lat" value="{$info.lat}" /><br />
<label>lontitude</label><br />
<input type="text" name="lon" id="lon" value="{$info.lon}" /><br />
<label>description</label><br />
<textarea name="description"> {$info.description}</textarea><br />
<label>type</label><br />
<select name="type"><br />
<option value="0">izberi</option>

                            {html_options options=$types selected=$user_info.type_id} 
</select>   
<label>hour?</label><br />
<input type="checkbox" name="hour" id="name" value="{$info.name}" /><br />
<label>image</label><br />
<input type="file" name="photo"/><br />
<input type="hidden" name="page" value="{$page}" />
<input type="hidden" name="action" value="edit" />
<input type="hidden" name="id" value="{$id}" />
<input type="submit" name="save" value="Save" />
</form>