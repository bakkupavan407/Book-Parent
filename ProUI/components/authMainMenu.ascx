<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="authMainMenu.ascx.cs"
    Inherits="BookUI.Components.authMainMenu" %>
<link href="../css/authmainmenu.css" rel="stylesheet" />
<script type="text/javascript" src="../js/vendor/jquery-1.11.3.min.js"></script>
<div id="authmenu">
    <ul id="ul_menu" class="auth-mainmenu">
        <li class="li_menu"><a href="../views/settings.aspx" class="a_menu">Settings</a></li>
        <li class="li_menu"><a href="../views/dataentry.aspx" class="a_menu">Data Entry</a></li>
        <li class="li_menu"><a href="../views/editdata.aspx" class="a_menu">Edit Data</a></li>
        <li class="li_menu"><a href="../views/reports.aspx" class="a_menu">Reports</a></li>
        <li class="li_menu"><a href="../views/receptpayments.aspx" class="a_menu">Receipts&
            Payments</a></li>
    </ul>
    <ul id="ul_right">
        <li class="li_menu"><span>Welcome
            <label id="lblWelcomeName">
            </label>
            <asp:Label runat="server" ID="lblUname" Text=""></asp:Label>
        </span></li>
        <li class="li_menu"><a href="../Logout.aspx" class="a_menu">Logout</a></li>
    </ul>
</div>
<%--<script type="text/javascript">
    $(document).ready(function () {
        var qstring = window.location.search.substring(1);
        var parms = qstring.split('&');
        var myobj = parms[0].toString();
        var pos = myobj.indexOf('=');
        var val = parms[0].substring(pos + 1);

        document.getElementById("lblWelcomeName").innerHTML = val;
    });
</script>--%>
