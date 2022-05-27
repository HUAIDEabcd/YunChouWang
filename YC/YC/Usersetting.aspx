<%@ Page Title="个人设置" Language="C#" MasterPageFile="~/YC.Master" AutoEventWireup="true" CodeBehind="Usersetting.aspx.cs" Inherits="YC.Usersetting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/usersetting.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="gerenshezhi">
        <h3>个人设置</h3>
    <div id="box">
        <div class="nav-shezhi">
            <ul>
                <li class="a sty f" style="border-top: none;"><img src="img/登录 (1).png" class="denglu">资料修改</li>
                <li class="b"><img  src="img/钥匙.png" class="mima">密码修改</li>
                <li class="c"><img  src="img/图片.png" class="touxiang">头像修改</li>
                <li class="d"><img  src="img/导航地址.png" class="shoujian">收件地址</li>
                <li class="e"><img  src="img/便签,贴纸.png" class="youhui">购优惠码</li>
            </ul>
        </div>
        <div class="nav-word aa">
            <div class="jiben">
                <p>电话：<span><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span></p>
                <p>用户名：<span><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span></p>
                <p>邮箱：<span><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></span></p>
                <p>性别：<span><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></span></p>
                <p>地址：<span><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></span></p>
                <p>个人说明：<span><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></span></p>
                <button id="xiugai" type="button" class="xgbtn">修改</button>
            </div>
            <div class="xiugai">
                <p>用户名：&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></p>
                <p>邮箱：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></p>
                <p>性别：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></p>
                <p>地址：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></p>
                <p>个人说明：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></p>
                <button id="fanhui" runat="server" class="xgbtn">返回</button>
                <asp:Button ID="Queding" runat="server" Text="确认" OnClick="Queding_Click" CssClass="qbbtn" />
            </div>
        </div>
        <div class="nav-word bb">
            <div class="jiben">
                <p>密码：<span>******</span></p>
                <button id="xiugaib" type="button" class="xgbtn">修改</button>
            </div>
            <div class="xiugai">
                <p>旧密码：<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></p>
                <p>新密码：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></p>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="密码至少在6-16位之间并且包含字母、数字" ForeColor="Red" ValidationExpression="^(?![0-9]+$)(?![a-z]+$)[0-9a-z]{6,16}$"></asp:RegularExpressionValidator>
                <p>确认密码：<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></p>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="两次密码输入不一致" ForeColor="Red"></asp:CompareValidator><br />
                <button id="fanhuib" class="xgbtn">返回</button>
                <asp:Button ID="Mimabtn" runat="server" Text="确认" OnClick="Mimabtn_Click" CssClass="qbbtn" />
            </div>
        </div>
        <div class="nav-word cc">
            <div class="jiben">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <p><img src='<%#Eval("Portrait") %>' style="width:150px;height:150px;border-radius:75px;border:1px solid #000;"></p>
                    </ItemTemplate>
                </asp:Repeater>
                <p>
                    <asp:FileUpload ID="FileUpload1" runat="server" /><asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                </p>

                <asp:Button ID="Imgbtn" runat="server" Text="确认" CssClass="xgbtn" OnClick="Imgbtn_Click" />
            </div>
        </div>
        <div class="nav-word dd">
            <div class="jiben">
                <p>收件地址：<span><asp:Label ID="Label7" runat="server" Text=""></asp:Label></span></p>
                <button id="xiugaid" type="button" class="xgbtn">修改</button>
            </div>
            <div class="xiugai">
                <p>收件地址：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></p>
                <button id="fanhuid" class="xgbtn" >返回</button>
                <asp:Button ID="Dzbtn" runat="server" Text="确认" OnClick="Dzbtn_Click" CssClass="qbbtn" />
            </div>
        </div>
        <div class="nav-word ee">
            <div class="jiben">
                <p>您暂时没有优惠券</p>
            </div>
        </div>
    </div>
    </div>

    <ul class="shezhi">
        <a href="Usersetting.aspx"><li>个人设置</li></a>
        <a href="#"><li>发布设置</li></a>
        <a href="#"><li>消息通知</li></a>
        <a href="#"><li><asp:Button Text="退出登录" runat="server" ID="Exit" OnClick="Exit_Click" style="background:none;border:none;" /></li></a>
        <a href="#"><li>切换账户</li></a>
    </ul>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <script src="script/jquery-3.3.1.min.js"></script>
    <script src="script/main.js"></script>
    <script>
        $(".hover").click(function () {
            $(".shezhi").toggle();
        })
    </script>
</asp:Content>
