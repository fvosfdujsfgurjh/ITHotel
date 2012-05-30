/// <reference path="../jquery-1.4.1.js" />
/// <reference path="../jquery.cookies.js" />

$(function () {
    $.post("/Rooms/GetAllRooms", function (response) {
        $('#rooms_view').html(response);
    });
        
    $('#all_room').click(function () {
        $.post("/Rooms/GetAllRooms", function (response) {
            $('#rooms_view').html(response);
        });    
    });

    $('#norm_room').click(function () {
        $.post("/Rooms/RoomsList", {room_type: '1'}, function (response) {
            $('#rooms_view').html(response);
        });
    });

    $('#good_room').click(function () {
        $.post("/Rooms/RoomsList", { room_type: '2' }, function (response) {
            $('#rooms_view').html(response);
        });
    });

    $('#perfect_room').click(function () {
        $.post("/Rooms/RoomsList", { room_type: '3' }, function (response) {
            $('#rooms_view').html(response);
        });
    });

});

