<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="YC.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>注册</title>
    <link href="css/login-bg.css" rel="stylesheet" />
    <link href="css/register.css" rel="stylesheet" />
    <script src="script/jquery-1.11.0.min.js"></script>
</head>
<body>
    <div id="particles">
        <form id="form1" runat="server">
            <div class="cont">
                <div class="cont-top grid">
                    <a href="login.aspx" class="grid-cell-1">登录</a>
                    <a href="register.aspx" class="grid-cell-1 cont-top-bg">注册</a>
                </div>
                <div class="cont-bom">
                    <div class="txt">
                        <label class="title">手机号码：</label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="txt-input" placeholder="输入您的手机号码"></asp:TextBox>
                    </div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="请填写正确的电话号码,以数字1开头的11位组成" ForeColor="Red" ValidationExpression="^1\d{10}$"></asp:RegularExpressionValidator>
                    
                    <div class="txt">
                        <label class="title">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
                        <asp:TextBox ID="TextBox2" runat="server" type="password" CssClass="txt-input" placeholder="设置您的登录密码"></asp:TextBox>
                    </div>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密码至少在6-16位之间并且包含字母、数字" ForeColor="Red" ValidationExpression="^(?![0-9]+$)(?![a-z]+$)[0-9a-z]{6,16}$"></asp:RegularExpressionValidator>

                    <div class="txt">
                        <label class="title">确认密码：</label>
                        <asp:TextBox ID="TextBox3" runat="server" type="password" CssClass="txt-input" placeholder="再次确认您的登录密码"></asp:TextBox>
                    </div>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ForeColor="Red" ErrorMessage="与密码输入不一致"></asp:CompareValidator>

                    <div class="txt">
                        <label class="title">电子邮箱：</label>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="txt-input" placeholder="输入您的电子邮箱"></asp:TextBox>
                    </div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ValidationExpression="^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$" ForeColor="Red" ErrorMessage="邮箱格式不正确，格式：*******@***.***"></asp:RegularExpressionValidator>

                </div>
                <div class="cont-login">
                    <asp:Button ID="Button1" runat="server" class="login-btn" Text="注册" OnClick="Button1_Click" />
                </div> 
            </div>
        </form>
    </div>
    <script src="script/login-bg.js"></script>
</body>
</html>
