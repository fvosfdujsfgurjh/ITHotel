/// <reference path="../jquery-1.4.1.js" />



$(function () {
    $('#account_header').click(function () {
        $.get("/Home/Account", function () {
            alert('fsfsfs');
        });
    });
});
