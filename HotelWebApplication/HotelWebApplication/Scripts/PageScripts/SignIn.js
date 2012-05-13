/// <reference path="../jquery-1.4.1.js" />


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
            if (response.success) {
                $('#signInDiv').hide('0.3');
                $('#signOutDiv').show('0.3');
                $('#welcomeLabel').text(response.name);
            }
            else {
                alert(response.error);
            }
        });
    });
    $('#signOutButton').click(function () {
        $.get("/SignIn/Logout", function () {
            $('#signOutDiv').hide('0.3');
            $('#signInDiv').show('0.3');
        });
    });
});