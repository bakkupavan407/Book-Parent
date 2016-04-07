$(document).ready(function () {

    $(document).on('click', '#registration-form', function () {
        console.log("Hello");
        alert($("#registration-form").serializeArray());
    })
    //    $.ajax({
    //        type: "post",
    //        url: "../services/usermanagement.asmx/registeruser",
    //        contenttype: "application/json; charset=utf-8",
    //        datatype: "json",
    //        success: onsuccess,
    //        failure: function (response) {
    //            alert("something went wrong. please try again later.");
    //        }
    //    });

    //    function onsuccess(response) {
    //        console.log(response);
    //    }

});


//function register() {
//    alert("Register");
//}