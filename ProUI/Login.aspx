<%@ Page Title="" Language="C#" MasterPageFile="~/masters/main.Master" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="ProUI.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="Stylesheet" href="css/register.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div id="loginContainer">
        <p>
            Login View</p>
        <input type="button" id="btnLogin" value="Login" onclick="loginUser()" />
    </div>--%>
    <div class="login-container">
        <form class="login-form">
        <h2 class="login-form-heading">
            Sign In</h2>
        <label for="loginId">
            Login Id</label>
        <input type="text" name="username" id="loginId" class="form-control required" placeholder="Login Id" />
        <%--<label for="loginEmail" class="1sr-only">Email address</label>
			<input type="email" id="loginEmail" name="loginEmail" class="form-control required" placeholder="Email address" required="" autofocus="true"/>--%>
        <label for="loginPassword" class="1sr-only">
            Password</label>
        <input type="password" id="loginPassword" name="password" class="form-control required"
            placeholder="Password" required="" />
        <!-- <div class="checkbox">
				<label>
					<input type="checkbox" value="remember-me"> Remember me
				</label>
			</div> -->
        <button class="btn btn-lg btn-primary btn-block" id="login-button" type="submit">
            Sign in</button>
        <div class="login-help">
            <a href="#" title="forgotpassword">Forgot Password</a> - <a href="#" title="registerLink">
                Register</a>
        </div>
        </form>
        <form class="registration-form">
        <h2 class="login-form-heading">
            Sign UP</h2>
        <label for="regName" class="1sr-only">
            Name</label>
        <input type="text" name="regName" id="regName" class="form-control required" placeholder="User name"
            required="" autofocus="" />
        <label for="inputEmail" class="1sr-only">
            Mobile No</label>
        <input type="number" name="regMobile" id="regMobile" class="form-control" placeholder="Mobile number"
            required="" autofocus="" />
        <label for="inputEmail" class="1sr-only">
            Email address</label>
        <input type="email" name="regEmail" id="regEmail" class="form-control" placeholder="Email address"
            required="" autofocus="" />
        <label for="inputPassword" class="1sr-only">
            Password</label>
        <input type="password" name="regPassword" id="regPassword" class="form-control" placeholder="Password"
            required="" />
        <label for="inputPassword" class="1sr-only">
            Confirm Password</label>
        <input type="password" name="regConfirmPassword" id="regConfirmPassword" class="form-control"
            placeholder="Confirm password" required="" />
        <button class="btn btn-lg btn-primary btn-block" type="button" id="registration-button">
            Sign Up</button>
        <div class="login-help">
            <a href="#" title="registerLink">Sign In</a>
        </div>
        </form>
    </div>
    <script type="text/javascript" src="js/vendor/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/vendor/bootstrap-3.3.6.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/login.js"></script>
</asp:Content>
