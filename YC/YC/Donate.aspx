<%@ Page Title="" Language="C#" MasterPageFile="~/YC.Master" AutoEventWireup="true" CodeBehind="Donate.aspx.cs" Inherits="YC.Donate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Donate.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="cont">
        <table class="tab">
            <tr>
                <td>捐献项目</td>
                <td>卷捐献金额</td>
                <td>捐献时间</td>
                <td>预留电话</td>
                <td>操作</td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr>
                        <td style="display:none"><%# Eval("Donid")%></td>
                        <td><%# Eval("Proname") %></td>
                        <td><%# Eval("Donprice") %></td>
                        <td><%# Eval("Dontime") %></td>
                        <td><%# Eval("Donphone") %></td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="删除" OnClientClick="return window.confirm('确认是否删除？')" CommandName="Del" CommandArgument='<%#Eval("Donid") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
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
