<%@ Page Title="" Language="C#" MasterPageFile="~/YC.Master" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="YC.Project" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/project.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="rong">
        <div class="pian">
            <div class="top">
                <h4>发起项目</h4>
            </div>
            <div class="di">
                <div class="zuo">
                    <img src="img/shu.png" />
                </div>
                <div class="you">
                    <p class="da">如果你有一颗<span>真诚的心</span></p>
                    <p class="dada">那么请在这里发起<span>你的梦想</span></p>
                    <p class="ttt">云筹网是一家可以帮助您完成梦想的网站，在这里您可以发布您的梦想、创意和创业计划，并通过网络平台面向公众集资，让有创造力的人可以获得他们所需要的资金，以便使他们的梦想有可能实现。</p>
                    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="chk" /><p>阅读并同意云筹网的<a href="javascript:;">《服务协议》</a><a href="javascript:;">《众筹公告》</a></p>
                    <asp:Button ID="Button1" runat="server" Text="立即发起项目" CssClass="btn" OnClick="Button1_Click"/>
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
                <script>
                    $(".hover").click(function () {
                        $(".shezhi").toggle();
                    })
                </script>

</asp:Content>
