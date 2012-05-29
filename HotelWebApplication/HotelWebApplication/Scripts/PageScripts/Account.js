/// <reference path="../jquery-1.4.1.js" />
/// <reference path="../jquery.cookies.js" />

$(function () {
    $('#saveButton').click(function () {
        var name = $('#nameField').val();
        var birthdate = $('#birthdateField').val();
        var phone = $('#phoneField').val();
        var client_id = $.cookie('id');
        $.post("/Account/SaveAccount", {id: client_id, name: name, birthdate: birthdate, phone: phone }, function (response) {
            if (!response.success) {
                alert(response.error);
            }
            else {
                alert("Changes was successfully saved");
            }
        });
    });
});