$(document).ready(function () {

    function ShowCurrentTime() {
        $.ajax({
            type: "GET",
            url: "../ReceiptsPayments/getReceiptsPayments",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: OnSuccess,
            failure: function (response) {
                alert("Something went wrong. Please try again later.");
            }
        });
    }
    function OnSuccess(response) {
        console.log(response);
        $(".profit-loss-container-left .v-line").siblings().remove();
        $(".profit-loss-container-right .v-line").siblings().remove();
        $(".deficit-container-left .v-line").siblings().remove();
        $(".total-container-right .v-line").siblings().remove();
        //var data = JSON.parse(response);
        var data = response;
        //alert(data.pa
        for (var i = 0, len = data.receipts.length; i < len; i++) {
            var leftTemplate = '<div class="row"><div class="inlineBlock">' + data.receipts[i].ledgerName + '</div><div class="inlineBlock spacer">' + data.receipts[i].amount + '</div><div class="clear"></div></div>';
            $(".profit-loss-container-left").append(leftTemplate);
        }
        for (var i = 0, len = data.payments.length; i < len; i++) {
            var rightTemplate = '<div class="row"><div class="inlineBlock">' + data.payments[i].ledgerName + '</div><div class="inlineBlock spacer">' + data.payments[i].amount + '</div><div class="clear"></div></div>';
            $(".profit-loss-container-right").append(rightTemplate);
        }

        var receiptsTotal = data.receiptsTotalAmount;
        var paymentsTotal = data.paymentsTotalAmount;
        balanceAmount = receiptsTotal - paymentsTotal;

        $(".deficit-container-left").append('<div class="row"><div class="inlineBlock">Total</div><div class="inlineBlock spacer">' + receiptsTotal + '</div><div class="clear"></div></div>');
        $(".total-container-right").append('<div class="row"><div class="inlineBlock">Total</div><div class="inlineBlock spacer">' + paymentsTotal + '</div><div class="clear"></div></div>')
        console.log(balanceAmount);
        if (receiptsTotal > paymentsTotal) {
            $(".total-container-right").append('<div class="row"><div class="inlineBlock">Surplus Amount</div><div class="inlineBlock spacer">' + balanceAmount + '</div><div class="clear"></div></div>');
        } else if (paymentsTotal > receiptsTotal) {
            $(".deficit-container-left").append('<div class="row"><div class="inlineBlock">Deficit Amount</div><div class="inlineBlock spacer">' + balanceAmount + '</div><div class="clear"></div></div>');
        }

        var leftHeight = $(".profit-loss-container-left")[0].scrollHeight;
        var rightHeight = $(".profit-loss-container-right")[0].scrollHeight;
        if (leftHeight > 300) {
            $(".profit-loss-container-left .v-line").css({ height: (leftHeight) });
            $(".deficit-container-left .spacer").css({ "margin-right": "17px" });
        }
        if (rightHeight > 300) {
            $(".profit-loss-container-right .v-line").css({ height: (rightHeight) });
            $(".total-container-right .spacer").css({ "margin-right": "17px" });
        }
    }

    ShowCurrentTime();
});
function printReport(divID) {
    var documentTitle = window.prompt("Title");
    //Get the HTML of div

    var divElements = document.getElementById(divID).innerHTML;
    //Get the HTML of whole page
    var oldPage = document.body.innerHTML;

    //Reset the page's HTML with div's HTML only
    document.body.innerHTML =
     "<html><head><title>Receipts& Payments</title></head><body><div><h1 style='text-align: center;'>" + documentTitle + "</h1></div>" +
      divElements + "</body>";

    //Print Page
    window.print();

    //Restore orignal HTML
    document.body.innerHTML = oldPage;
}
function getFilterData() {
    var fromDateInput = document.getElementById("fromDate");
    var fromDate = fromDateInput.value;

    var toDateInput = document.getElementById("toDate");
    var toDate = toDateInput.value;

    console.log(fromDate);
    console.log(toDate);
    var params = { fromdate: fromDate, todate: toDate };
//    var mydata = JSON.stringify(params);
//    $.ajax({
//        type: "POST",
//        data: mydata,
//        url: "../ReceiptsPayments/getFilterReceiptsPayments",
//        contentType: "application/json; charset=utf-8",
//        dataType: "json",
//        success: filterDataSuccess,
//        failure: function (response) {
//            alert("Something went wrong. Please try again later.");
//        }
    //    });

    var jsonOfLog = JSON.stringify(params);
    makePostAjax("../ReceiptsPayments/getFilterReceiptsPayments", jsonOfLog, filterDataSuccess);

    function filterDataSuccess(response) {
        console.log(response);
        if (response.receipts.length === 0 && response.payments.length === 0) {
            alert("No records available. Please alter dates.");
            return false;
        }
        var data = response;
        $(".profit-loss-container-left .v-line").siblings().remove();
        $(".profit-loss-container-right .v-line").siblings().remove();
        $(".deficit-container-left .v-line").siblings().remove();
        $(".total-container-right .v-line").siblings().remove();

        for (var i = 0, len = data.receipts.length; i < len; i++) {
            var leftTemplate = '<div class="row"><div class="inlineBlock">' + data.receipts[i].ledgerName + '</div><div class="inlineBlock spacer">' + data.receipts[i].amount + '</div><div class="clear"></div></div>';
            $(".profit-loss-container-left").append(leftTemplate);
        }
        for (var i = 0, len = data.payments.length; i < len; i++) {
            var rightTemplate = '<div class="row"><div class="inlineBlock">' + data.payments[i].ledgerName + '</div><div class="inlineBlock spacer">' + data.payments[i].amount + '</div><div class="clear"></div></div>';
            $(".profit-loss-container-right").append(rightTemplate);
        }

        var receiptsTotal = data.receiptsTotalAmount;
        var paymentsTotal = data.paymentsTotalAmount;
        var balanceAmount = receiptsTotal - paymentsTotal;

        $(".deficit-container-left").append('<div class="row"><div class="inlineBlock">Total</div><div class="inlineBlock spacer">' + receiptsTotal + '</div><div class="clear"></div></div>');
        $(".total-container-right").append('<div class="row"><div class="inlineBlock">Total</div><div class="inlineBlock spacer">' + paymentsTotal + '</div><div class="clear"></div></div>')
        console.log(balanceAmount);
        if (receiptsTotal > paymentsTotal) {
            $(".total-container-right").append('<div class="row"><div class="inlineBlock">Surplus Amount</div><div class="inlineBlock spacer">' + balanceAmount + '</div><div class="clear"></div></div>');
        } else if (paymentsTotal > receiptsTotal) {
            $(".deficit-container-left").append('<div class="row"><div class="inlineBlock">Deficit Amount</div><div class="inlineBlock spacer">' + balanceAmount + '</div><div class="clear"></div></div>');
        }

        var leftHeight = $(".profit-loss-container-left")[0].scrollHeight;
        var rightHeight = $(".profit-loss-container-right")[0].scrollHeight;
        if (leftHeight > 300) {
            $(".profit-loss-container-left .v-line").css({ height: (leftHeight) });
            $(".deficit-container-left .spacer").css({ "margin-right": "17px" });
        }
        if (rightHeight > 300) {
            $(".profit-loss-container-right .v-line").css({ height: (rightHeight) });
            $(".total-container-right .spacer").css({ "margin-right": "17px" });
        }
    }
}
