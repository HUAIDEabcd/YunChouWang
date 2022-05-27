<%@ Page Title="" Language="C#" MasterPageFile="~/YC.Master" AutoEventWireup="true" CodeBehind="Project-2.aspx.cs" Inherits="YC.Project_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Project-2.css" rel="stylesheet" />
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
                <li>
                    <a>
                        <span>③完成</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>


     <!--内容添加-->
    <div id="nei">
        <div class="kz">
            <div class="bt">
                <h3>发起人信息</h3>
            </div>
            <table class="biao">
                <tr>
                    <td>真实姓名：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="input-d" placeholder="请输入您的姓名"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>所在地址：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="input-d" placeholder="请输入您的联系地址"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>移动电话：</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="input-d" placeholder="请输入您的电话号码"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>银行名称：</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="input-d" placeholder="请输入您的银行卡名称"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>银行账号：</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="input-d" placeholder="请输入您的银行卡账号"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <a href="faqixm-1.aspx" class="syb">上一步</a><asp:Button ID="Button2" runat="server" Text="提交审核" CssClass="tj" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
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
