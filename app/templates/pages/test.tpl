
      <div class="row">
        <div class="col-md-6">
          <div class="row">
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <span class="glyphicon glyphicon-pencil"></span> Picker Fields </div>
                </div>
                <div class="panel-body">
                  <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <label for="cp" class="col-lg-2 control-label">Color</label>
                      <div class="col-md-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-hand-o-right"></i> </span>
                          <input type="text" class="form-control colorpicker margin-top-none" id="cp" placeholder="#37a8e8" value="#37a8e8">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="cp2" class="col-lg-2 control-label">RGBa</label>
                      <div class="col-md-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-hand-o-right"></i> </span>
                          <input type="text" class="form-control rgbapicker" value="rgb(0,194,255,1.00)" id="cp2" data-color-format="rgba" data-colorpicker-guid="2">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="timepicker" class="col-lg-2 control-label">Time</label>
                      <div class="col-md-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-calendar "></i> </span>
                          <input type="text" id="timepicker" class="form-control timepicker" placeholder="9:00 PM" >
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="datepicker" class="col-lg-2 control-label">Date</label>
                      <div class="col-md-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-calendar"></i> </span>
                          <input type="text" id="datepicker" class="form-control datepicker margin-top-none" placeholder="23/9/2013">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="datepicker_2" class="col-lg-2 control-label">Date Range</label>
                      <div class="col-md-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-calendar "></i> </span>
                          <input type="text" id="datepicker_2" class="form-control margin-top-none" placeholder="10/25/2013 - 10/25/2013" name="daterange">
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <span class="glyphicon glyphicon-pencil"></span> Checkboxes and Switches </div>
                </div>
                <div class="panel-body">
                  <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <label class="col-md-3 col-lg-2 control-label">Radios</label>
                      <div class="col-md-9">
                        <label class="radio-inline">
                          <input class="radio" type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                          1 </label>
                        <label class="radio-inline">
                          <input class="radio" type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                          2 </label>
                        <label class="radio-inline">
                          <input class="radio" type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
                          3 </label>
                        <label class="radio-inline">
                          <input class="radio" type="radio" name="optionsRadios" id="optionsRadios4" value="option4">
                          4 </label>
                        <label class="radio-inline">
                          <input class="radio" type="radio" name="optionsRadios" id="optionsRadios5" value="option5">
                          5 </label>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-md-3 col-lg-2 control-label">Checkboxes</label>
                      <div class="col-md-9">
                        <label class="checkbox-inline">
                          <input class="checkbox" type="checkbox" id="inlineCheckbox1" value="option1">
                          1 </label>
                        <label class="checkbox-inline">
                          <input class="checkbox" type="checkbox" id="inlineCheckbox2" value="option2">
                          2 </label>
                        <label class="checkbox-inline">
                          <input class="checkbox" type="checkbox" id="inlineCheckbox3" value="option3">
                          3 </label>
                        <label class="checkbox-inline">
                          <input class="checkbox" type="checkbox" id="inlineCheckbox4" value="option4">
                          4 </label>
                        <label class="checkbox-inline">
                          <input class="checkbox" type="checkbox" id="inlineCheckbox5" value="option5">
                          5 </label>
                        <label class="checkbox-inline">
                          <input class="checkbox" type="checkbox" id="inlineCheckbox6" value="option6">
                          6 </label>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-md-3 col-lg-2 control-label">Switches</label>
                      <div class="col-md-9">
                        <div class="make-switch" data-on="info" data-off="success">
                          <input type="checkbox" checked>
                        </div>
                        <div class="make-switch" data-on="success" data-off="warning">
                          <input type="checkbox" checked>
                        </div>
                        <div class="make-switch" data-on="warning" data-off="danger">
                          <input type="checkbox" checked>
                        </div>
                        <div class="make-switch" data-on="danger" data-off="default">
                          <input type="checkbox" checked>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <span class="glyphicon glyphicon-pencil"></span> Tag manager </div>
                </div>
                <div class="panel-body">
                  <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <label for="tagmanager" class="col-md-2 control-label">Tag Field</label>
                      <div class="col-md-10">
                        <input type="text" id="tagmanager" class="form-control tm-input" placeholder="Create a new tag..">
                        <div class="tag-container"> </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <span class="glyphicon glyphicon-pencil"></span> Easy Icons </div>
                </div>
                <div class="panel-body">
                  <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <label class="col-md-2 text-right">With Icons</label>
                      <div class="col-md-10">
                        <div class="input-group margin-bottom"> <span class="input-group-addon"><i class="fa fa-envelope-o"></i> </span>
                          <input class="form-control" type="text" placeholder="Email address">
                        </div>
                        <div class="input-group margin-bottom"> <span class="input-group-addon"><i class="fa fa-key"></i> </span>
                          <input class="form-control" type="password" placeholder="Password">
                        </div>
                        <div class="input-group margin-bottom">
                          <input class="form-control" type="text" placeholder="Numbers">
                          <span class="input-group-addon">00</span> </div>
                        <div class="input-group">
                          <input class="form-control" type="password" placeholder="Money">
                          <span class="input-group-addon"><i class="fa fa-usd"></i> </span> </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <span class="glyphicon glyphicon-pencil"></span> Select Lists </div>
                </div>
                <div class="panel-body">
                  <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <label for="chosen-list1" class="col-md-3 control-label">Fancy Select</label>
                      <div class="col-md-9">
                        <select class="form-control" id="chosen-list1">
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="chosen-list2" class="col-md-3 control-label">Fancy Multiple</label>
                      <div class="col-md-9">
                        <select multiple class="form-control" id="chosen-list2">
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="standard-list1" class="col-md-3 control-label">Standard Select</label>
                      <div class="col-md-9">
                        <select class="form-control" id="standard-list1">
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="standard-list2" class="col-md-3 control-label">Standard Multiple</label>
                      <div class="col-md-9">
                        <select multiple class="form-control" id="standard-list2">
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <span class="glyphicon glyphicon-pencil"></span> Speciality Spinners </div>
                </div>
                <div class="panel-body">
                  <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <label for="spinner1" class="col-lg-2 control-label">Spinner</label>
                      <div class="col-lg-6">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-level-up"></i> </span>
                          <input id="spinner1" class="form-control ui-spinner-input" name="spinner" value="15" />
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="spinner2" class="col-lg-2 control-label">Currency Spinner</label>
                      <div class="col-lg-6">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-usd"></i> </span>
                          <input id="spinner2" class="form-control ui-spinner-input" name="spinner" value="35" />
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="spinner3" class="col-lg-2 control-label">Decimal</label>
                      <div class="col-lg-6">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-signal"></i> </span>
                          <input id="spinner3" class="form-control ui-spinner-input" name="spinner" value="13.5" />
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="spinner4" class="col-lg-2 control-label">Time</label>
                      <div class="col-lg-6">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-clock-o"></i> </span>
                          <input id="spinner4" class="form-control ui-spinner-input" name="spinner" value="08:30 PM" />
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="row">
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <span class="glyphicon glyphicon-pencil"></span> Standard Fields </div>
                </div>
                <div class="panel-body">
                  <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <label class="col-lg-2 text-right">Static Field</label>
                      <div class="col-lg-10">
                        <p class="form-control-static text-muted">email@example.com</p>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputStandard" class="col-lg-2 control-label">Standard</label>
                      <div class="col-lg-10">
                        <input type="text" id="inputStandard" class="form-control" placeholder="Type Here...">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputPassword" class="col-lg-2 control-label">Password</label>
                      <div class="col-lg-10">
                        <input type="text" class="form-control" id="inputPassword" placeholder="Password">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="focusedInput" class="col-lg-2 control-label">Focused</label>
                      <div class="col-lg-10">
                        <input class="form-control" id="focusedInput" type="text" value="This is focused...">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="disabledInput" class="col-lg-2 control-label">Disabled</label>
                      <div class="col-lg-10">
                        <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here..." disabled>
                      </div>
                    </div>
                    <div class="form-group has-success">
                      <label class="col-lg-2 control-label" for="inputSuccess">Success</label>
                      <div class="col-lg-10">
                        <input type="text" class="form-control" id="inputSuccess">
                      </div>
                    </div>
                    <div class="form-group has-warning">
                      <label class="col-lg-2 control-label" for="inputWarning">Warning</label>
                      <div class="col-lg-10">
                        <input type="text" class="form-control" id="inputWarning">
                      </div>
                    </div>
                    <div class="form-group has-error">
                      <label class="col-lg-2 control-label" for="inputError">Error</label>
                      <div class="col-lg-10">
                        <input type="text" class="form-control" id="inputError">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-lg-2 control-label" for="textArea">Text Area</label>
                      <div class="col-lg-10">
                        <textarea class="form-control" id="textArea" rows="3"></textarea>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <span class="glyphicon glyphicon-pencil"></span> Masked Input Fields </div>
                </div>
                <div class="panel-body">
                  <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <label for="maskedDate" class="col-lg-2 control-label">Date</label>
                      <div class="col-lg-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-calendar"></i> </span>
                          <input type="text" id="maskedDate" class="form-control date" maxlength="10" autocomplete="off" placeholder="11/11/1111">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="maskedTime" class="col-lg-2 control-label">Time</label>
                      <div class="col-lg-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-clock-o"></i> </span>
                          <input type="text" id="maskedTime" class="form-control time" maxlength="10" autocomplete="off" placeholder="00:00:00">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="maskedMultiple" class="col-lg-2 control-label">Date and Time</label>
                      <div class="col-lg-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-clock-o"></i> </span>
                          <input type="text" id="maskedMultiple" class="form-control date_time" maxlength="10" autocomplete="off" placeholder="99/99/9999 00:00:00">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="maskedZip" class="col-lg-2 control-label">Zip Code</label>
                      <div class="col-lg-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-bolt"></i> </span>
                          <input type="text" id="maskedZip" class="form-control zip" maxlength="10" autocomplete="off" placeholder="99999-999">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="maskedPhone" class="col-lg-2 control-label">Phone</label>
                      <div class="col-lg-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-phone"></i> </span>
                          <input type="text" id="maskedPhone" class="form-control phone" maxlength="10" autocomplete="off" placeholder="(999) 999-9999">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="maskedExt" class="col-lg-2 control-label">Phone + Ext</label>
                      <div class="col-lg-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-phone"></i> </span>
                          <input type="text" id="maskedExt" class="form-control phoneext" maxlength="10" autocomplete="off" placeholder="9999-9999">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="maskedMoney" class="col-lg-2 control-label">Money</label>
                      <div class="col-lg-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-usd"></i> </span>
                          <input type="text" id="maskedMoney" class="form-control money" maxlength="10" autocomplete="off" placeholder="000.000.000.000">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="maskedKey" class="col-lg-2 control-label">Product Key</label>
                      <div class="col-lg-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-key"></i> </span>
                          <input type="text" id="maskedKey" class="form-control product" maxlength="10" autocomplete="off" placeholder="000.000.000.000,00">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="maskedID" class="col-lg-2 control-label">Tax ID</label>
                      <div class="col-lg-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-gavel"></i> </span>
                          <input type="text" id="maskedID" class="form-control tin" maxlength="10" autocomplete="off" placeholder="99999-999">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="maskedSSN" class="col-lg-2 control-label">SSN</label>
                      <div class="col-lg-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-exclamation"></i> </span>
                          <input type="text" id="maskedSSN" class="form-control ssn" maxlength="10" autocomplete="off" placeholder="999-99-9999">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="maskedScript" class="col-lg-2 control-label">Eye Script</label>
                      <div class="col-lg-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-eye"></i> </span>
                          <input type="text" id="maskedScript" class="form-control eyescript" maxlength="10" autocomplete="off" placeholder="0ZZ.0ZZ.0ZZ.0ZZ">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="maskedCustom" class="col-lg-2 control-label">Custom</label>
                      <div class="col-lg-10">
                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-flask"></i> </span>
                          <input type="text" id="maskedCustom" class="form-control custom" maxlength="10" autocomplete="off" placeholder="1-22-333-4444">
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <span class="glyphicon glyphicon-pencil"></span> Fields Options </div>
                </div>
                <div class="panel-body">
                  <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <label class="col-lg-2 control-label" for="inputSmall">Small</label>
                      <div class="col-lg-10">
                        <input id="inputSmall" class="form-control input-sm" type="text" placeholder=".input-sm">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-lg-2 control-label" for="inputDefault">Default</label>
                      <div class="col-lg-10">
                        <input id="inputDefault" class="form-control" type="text" placeholder="default style">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-lg-2 control-label" for="inputLarge">Large</label>
                      <div class="col-lg-10">
                        <input id="inputLarge" class="form-control input-lg" type="text" placeholder=".input-lg">
                      </div>
                    </div>
                    <div class="row form-group">
                      <label class="col-md-2 text-right">Input Lengths</label>
                      <div class="col-xs-2">
                        <input type="text" class="form-control" placeholder=".col-xs-2">
                      </div>
                      <div class="col-xs-3">
                        <input type="text" class="form-control" placeholder=".col-xs-3">
                      </div>
                      <div class="col-xs-5">
                        <input type="text" class="form-control" placeholder=".col-xs-4">
                      </div>
                    </div>
                    <hr />
                    <div class="form-group">
                      <label for="inputInline" class="col-lg-2 control-label">Inline Help Text</label>
                      <div class="col-lg-5">
                        <input id="inputInline" type="text" class="form-control" placeholder="Text Field">
                      </div>
                      <div class="col-lg-4 padding-left-sm"><span class="help-block margin-top-sm"><i class="fa fa-bell"></i> A block of help text!</span> </div>
                    </div>
                    <div class="form-group">
                    <label for="inputHelp" class="col-lg-2 control-label">Help Text</label>
                    <div class="col-lg-10">
                      <input id="inputHelp" type="text" class="form-control" placeholder="Text Field">
                      <span class="help-block margin-top-sm"><i class="fa fa-bell"></i> A block of help text that can help the user</span> </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


<!-- Core Javascript - via CDN --> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> 
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script> <!-- Plugins --> 
<script type="text/javascript" src="{$CONFIG_HOST}/vendor/plugins/globalize/globalize.js"></script> 
<script type="text/javascript" src="{$CONFIG_HOST}/vendor/plugins/chosen/chosen.jquery.min.js"></script> 
<script type="text/javascript" src="{$CONFIG_HOST}/vendor/plugins/daterange/moment.min.js"></script> 
<script type="text/javascript" src="{$CONFIG_HOST}/vendor/plugins/daterange/daterangepicker.js"></script> 
<script type="text/javascript" src="{$CONFIG_HOST}/vendor/plugins/colorpicker/bootstrap-colorpicker.js"></script> 
<script type="text/javascript" src="{$CONFIG_HOST}/vendor/plugins/timepicker/bootstrap-timepicker.min.js"></script> 
<script type="text/javascript" src="{$CONFIG_HOST}/vendor/plugins/datepicker/bootstrap-datepicker.js"></script> 
<script type="text/javascript" src="{$CONFIG_HOST}/vendor/plugins/formswitch/js/bootstrap-switch.min.js"></script> 
<script type="text/javascript" src="{$CONFIG_HOST}/vendor/plugins/jquerymask/jquery.maskedinput.min.js"></script> 
<script type="text/javascript" src="{$CONFIG_HOST}/vendor/plugins/tags/tagmanager.js"></script> 

<!-- Theme Javascript --> 
<script type="text/javascript" src="{$CONFIG_HOST}/js/uniform.min.js"></script> 
<script type="text/javascript" src="{$CONFIG_HOST}/js/main.js"></script>
<script type="text/javascript" src="{$CONFIG_HOST}/js/custom.js"></script> 
<script type="text/javascript">
 jQuery(document).ready(function() {

	 // Init Theme Core
	 Core.init();

	 //Init jquery Date Picker
	 $('.datepicker').datepicker()
	 
	 //Init jquery Date Range Picker
	 $('input[name="daterange"]').daterangepicker();
	 
	 //Init jquery Color Picker
	 $('.colorpicker').colorpicker() 
	 $('.rgbapicker').colorpicker() 
	 
	 //Init jquery Time Picker
	 $('.timepicker').timepicker();
	  
	 //Init jquery Tags Manager 
	 $(".tm-input").tagsManager({
        tagsContainer: '.tag-container',
		prefilled: ["Miley Cyrus", "Apple", "Wow This is a really Long tag", "Na uh"],
		tagClass: 'tm-tag-info',
     });

	 //Init jquery spinner init - default  
	 $(".checkbox").uniform();
 	 $(".radio").uniform();

	//Init jquery spinner init - default
	$("#chosen-list1").chosen();
	$("#chosen-list2").chosen(); 
	  
	//Init jquery spinner init - default
	$("#spinner1").spinner();
	
	//Init jquery spinner init - currency 
	$("#spinner2").spinner({
      min: 5,
      max: 2500,
      step: 25,
      start: 1000,
      //numberFormat: "C"
    });
	
	//Init jquery spinner init - decimal  
	$( "#spinner3" ).spinner({
      step: 0.01,
      numberFormat: "n"
    });
	
	//Init jquery time spinner
    $.widget( "ui.timespinner", $.ui.spinner, {
		options: {
		  // seconds
		  step: 60 * 1000,
		  // hours
		  page: 60
		},
		_parse: function( value ) {
		  if ( typeof value === "string" ) {
			// already a timestamp
			if ( Number( value ) == value ) {
			  return Number( value );
			}
			return +Globalize.parseDate( value );
		  }
		  return value;
		},
	 
		_format: function( value ) {
		  return Globalize.format( new Date(value), "t" );
		}
	  });
    $( "#spinner4" ).timespinner();

	//Init jquery masked inputs
	$('.date').mask('99/99/9999');
	$('.time').mask('99:99:99');
	$('.date_time').mask('99/99/9999 99:99:99');
	$('.zip').mask('99999-999');
	$('.phone').mask('(999) 999-9999');
	$('.phoneext').mask("(999) 999-9999 x99999");
	$(".money").mask("999,999,999.999"); 
	$(".product").mask("999.999.999.999"); 
	$(".tin").mask("99-9999999");
	$(".ssn").mask("999-99-9999");
	$(".ip").mask("9ZZ.9ZZ.9ZZ.9ZZ");
	$(".eyescript").mask("~9.99 ~9.99 999");
	$(".custom").mask("9.99.999.9999");
	
});
</script>
</body>

</html>
