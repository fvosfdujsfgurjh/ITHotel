/// <reference path="../jquery-1.4.1.js" />
/// <reference path="../jquery.cookies.js" />



$(function () {
    var curr_user_id = $.cookie('id');
    if (curr_user_id == null) {
        $('#sign_in').css('opacity', '1');
        $('#registration').css('opacity', '1');
        $('#user_info').css('opacity', '0');
        $('#sign_in').css('display', 'block');
        $('#registration').css('display', 'block');
        $('#user_info').css('display', 'none');
    }
    else {
        $('#sign_in').css('opacity', '0');
        $('#registration').css('opacity', '0');
        $('#user_info').css('opacity', '1'); ;
        $('#sign_in').css('display', 'none');
        $('#registration').css('display', 'none');
        $('#user_info').css('display', 'block');
        $('#user_name').text($.cookie('name'));
    }
    $('#mainData').css('opacity', '0');
    $('#account_header').click(function () {
        var client_id = $.cookie('id');
        if (client_id == null) {
            alert('you must login first');
            $('#loginSignIn').focus();
        }
        else {
            $.post('/Account/Account', { id: client_id }, function (response) {
                if (response.success) {
                    window.location = response.path;
                }
            });
        }
    });
    $('#sign_in').click(function () {
        $('#mainData').animate({ opacity: '1' }, 'slow');
    });
    $('#sign_out_button').click(function () {
        $.cookie('name', null, {path: '/'});
        $.cookie('id', null, {path: '/'});
        $('#user_info').animate({ opacity: '0' }, 'slow');
        $('#user_info').css('display', 'none');
        $('#sign_in').css('display', 'block');
        $('#registration').css('display', 'block');
        $('#sign_in').animate({ opacity: '1' }, 'slow');
        $('#registration').animate({ opacity: '1' }, 'slow');
    });
});