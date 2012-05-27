/// <reference path="../jquery-1.4.1.js" />

$(function () {
    $('#saveButton').click(function () {
        var name = $('#nameField').val();
        var birthdate = $('#birthdateField').val();
        var phone = $('#phoneField').val();
        $.post("/Account/SaveAccount", { name: name, birthdate: birthdate, phone: phone }, function (response) {
            if (!response.success) {
                alert(response.error);
            }
            else {
                alert("Changes was successfully saved");
            }
        });
    });
});