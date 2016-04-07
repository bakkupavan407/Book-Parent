<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ProUI.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/vendor/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">
        function UpdateUserDetail() {
            var usersJson = GetSampleUsersList();
            var getReportColumnsParams = {
                "usersJson": usersJson
            };
            console.log(getReportColumnsParams);
            $.ajax({
                type: "POST",
                traditional: true,
                async: false,
                cache: false,
                url: '/DataEntry/UpdateUsersDetail',
                context: document.body,
                data: getReportColumnsParams,
                success: function (result) {
                    alert(result);
                },
                error: function (xhr) {
                    //debugger;  
                    console.log(xhr.responseText);
                    alert("Error has occurred..");
                }
            });
        }
        function GetSampleUsersList() {
            var userDetails = {};

            userDetails["UserId"] = "bakku";
            userDetails["UserName"] = "Pavan";
            userDetails["Company"] = "OSI";
            console.log(userDetails); 
            console.log(JSON.stringify(userDetails));

            return JSON.stringify(userDetails);
        }  
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <label>
                Create Sample User JSON Data and send it to controller</label><br />
            <br />
            <input type="button" id="btnUpdateUserDetail" value="Update User Detail" onclick="UpdateUserDetail();" />
        </div>
    </div>
    </form>
</body>
</html>
