var makeGetAjax = function (url, successCallback) {
    $.ajax({
        type: "GET",
        url: url,
        dataType: "json",
        success: function (response) {
            successCallback(response);
        },
        error: function (response) {
            console.log("Something went wrong. Please try again later." + response);
        }
    })
}

var makePostAjax = function (url, data, successCallback) {
    var finaldata = "jsonOfLog=" + data;
    $.ajax({
        url: url,
        type: "POST",
        dataType: "json",
        data: finaldata,
        success: function (resp) {
            successCallback(resp);
        },
        error: function (response) {
            console.log("Something went wrong. Please try again later." + response);
        }
    });
}
$(document).ready(function () {
    if ($('.data-entry-container').length > 0) {
        $(".datepicker").datepicker({
            /* changeYear               : true,
            changeMonth              : true,
            yearRange                : "-85:-18",
            maxDate                  : "-18Y",
            minDate                  : "-85Y",
            monthNamesShort          : fullmonth_array*/
            dateFormat: "dd-M-yy"
        });
        makeGetAjax('/GetData/getLedgers', getLedgerOptions);
       
    }
    $('#ui-datepicker-div').hide();
    $(document).on('click', '#data-entry-success', function () {
        var dataArray = [], dataAvailableFlag;
        $forms = $('form');
        $.each($forms, function (i, val) {
            if ($(val).find("input[name='date']").val() != "" && $(val).find("input[name='date']").val() != undefined) {
                if ($(val).find("input[name='ledger']").val() != "" && $(val).find("input[name='amount']").val() != "" && $(val).find("input[name='narration']").val() != "") {
                    $('.data-entry-error').removeClass('hide');
                    var data = $(val).serializeObject();
                    dataArray.push($(val).serializeObject());
                    console.log(dataArray);
                    dataAvailableFlag = true;
                    return true;
                }
            }
            else {
                //$('.data-entry-error').removeClass('hide');
                return false;
            }
            $('.data-entry-error').addClass('hide');
        });
    })
});