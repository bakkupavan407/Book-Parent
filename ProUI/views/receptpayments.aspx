<%@ Page Title="" Language="C#" MasterPageFile="~/masters/auth.Master" AutoEventWireup="true"
    CodeBehind="receptpayments.aspx.cs" Inherits="BookUI.views.receptpayments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="Stylesheet" href="../css/lib/jquery-ui.css" />
    <link href="../css/receptpayments.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="profitlossContainer">
        <div id="formdates" class="filter-container">
            <span>From</span>
            <%--<asp:TextBox ID="fromDate" type="text" name="fromDate" runat="server" />--%>
            <input type="text" id="fromDate" name="fromDate" />
            <span>To</span>
            <%--<asp:TextBox ID="toDate" type="text" name="toDate" runat="server" />--%>
            <input type="text" id="toDate" name="toDate" />
            <input type="button" id="btnFilter" class="btn-filter" onclick="getFilterData()"
                value="Go" />
            <input type="button" id="btnRecet" class="btn-reset" onclick="clearFilterData()"
                value="Reset" />
        </div>
        <div id="printContainer" class="print-container">
            <span class="printimg" onclick="printReport('localdiv');">
                <img src="../img/printicon.png" width="17" height="17" alt="Print" />
                <span>Print</span> </span>
        </div>
    </div>
    <div id="localdiv">
        <div class="header">
            <div class="receipts-header">
                Receipts</div>
            <div class="payments-header">
                Payments</div>
            <div class="clear">
            </div>
        </div>
        <div class="profit-loss-container">
            <div>
                <div class="profit-loss-container-left">
                    <div class="v-line">
                    </div>
                </div>
                <div class="profit-loss-container-right">
                    <div class="v-line">
                    </div>
                </div>
                <div class="clear">
                </div>
            </div>
            <div>
                <div class="deficit-container-left">
                    <div class="v-line">
                    </div>
                </div>
                <div class="total-container-right">
                    <div class="v-line">
                    </div>
                    <div class="clear">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="../js/vendor/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="../js/vendor/bootstrap-3.3.6.js"></script>
    <script type="text/javascript" src="../js/vendor/jquery-ui-1.11.4.js"></script>
    <script type="text/javascript" src="../js/common.js"></script>
    <script type="text/javascript" src="../js/receiptspayments.js"></script>

    <script type="text/javascript">
        $(function () {
            var fromDateCtrl = document.getElementById("fromDate");
            var toDateCtrl = document.getElementById("toDate");

            $(fromDateCtrl).datepicker({
                changeMonth: true,
                changeYear: true
            });
            $(toDateCtrl).datepicker({
                changeMonth: true,
                changeYear: true
            });

        });
    </script>
</asp:Content>
