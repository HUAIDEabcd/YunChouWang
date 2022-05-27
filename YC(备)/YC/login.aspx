<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="YC.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录</title>
    <link href="css/login-bg.css" rel="stylesheet" />
    <link href="css/login.css" rel="stylesheet" />
    <script src="script/jquery-1.11.0.min.js"></script>
</head>
<body>
    <div id="particles">
        <form id="form1" runat="server">
            <div class="cont">
                <div class="cont-top grid">
                    <a href="login.aspx" class="grid-cell-1 cont-top-bg">登录</a>
                    <a href="register.aspx" class="grid-cell-1">注册</a>
                </div>
                <div class="cont-bom">
                    <div class="txt">
                        <label class="title">手机号:</label>
                        <asp:TextBox ID="TextBox1" runat="server" class="txt-input" placeholder="请输入手机号码"></asp:TextBox> 
                    </div>
                    <asp:RequiredFieldValidator ID="revUserName" runat="server" ForeColor="Red" ControlToValidate="TextBox1" ErrorMessage="请输入您的手机号码！"></asp:RequiredFieldValidator>
                    

                    <div class="txt">
                        <label class="title">密&nbsp;&nbsp;&nbsp;码:</label>
                        <asp:TextBox ID="TextBox2" runat="server" type="password" class="txt-input" placeholder="请输入密码"></asp:TextBox>
                    </div>
                    <asp:RegularExpressionValidator ID="revPwd" runat="server" ControlToValidate="TextBox2" ErrorMessage="密码至少6-16位数字或英文" ForeColor="Red" ValidationExpression="^.{6,16}$"></asp:RegularExpressionValidator>

                  
                </div>
                <div class="cont-login">
                    <asp:Button ID="Button1" runat="server" class="login-btn" Text="登录" OnClick="Button1_Click" />
                </div> 
            </div>
            
        </form>
    </div>
    <script src="script/login-bg.js"></script>

</body>
</html>
