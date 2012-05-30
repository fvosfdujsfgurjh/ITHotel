/// <reference path="../jquery-1.4.1.js" />
/// <reference path="../jquery.cookies.js" />

$(function () {
    $('#CancelButton').click(function () {
        $('#RegMainData').animate({ opacity: '0' }, 'slow');
        $('#RegMainData').css('display', 'none');
    }); $('#RegMainData').animate({ opacity: '0' }, 'slow');
    $('#RegMainData').css('display', 'none');

    $('#OkButton').click(function () {
        var login = $('#RegUsername').val();
        if (login.length == 0) {
            alert('invalid login value');
            $('#RegUsername').focus();
            return;
        }
        var pass = $('#RegPassword').val();
        if (pass.length == 0) {
            alert('invalid password value');
            $('#RegPassword').focus();
            return;
        }
        var name = $('#RegPersonalData').val();
        if (name.length == 0) {
            alert('invalid name value');
            $('#RegPersonalData').focus();
            return;
        }
        var bithdate = $('#RegDateBirth').text();
        var phone = $('#RegTelephone').text();
        $.post('/Registration/Reg', { login: login, password: pass, name: name, birthdate: bithdate, phone: phone }, function (response) {
            if (response.id != null && response.id != undefined) {
                $('#RegMainData').animate({ opacity: '0' }, 'slow');
                $('#RegMainData').css('display', 'none');
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