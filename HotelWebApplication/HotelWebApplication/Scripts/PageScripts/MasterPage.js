/// <reference path="../jquery-1.4.1.js" />
/// <reference path="../jquery.cookies.js" />



$(function () {
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
});
