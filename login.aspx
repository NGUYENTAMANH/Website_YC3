<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            font-weight: bold;
        }
        .auto-style4 {
            color: #9933FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong><span class="auto-style2"><span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ĐĂNG NHẬP</span><br />
        </span>
        <br class="auto-style2" />
        <span class="auto-style2">Username: </span>
        <asp:TextBox ID="txtuser" runat="server" CssClass="auto-style2"></asp:TextBox>
        <br />
        <br class="auto-style2" />
        <span class="auto-style2">Password: </span>
        <asp:TextBox ID="txtpass" runat="server" CssClass="auto-style2"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnlogin" runat="server" CssClass="auto-style3" Height="33px" OnClick="btnlogin_Click" Text="Login" Width="60px" />
        </strong>
    
    </div>
    </form>
</body>
</html>
