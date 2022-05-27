<%@ Page Title="" Language="C#" MasterPageFile="~/YC.Master" AutoEventWireup="true" CodeBehind="Prodetails.aspx.cs" Inherits="YC.Prodetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Prodetails.css" rel="stylesheet" />
    <script src="script/jquery-3.3.1.min.js"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="show">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="head">
                    项目名称：<%# Eval("Proname") %>
                </div>
                <div class="cont-z">
                    <img src="<%# Eval("Proimg") %>" />
                </div>
                <div class="cont-y">
                    <ul>
                        <li>目标金额：<%# Eval("Amount") %></li>
                        <li>目前筹资：<%# Eval("Donprice") %></li>
                        <li>预计天数：<%# Eval("Prodays") %></li>
                        <li>剩余天数：<%# Eval("Daysing") %></li>
                        <li>筹资类型：<%# Eval("Type") %></li>
                        <li>联系方式：<%# Eval("Prophone") %></li>
                        <li>发布地址：<%# Eval("Proaddress") %></li>
                        <li>项目简介：<%# Eval("Protitle") %></li>
                        <li>项目详情：<%# Eval("Protext") %></li>
                    </ul>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        
        <div class="kong">
            <div id="jk">我要捐款</div>
            <div class="prom">
                <h3>请输入您的捐款金额</h3>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="jkk" placeholder="请在这里填写您的金额"></asp:TextBox><br />
                <asp:Button ID="Queding" runat="server" Text="确认" CssClass="btn" style="background:green;" OnClick="Queding_Click" />
                <asp:Button ID="Qvxiao" runat="server" Text="取消" CssClass="btn" style="background:red;" />
            </div>
        </div>
    </div>
    <h2 style="margin-left:23%">评论内容:</h2>
    <div style="padding:10px;width:55%;margin:20px auto;border:1px solid #ccc;border-radius:30px">
        <div style="width:100%">
            <div style="height:50px;width:100%;border-bottom:1px dashed #ccc">
                <ul>
                    <li style="margin-bottom:5px">admin:</li>
                    <li style="">这个号</li>
                </ul>
            </div>
            <div style="height:50px;width:100%;border-bottom:1px dashed #ccc">
                <ul>
                    <li style="margin-bottom:5px">admin:</li>
                    <li style="">这个号</li>
                </ul>
            </div>
            <div style="height:50px;width:100%;border-bottom:1px dashed #ccc">
                <ul>
                    <li style="margin-bottom:5px">admin:</li>
                    <li style="">这个号</li>
                </ul>
            </div>
            <div style="height:50px;width:100%;border-bottom:1px dashed #ccc">
                <ul>
                    <li style="margin-bottom:5px">admin:</li>
                    <li style="">这个号</li>
                </ul>
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

    <script>
        $(function () {
            $("#jk").click(function () {
                $(".prom").toggle();
            });
            $(".btn").click(function () {
                $(".prom").toggle();
            });
            $(".hover").click(function () {
                $(".shezhi").toggle();
            })
        });
        
    </script>

</asp:Content>
