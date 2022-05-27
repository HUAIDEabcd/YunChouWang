<%@ Page Title="" Language="C#" MasterPageFile="~/YC.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="YC.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--head部分-->
    <link href="css/index.css" rel="stylesheet" />
    <script src="script/jquery-3.3.1.min.js"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--body部分-->
    <!--小导航-->
    <div class="nav-d">
	    <ul class="grid nav-top">
			<li class="grid-cell-1">
                <asp:Button ID="Button1" runat="server" OnClick="Quanbu_Click" Text="全部" CssClass="none" />
			</li>
		    <li class="grid-cell-1">
                <asp:Button ID="Button2" runat="server" OnClick="Jiating_Click" Text="家庭困难" CssClass="none" />
		    </li>
			<li class="grid-cell-1">
                <asp:Button ID="Button3" runat="server" OnClick="Shangye_Click" Text="商业困难" CssClass="none" />
			</li>
			<li class="grid-cell-1">
                <asp:Button ID="Button4" runat="server" OnClick="Ziran_Click" Text="自然灾害" CssClass="none" />
			</li>
			<li class="grid-cell-1">
                <asp:Button ID="Button5" runat="server" OnClick="Chuangye_Click" Text="创业众筹" CssClass="none" />
			</li>
			<li class="grid-cell-1">
                <asp:Button ID="Button6" runat="server" OnClick="Jingji_Click" Text="经济困难" CssClass="none" />
			</li>
			<li class="grid-cell-1">
                <asp:Button ID="Button7" runat="server" OnClick="Qita_Click" Text="其它" CssClass="none" />
			</li>
            <li class="grid-cell-4">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="请输入搜索内容" CssClass="ssk"></asp:TextBox>
                <asp:Button ID="Button8" runat="server" Text="搜索" OnClick="Sousuo_Click" CssClass="ssj"/>
            </li>
		</ul>
	</div>
    <!--轮播图-->
    <div class="cont">
        <div id="banner">
			<div class="swiper-list">
			</div>
        </div>
    </div>
    <!--项目展示-->
    <div class="project">
        <h4>热门项目</h4>
        <div class="show">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <a href="Prodetails.aspx?id=<%#Eval("Proid") %>">
                    <div class="show-project">
                        <p class="id">
                            <%# Eval("Proid") %>
                            <%# Eval("Userid") %>
                            <%# Eval("Type") %>
                            <%# Eval("Proaddress") %>
                            <%# Eval("Protext") %>
                            <%# Eval("Prophone") %>
                        </p>
                        <div class="pro">
                            <div class="project-img">
                                <img src="<%# Eval("Proimg") %>" />
                            </div>
                            <div class="project-txt">
                                <p><%# Eval("Protitle") %></p>
                                <p>
                                    目标:<%# Eval("Prodays") %>天&nbsp;&nbsp;￥:<%# Eval("Amount") %>&nbsp;&nbsp;<input type="button" value="众筹中" />
                                </p>
                                <p>
                                    已筹资：<%# Eval("Donprice") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;剩余天数：<%#Eval("Daysing") %>
                                </p>
                            </div>
                        </div>
                    </div>
                    </a>
                </ItemTemplate>
            </asp:Repeater>
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
    <!--尾部部分-->
    <script src="script/banner.js"></script>
    <script>
        console.time();
        let imgArr = [
            {
                url: '#',
                imgPath: 'img/banner1.png'
            },
            {
                url: '#',
                imgPath: 'img/banner2.png'
            },
            {
                url: '#',
                imgPath: 'img/banner3.png'
            },
            {
                url: '#',
                imgPath: 'img/banner4.png'
            },
            {
                url: '#',
                imgPath: 'img/banner5.png'
            }
        ];
        // let imgArr = ['i.jpg', 'o.jpg', 'q.jpeg'];
        // let imgArr = ['i.jpg', 'o.jpg'];
        // let imgArr = ['i.jpg'];
        new Swiper({
            imgArr: imgArr,
            aniTIme: 1000,
            intervalTime: 1000,
            autoplay: true
        }).init();
        console.timeEnd();



        $(".hover").click(function () {
            $(".shezhi").toggle();
        })
    </script>


</asp:Content>
