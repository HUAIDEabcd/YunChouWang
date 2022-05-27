<%@ Page Title="" Language="C#" MasterPageFile="~/YC.Master" AutoEventWireup="true" CodeBehind="Project-3.aspx.cs" Inherits="YC.Project_3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Project-3.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--进度条-->
    <div id="jdt">
        <div class="pointsRule">
            <ul>
                <li style="background:#ff6a00">
                    <a>
                    <span style="color:#fff">①项目信息</span><i style="background:#ff6a00"></i>
                    </a>
                </li>
                <li style="background:#ff6a00">
                    <a>
                        <span style="color:#fff">②发起人信息</span><i style="background:#ff6a00"></i>
                    </a>
                </li>
                <li style="background:#ff6a00">
                    <a>
                        <span style="color:#fff">③完成</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div id="rong">
        <div class="zuo">
            <img src="img/shu.png" />
        </div>
        <div class="you">
            <h1>恭喜您成功完成您的<br />求助需求接下来请耐心等候！</h1>
            <a href="index.aspx" style="text-decoration:underline;color:blue"><i>先去看看其他的爱心筹款</i></a>
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
