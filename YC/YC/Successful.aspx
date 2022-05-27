<%@ Page Title="" Language="C#" MasterPageFile="~/YC.Master" AutoEventWireup="true" CodeBehind="Successful.aspx.cs" Inherits="YC.Successful" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/Successful.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="centont">
        <div class="worda">
            <div class="box">
                <div class="image">
                    <img src="img/anli1.png" alt="">
                </div>
                <div class="text">
                    <h2>一个隐私安全的播放器</h2>
                    <P>发布人：小小怪</P>
                    <p>筹款资金：20000</p>
                    <p>发布时间：2022-2-21</p>
                    <p>筹资成功时间：2022-3-1</p>
                    <p class="a">
                        这个播放器只是播放视频、音乐，不弹任何广告，没有后台进程，不会上传任何数据，也没有任何数据统计，干干净净的，就是个播放器   
                        目前第一版我已经开发好了，部分基于开源的FFMPEG，完全没有任何广告，没有任何后台进程，不上传任何数据，没有任何后台进程，
                        我希望在众筹网可以收集下大家的需求，不断完善这个播放器，做一个良心播放器   
                        目前我的工资收入足于支持我在工作之余做开发，我希望得到更多人的认可，支持我的开发，   
                        您可以不付任何费用使用，如果您付费支持了，我会在浏览器的“感谢”名单上写上您的名字和网站（如果有），谢谢您的支持，这个软件我希望能有更多朋友在用
                    </p>
                </div>
            </div>
        </div>
        <div class="wordb">
            <div class="box">
                <div class="text">
                    <h2>Discuz Q</h2>
                    <P>发布人：大大怪</P>
                    <p>筹款资金：20000</p>
                    <p>发布时间：2022-2-21</p>
                    <p>筹资成功时间：2022-3-1</p>
                    <p class="a">
                        discuz q 很好用，但有一个缺点是不支持SEO，使得网站无法被百度等搜索引擎收录，很影响网站的宣传和引流，
                        所以我们想众筹想法，一起开发一个Discuz Q 的SEO解决方案，正好我也是一个PHP程序员，我想做成这件事情，
                        帮助更多需要的站长和朋友如果您付费支持了，我会在浏览器的“感谢”名单上写上您的名字和网站（如果有），
                        谢谢您的支持，这个软件我希望能有更多朋友在用
                    </p>
                </div>
                <div class="imageb">
                    <img src="img/anli2.png" alt="">
                </div>
            </div>
        </div>
        <div class="worda">
            <div class="box">
                <div class="image">
                    <img src="img/anli3.png" alt="">
                </div>
                <div class="text">
                    <h2>在新加坡踩过的坑-众筹集锦</h2>
                    <P>发布人：开心超人</P>
                    <p>筹款资金：公益文筹</p>
                    <p>发布时间：2022-2-21</p>
                    <p>筹资成功时间：2022-3-1</p>
                    <p class="a">
                        众筹征集大家在新加坡踩过的坑，教新朋友的避开<br>
                        新加坡生活指南<br>
                        1.吃 2.穿 3.住<br>
                        4.行 4.1打车 4.2买车/买新车/买二手车<br>
                        4.3车保险 4.4交通违规的处理<br>
                        4.5办驾照 5.准证/工作准证EP/SP/WP/DP/家族办公室<br>
                        6.商场购物 7.防电话诈骗<br>
                    </p>
                </div>
            </div>
        </div>
        <div class="wordb">
            <div class="box">
                <div class="text">
                    <h2>众筹网急救求生指南征集</h2>
                    <P>发布人：小心超人</P>
                    <p>筹款资金：20000</p>
                    <p>发布时间：2022-2-21</p>
                    <p>筹资成功时间：2022-3-1</p>
                    <p class="a">
                        在日常生活中，或多或少会遇到一些“状况”，
                        小到是切菜时伤到手指，可能是家里老人摔跤、晕厥等，
                        大到遇到突发灾难等。紧急情况发生时，处理得好，能在第一时间化解危机，
                        处理得不及时或处理方法不正确，则会延误救治的最佳时机，导致不良后果。
                        现诚邀各位提供各种急救生存指南，供大家参考，以至在遇到类似情况下能帮助到您！
                    </p>
                </div>
                <div class="imageb">
                    <img src="img/anli4.png" alt="">
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
