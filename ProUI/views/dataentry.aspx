<%@ Page Title="" Language="C#" MasterPageFile="~/masters/auth.Master" AutoEventWireup="true"
    CodeBehind="dataentry.aspx.cs" Inherits="BookUI.views.dataentry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="Stylesheet" href="../css/lib/jquery-ui.css" />
    <link rel="Stylesheet" href="../css/register.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="data-entry-container">
        <form class="data-entry-form1">
        <h2 class="login-form-heading">
            ADD ENTRY</h2>
        <div class="has-error">
            <label class="control-label data-entry-error hide" for="inputError">
                Please Enter All Values</label>
        </div>
        <!-- <div class="data-entry-error hide has-error">Please Enter All Values</div> -->
        <div class="col-md-3">
            <label for="date" class="1sr-only">
                Date</label>
            <input type="text" name="date" class="datepicker form-control" placeholder="" required=""
                autofocus="" />
        </div>
        <div class="col-md-3 form-group">
            <label for="ledger" class="1sr-only">
                Ledger</label>
            <select name="ledger" class="form-control">
                <option>Please Select Ledger</option>
            </select>
        </div>
        <div class="col-md-3">
            <label for="amount" class="1sr-only">
                Amount</label>
            <input type="number" name="amount" id="amount" class="form-control" placeholder=""
                required="" autofocus="" />
        </div>
        <div class="col-md-3">
            <label for="narration" class="1sr-only">
                Narration</label>
            <input type="text" name="narration" id="narration" class="form-control" placeholder=""
                required="" autofocus="" />
        </div>
        <div class="clearBoth">
        </div>
        </form>
        <form class="data-entry-form2">
        <div class="col-md-3">
            <label for="date" class="1sr-only">
                Date</label>
            <input type="text" name="date" class="datepicker form-control" placeholder="" required=""
                autofocus="" />
        </div>
        <div class="col-md-3 form-group">
            <label for="regName" class="1sr-only">
                Ledger</label>
            <select name="ledger" class="form-control">
                <option>Please Select Ledger</option>
                
            </select>
        </div>
        <div class="col-md-3">
            <label for="amount" class="1sr-only">
                Amount</label>
            <input type="number" name="amount" id="amount" class="form-control" placeholder=""
                required="" autofocus="" />
        </div>
        <div class="col-md-3">
            <label for="narration" class="1sr-only">
                Narration</label>
            <input type="text" name="narration" id="narration" class="form-control" placeholder=""
                required="" autofocus="" />
        </div>
        <div class="clearBoth">
        </div>
        </form>
        <form class="data-entry-form3">
        <div class="col-md-3">
            <label for="date" class="1sr-only">
                Date</label>
            <input type="text" name="date" class="datepicker form-control" placeholder="" required=""
                autofocus="" />
        </div>
        <div class="col-md-3 form-group">
            <label for="regName" class="1sr-only">
                Ledger</label>
            <select name="ledger" class="form-control">
                <option>Please Select Ledger</option>
            </select>
        </div>
        <div class="col-md-3">
            <label for="amount" class="1sr-only">
                Amount</label>
            <input type="number" name="amount" id="amount" class="form-control" placeholder=""
                required="" autofocus="" />
        </div>
        <div class="col-md-3">
            <label for="narration" class="1sr-only">
                Narration</label>
            <input type="text" name="narration" id="narration" class="form-control" placeholder=""
                required="" autofocus="" />
        </div>
        <div class="clearBoth">
        </div>
        </form>
        <form class="data-entry-form4">
        <div class="col-md-3">
            <label for="date" class="1sr-only">
                Date</label>
            <input type="text" name="date" class="datepicker form-control" placeholder="" required=""
                autofocus="" />
        </div>
        <div class="col-md-3 form-group">
            <label for="regName" class="1sr-only">
                Ledger</label>
            <select name="ledger" class="form-control">
                <option>Please Select Ledger</option>
            </select>
        </div>
        <div class="col-md-3">
            <label for="amount" class="1sr-only">
                Amount</label>
            <input type="number" name="amount" id="amount" class="form-control" placeholder=""
                required="" autofocus="" />
        </div>
        <div class="col-md-3">
            <label for="narration" class="1sr-only">
                Narration</label>
            <input type="text" name="narration" id="narration" class="form-control" placeholder=""
                required="" autofocus="" />
        </div>
        <div class="clearBoth">
        </div>
        </form>
        <div class="col-md-12">
            <button class="btn btn-primary" type="button" id="">
                Cancel</button>
            <button class="btn btn-primary" type="button" id="data-entry-success">
                Save Entry</button>
        </div>
    </div>
    <%--<div class="container">
        <div class="col-lg-4 col-lg-offset-4" style="margin-top: 10px;">
            <div class="form-group">
                <input type="button" id="btnadmin" class="btn btn-primary right" value="Sava Changes" />
            </div>
        </div>
        <div class="col-lg-6">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>
                            Firstname
                        </th>
                        <th>
                            Mobile
                        </th>
                        <th>
                            Email
                        </th>
                        <th>
                            Status
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            John
                        </td>
                        <td>
                            7392346876
                        </td>
                        <td>
                            john@example.com
                        </td>
                        <td>
                            <select>
                                <option>Enable</option>
                                <option>Disable</option>
                                <option>Delete</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mary
                        </td>
                        <td>
                            7382476952
                        </td>
                        <td>
                            mary@example.com
                        </td>
                        <td>
                            <select>
                                <option>Enable</option>
                                <option>Disable</option>
                                <option>Delete</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            July
                        </td>
                        <td>
                            9985848447
                        </td>
                        <td>
                            july@example.com
                        </td>
                        <td>
                            <select>
                                <option>Enable</option>
                                <option>Disable</option>
                                <option>Delete</option>
                            </select>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>--%>
    <script type="text/javascript" src="../js/vendor/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="../js/vendor/bootstrap-3.3.6.js"></script>
    <script type="text/javascript" src="../js/login.js"></script>
    <script type="text/javascript" src="../js/vendor/jquery-ui-1.11.4.js"></script>
    <script type="text/javascript" src="../js/common.js"></script>
</asp:Content>
