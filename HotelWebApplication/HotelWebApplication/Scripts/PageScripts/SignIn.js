/// <reference path="../jquery.cookies.js" />
/// <reference path="../jquery-1.7.2.js" />


$(function () {
    var curr_user_id = $.cookie('id');
    if (curr_user_id == null) {
        $('#signInDiv').css('display', 'block');
        $('#signOutDiv').css('display', 'none');
    }
    else {
        $('#signOutDiv').css('display', 'block');
        $('#signInDiv').css('display', 'none');
        var name = $.cookie('name');
        $('#welcomeLabel').text(name);
    }
    var elem = ('#signInButton');
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
                $('#signInDiv').hide('0.3');
                $('#signOutDiv').show('0.3');
                $('#welcomeLabel').text(response.name);
                $.cookie('name', response.name);
                $.cookie('id', response.id);
            }
        });
    });
    $('#signOutButton').click(function () {
        $('#signOutDiv').hide('0.3');
        $('#signInDiv').show('0.3');
        $.cookie('name', null);
        $.cookie('id', null);
    });
});