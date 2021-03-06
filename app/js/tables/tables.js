var mouseDownX = 0;
var mouseDownY = 0;
var elemClicked;
var rect;
var elems=[];


$(document).ready(function () {

    var paper = Raphael("d1", 1024, 500);

    // start, move, and up are the drag functions
    start = function () {
        // storing original coordinates
        this.ox = this.attr("x");
        this.oy = this.attr("y");
        this.attr({
            opacity: 1
        });
        if (this.attr("y") < 60 && this.attr("x") < 60) this.attr({
            fill: "#000"
        });
    }, move = function (dx, dy) {
        // move will be called with dx and dy
        if (this.attr("y") > 500 || this.attr("x") > 1024) this.attr({
            x: this.ox + dx,
            y: this.oy + dy
        });
        else {
            nowX = Math.min(1024, this.ox + dx);
            nowY = Math.min(500, this.oy + dy);
            nowX = Math.max(0, nowX);
            nowY = Math.max(0, nowY);
            this.attr({
                x: nowX,
                y: nowY
            });
            if (this.attr("fill") != "#000") this.attr({
                fill: "#000"
            });
        }

    }, up = function () {
        if(this.attr("x")==1024||this.attr("y")==500){
            console.log(this);
            this.remove();
            return;
        }
        if (this.ox == this.attr("x") && this.oy == this.attr("y")) {
            if ($(".description")) {
                $(".description").remove();
            }
            var self = this;

            var div = $('<div class="description">');
            var text = $('<input type="text" id="description-text"/>').val(this.node.attributes[10].nodeValue);
            var save = $('<input id="save" value="Save" type="button" />').click(function () {
                self.node.attributes[10].nodeValue = $("#description-text").val();
                $(".description").remove();
            });
            var cancel = $('<input id="cancel" value="Cancel" type="button" />').click(function () {
                $(".description").remove();
            });
            var result = div.append(text).append(save).append(cancel);
            $("body").append(result);
        }
        // restoring state
        this.attr({
            opacity: .5
        });
        if (this.attr("y") < 60 && this.attr("x") < 60) this.attr({
            fill: "#AEAEAE"
        });
    };

    function DrawRectangle(x, y, w, h) {

        var element = paper.rect(x, y, w, h);
        element.attr({
            fill: "gray",
            opacity: .5,
            stroke: "#F00"
        });
        $(element.node).attr('description', ' ');
        $(element.node).attr('id', '' + (Math.random() * 100000));
        console.log(element.attr('x'));

        element.drag(move, start, up);
        element.click(function (e) {

            elemClicked = element;
        });

        return element;
    }

    function DrawRectangleWithoutMove(x, y, w, h) {

        var element = paper.rect(x, y, w, h);
        element.attr({
            fill: "gray",
            opacity: .5,
            stroke: "#F00"
        });
        $(element.node).attr('description', ' ');
        $(element.node).attr('table_id', ' ');
        $(element.node).attr('id', '' + (Math.random() * 100000));
        console.log(element.attr('x'));

        element.click(function (e) {

            elemClicked = element;
        });

        return element;
    }


    $("#bind").click(function (e) {
        $('#d1').unbind('mousedown');
        $('#d1').unbind('mousemove');
        $('#d1').unbind('mouseup');

        $("#d1").mousedown(function (e) {


            // Prevent text edit cursor while dragging in webkit browsers
            e.originalEvent.preventDefault();

            if (e.target.nodeName != "svg") {
                return;
            }

            var offset = $("#d1").offset();
            mouseDownX = e.pageX - offset.left;
            mouseDownY = e.pageY - offset.top;

            rect = DrawRectangle(mouseDownX, mouseDownY, 0, 0);

            $("#d1").mousemove(function (e) {
                var offset = $("#d1").offset();
                var upX = e.pageX - offset.left;
                var upY = e.pageY - offset.top;

                var width = upX - mouseDownX;
                var height = upY - mouseDownY;

                rect.attr({
                    "width": width > 0 ? width : 0,
                    "height": height > 0 ? height : 0
                });

            });

        });

        $("#d1").mouseup(function (e) {
            $('#d1').unbind('mousemove');

            var BBox = rect.getBBox();
            if (BBox.width == 0 || BBox.height == 0) {
                rect.remove();
            }
            else {
                elemClicked = rect;
                elems.push(rect);
            }
        });

    });

    $("#unbind").click(function (e) {
        $('#d1').unbind('mouseup');
        $('#d1').unbind('mousemove');
        $('#d1').unbind('mousedown');
    });

    $("#clr").click(function (e) {
        $('#d1').find('rect').each(function (i, obj) {
            $(this).remove();
        });
    });

    $("#del").click(function (e) {
        elemClicked.remove();
    });

    $("#copy").click(function (e) {
        DrawRectangle(0, 0, elemClicked.attr("width"), elemClicked.attr("height"));
    });


    $("#savechanges").click(function () {
        var tables = $("svg").children();

        var jsonStringForGeorgi = { data: [], business_id: $('#hidden_id').val(), action: 'save_tables' };
        for (var i = 2; i < tables.length; i++) {
            jsonStringForGeorgi.data.push({
                x1: parseFloat(tables[i].attributes[0].nodeValue),
                y1: parseFloat(tables[i].attributes[1].nodeValue),
                x2: parseFloat(tables[i].attributes[0].nodeValue) + parseFloat(tables[i].attributes[2].nodeValue),
                y2: parseFloat(tables[i].attributes[1].nodeValue) + parseFloat(tables[i].attributes[3].nodeValue),
                description: tables[i].attributes[10].nodeValue
            });
        }

        $.ajax({
            url: "ajax.php",
            type: "POST",
            data: {data: jsonStringForGeorgi.data, business_id: $('#hidden_id').val(), action: 'save_tables'},
            dataType: "json",
            success: function (data) {
                console.log(data);
            }
        });

        $('#d1').unbind('mouseup');
        $('#d1').unbind('mousemove');
        $('#d1').unbind('mousedown');

        $("#table-container").remove();
        for (var i = 0; i < elems.length; i++) {
            var BBox=elems[i].getBBox();
            elems[i].remove();
            DrawRectangleWithoutMove(BBox.x,BBox.y,BBox.width,BBox.height);

        }
        console.log(2222222);
        window.location.href="?page=tables&id="+$('#hidden_id').val()+"";
    });

    (function(){
        $.ajax({
            url: "ajax.php",
            type: "POST",
            data: {action: 'get_tables',business_id: $('#hidden_id').val()},
            dataType: "json",
            success: function (data) {
                console.log(data);
                for(var i=0;i<data.length;i++) {
                    var rect;
                    if ($("#change").length != 0) {
                        rect = DrawRectangleWithoutMove(parseFloat(data[i].x1), parseFloat(data[i].y1), parseFloat(data[i].x2) - parseFloat(data[i].x1), parseFloat(data[i].y2) - parseFloat(data[i].y1));
                    }
                    else {
                        rect = DrawRectangle(parseFloat(data[i].x1), parseFloat(data[i].y1), parseFloat(data[i].x2) - parseFloat(data[i].x1), parseFloat(data[i].y2) - parseFloat(data[i].y1));
                    }
                    rect.node.attributes[10].nodeValue = data[i].description;
                    rect.node.attributes[11].nodeValue = data[i].id;
                    elems.push(rect);
                    elems[i].click(function (e) {

                        console.log( e.target.getAttribute("table_id"));
                        $.ajax({
                            url: "ajax.php",
                            type: "POST",
                            data: {action:'reservation',
                                table_id:e.target.getAttribute("table_id"),
                                business_id:$('#hidden_id').val()},
                            dataType: "json",
                            success: function (data) {
								console.log('calendar');
								console.log(data);
                                $('#calendar').fullCalendar({
                                    editable: false,
                                    events:data
                                });
                                $('#calendar_modal').css("display","block");

                            }
                        });
                    });
                }
            }
        });


            var persons=$(".notification-list").children();

            for(var i=0;i<persons.length;i++){
                $(persons[i]).click(function(e){
                    e.originalEvent.preventDefault();
                    $("#calendar_modal").remove();

                    $(this).addClass("active-user");

                    $("#filter-date").val($(this).attr("date"));
                    $("#filter-hour").val($(this).attr("hour"));

                  $.ajax({
                       url: "ajax.php",
                       type: "POST",
                       data: {date:$(this).attr("date") , hour:$(this).attr("hour") , business_id: $('#hidden_id').val(), action: 'get_free_tables'},
                        dataType: "json",
                        success: function (data) {
							console.log('zaeti masi');
                            console.log(data);
                            for (var i = 0; i < elems.length; i++) {
                                elems[i].node.attributes[7].nodeValue = "#03ff03";
                                for (index in data) {
                                    if (data[index].id == elems[i].node.attributes[11].nodeValue) {
                                        elems[i].node.attributes[7].nodeValue = "#ff0000";
                                    }
                                }
                                if (elems[i].node.attributes[7].nodeValue == "#03ff03") {
                                    elems[i].click(function (e) {

                                        debugger;
                                        console.log( e.target.getAttribute("table_id"));
                                        console.log($(".active-user")[0].getAttribute("reserve_id"));
                                        $.ajax({
                                            url: "ajax.php",
                                            type: "POST",
                                            data: {action: 'reserve_table',table_id: e.target.getAttribute("table_id"),reserve_id:$(".active-user")[0].getAttribute("reserve_id")},
                                            dataType: "json",
                                            success: function (data) {
                                                window.location.href="?page=tables&id="+$('#hidden_id').val()+"";
                                            }
                                        });
                                    });
                                }
                            }
                        }
                    });
                });
            }



        $("#filter_search").click(function () {
            //$("#calendar_modal").remove();
            $.ajax({
                url: "ajax.php",
                type: "POST",
                data: {date:$("#filter-date").val() , hour:$("#filter-hour").val() , business_id: $('#hidden_id').val(), action: 'get_free_tables'},
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    for (var i = 0; i < elems.length; i++) {
                        elems[i].node.attributes[7].nodeValue = "#03ff03";
                        for (index in data) {
                            if (data[index].id == elems[i].node.attributes[11].nodeValue) {
                                elems[i].node.attributes[7].nodeValue = "#ff0000";
                                break;
                            }
                        }
                        console.log(elems[i]);
                        elems[i].click(function (e) {

                        console.log( e.target.getAttribute("table_id"));
                        $.ajax({
                        url: "ajax.php",
                        type: "POST",
                            data: {action:'reservation',
                                table_id:1,
                                business_id:5},
                            dataType: "json",
                        success: function (data) {
                            $('#calendar').fullCalendar({
                                editable: false,
                                events:data,
                                today: false
                            });
                            $('#calendar_modal').css("display","block");

                                    }
                                });
                            });

                    }
                }
            });
        });




    })();
});

function    close_calendar() {
    $('#calendar').html('');
    $('#calendar_modal').css("display","none");
}

function remove_notification(id){
	$('#not_'+id).remove();
     $.ajax({
                url: "ajax.php",
                type: "POST",
                data: {date:id, action: 'remove_notification'},
                dataType: "json",
                success: function (data) {
                    console.log(data);
				}
	 });

}