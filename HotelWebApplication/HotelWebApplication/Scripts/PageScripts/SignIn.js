/// <reference path="../jquery-1.4.1.js" />
/// <reference path="../jquery.cookies.js" />


$(function () {
    $('#signInButton').click(function () {
        var login = $('#loginSignIn').val();
        var password = $('#passwordSignIn').val();
        if (login.length == 0) {
            alert("login is incorrect");
            $('#loginSignIn').focus();
            return;
        }
        if (password.length == 0) {
            alert('password is incorrect');
            $('#passwordSignIn').focus();
            return;
        }
        $.post("/SignIn/Login", { login: login, password: password }, function (response) {
            if (response.error != undefined) {
                alert(response.error);
            }
            else {
                $('#mainData').animate({ opacity: '0' }, 'slow');
                $('#sign_in').animate({ opacity: '0' }, 'slow');
                $('#registration').animate({ opacity: '0' }, 'slow');
                $('#sign_in').css('display', 'none');
                $('#registration').css('display', 'none');
                $('#user_info').css('display', 'block');
                $('#user_info').animate({ opacity: '1' }, 'slow');
                $('#user_name').text(response.name);
                $.cookie('name', response.name, { path: '/' });
                $.cookie('id', response.id, { path: '/' });
            }
        });
    });
});