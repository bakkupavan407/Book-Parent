$(document).ready(function () {
    $.fn.serializeObject = function () {
        var o = {};
        var a = this.serializeArray();
        $.each(a, function () {
            if (o[this.name] !== undefined) {
                if (!o[this.name].push) {
                    o[this.name] = [o[this.name]];
                }
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        });
        return o;
    };
    $(document).on('click', '#login-button', function (e) {
        e.preventDefault();
        var my_data = $('.login-form').serializeObject();
        var jsonOfLog = JSON.stringify(my_data);
        makePostAjax("Register/loginUser", jsonOfLog, loginSuccess);
    });
    $(document).on('click', '#registration-button', function () {

        var my_data = $('.registration-form').serializeObject();
        console.log(my_data);

        var final_ddd = JSON.stringify(my_data);
        console.log(final_ddd);

        var getReportColumnsParams = {
            "usersJson": final_ddd
        };

        console.log(getReportColumnsParams);
//        try {
//            makePostAjax("/Dataentry/SaveUser", $('.registration-form').serialize(), "registrationSuccess");
//        }
//        catch (e) {
//            e.description;
//        }
    });
    function registrationSuccess(response) {
        console.log(response);
    }
    $('.registration-form').hide();
    $(document).on('click', 'a[title = "registerLink"]', function (e) {
        e.stopPropagation();
        $('.registration-form,.login-form').toggle();
    });
});

var loginSuccess = function (response) {
    if (response.status == 'success') {
        location.href = '../views/settings.aspx';
        //location.href = '../views/settings.aspx?username=' + response.username.toString();
    }
}

var getLedgerOptions = function (response) {
    console.log(response);
    var options = "";
    if (response.status == 'success') {
        $.each(response.ledgers, function (i, val) {
        
            options = options + '<option value=' + val.id + '>' + val.ledgerName + '</option>';

        });
        console.log(options);
        $('select[name = "ledger"]').append(options);
    }
}