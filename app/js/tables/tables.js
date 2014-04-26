var mouseDownX = 0;
var mouseDownY = 0;
var elemClicked;
var rect;

$("#savechanges").click(function () {
    var tables = $("svg").children();

    var jsonStringForGeorgi = {
        data: [],
        bussines_id:$("hidden_id").val
    };
    for (var i = 2; i < tables.length; i++) {
        jsonStringForGeorgi.data.push({
            x1: parseFloat(tables[i].attributes[0].nodeValue),
            y1: parseFloat(tables[i].attributes[1].nodeValue),
            x2: parseFloat(tables[i].attributes[0].nodeValue) + parseFloat(tables[i].attributes[2].nodeValue),
            y2: parseFloat(tables[i].attributes[1].nodeValue) + parseFloat(tables[i].attributes[3].nodeValue),
            description: tables[i].attributes[10].nodeValue
        });
    }
    console.log(jsonStringForGeorgi);

    $.ajax({
        url: "ajax.php?action=save_tables",
        type: "POST",
        data: jsonStringForGeorgi,
        dataType: "aplication/json"
    }) .done(function(msg) {
        console.log( "Data Saved: " + msg );
    }).fail(function (msg) {
        console.log(msg);
    });

});

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
        if (this.ox == this.attr("x") && this.oy == this.attr("y")) {
            if ($(".description")) {
                $(".description").remove();
            }
            console.log(this.node.attributes[10].nodeValue);
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


});