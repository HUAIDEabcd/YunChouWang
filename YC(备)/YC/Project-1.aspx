<%@ Page Title="" Language="C#" MasterPageFile="~/YC.Master" AutoEventWireup="true" CodeBehind="Project-1.aspx.cs" Inherits="YC.Project_1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Project-1.css" rel="stylesheet" />
    <script src="script/jquery-3.3.1.min.js"></script>
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
                <li>
                    <a>
                        <span>②发起人信息</span><i></i>
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
                <h3>项目信息</h3>
            </div>
            <table class="biao">
                <tr>
                    <td>项目名称：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="input-c" placeholder="名称不能超过40个字"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>筹资金额：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="input-d" placeholder="不能少于500元"></asp:TextBox>元
                    </td>
                </tr>
                <tr>
                    <td>筹集天数：</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="input-d" placeholder="10～90天"></asp:TextBox>天
                    </td>
                </tr>
                <tr>
                    <td>手机号码：</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="input-d" placeholder="填写您的电话号码"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>类别：</td>
                    <td>
                        <select id="types" runat="server">
                            <option value="jiatingkunnan">家庭困难</option>
                            <option value="shangyekunnan">商业困难</option>
                            <option value="ziranzaihai">自然灾害</option>
                            <option value="chuangyezhongchou">创业众筹</option>
                            <option value="jingjikunnan">经济困难</option>
                            <option value="qita">其它</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>项目地点：</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="input-d" placeholder="填写您的地址"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>项目封面：</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" /><span>上传图片格式为.jpg, .gif, .bmp,.png,图片大小不得超过8M</span>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="fw">项目简介：</td>
                    <td>
                        <textarea id="TextArea1" cols="20" rows="2" class="jjtxt" runat="server"></textarea>
                    </td>
                </tr>
                <tr>
                    <td class="fw">项目详情：</td>
                    <td>
                        <textarea id="TextArea2" cols="40" rows="10" class="xqtxt" runat="server"></textarea>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="下一步" CssClass="xyb" OnClick="Button2_Click" />
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

    <script type="text/javascript">
        $(".hover").click(function () {
            $(".shezhi").toggle();
        })
    </script>

</asp:Content>
