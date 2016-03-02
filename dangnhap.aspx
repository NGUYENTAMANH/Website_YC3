<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="WebSite.dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>
    <style type="text/css">

        .auto-style1 {
            text-align: center;
            font-size: x-large;
            background-color: lavenderblush;
            width: 55%;
            margin: 0 auto;
            height: 218px;
        }
        .auto-style3 {
            color: #9900FF;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style4 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div class="auto-style1">
    
        <strong>&nbsp;&nbsp;&nbsp;<span class="auto-style3">&nbsp;&nbsp; ĐĂNG NHẬP</span><br />
        <br />
        <span class="auto-style2">Username:&nbsp;&nbsp; <asp:TextBox ID="txt_user" runat="server" Width="145px"></asp:TextBox>
        <br />
        <br />
        Password:&nbsp;&nbsp;
        <asp:TextBox ID="txt_pass" runat="server" Width="145px" TextMode="Password"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_login" runat="server" Height="29px" Text="Login" Width="72px" CssClass="auto-style4" OnClick="btn_login_Click" />
        <br />
        <br />
        </span></strong>
    
    </div>
    
    </div>
    </form>
</body>
</html>
