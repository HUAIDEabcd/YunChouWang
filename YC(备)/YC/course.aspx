<%@ Page Title="" Language="C#" MasterPageFile="~/YC.Master" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="YC.WebForm1" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>帮助中心</title>
    <link href="css/course.css" rel="stylesheet" />
    <script src="script/jquery-3.3.1.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="word">
        <div id="left">
            <ul>
                <li class="a1">发起项目相关问题<span>></span></li>
                <li class="b1">管理项目相关问题<span>></span></li>
                <li class="c1">转发与扩散相关问题<span>></span></li>
                <li class="d1">帮助项目相关问题<span>></span></li>
                <li class="e1">提现相关问题<span>></span></li>
                <li class="f1">其他问题<span>></span></li>
                <li class="g1">用户服务协议<span>></span></li>
            </ul>
        </div>
        <div id="right">
            <div class="a">
                <div class="centont">如何发起筹款项目？</div>
                <div class="centont">发起筹款项目都需要哪些材料？</div>
                <div class="centont">受助人是谁？收款人是谁？</div>
            </div>
            <div class="b">
                <div class="centont">项目发起后，在哪里查看我的项目？</div>
                <div class="centont">对我的项目可以进行哪些操作？</div>
                <div class="centont">项目发起后，还能够修改吗?</div>
                <div class="centont">如何修改筹款金额？</div>
                <div class="centont">项目如何提前结束</div>
                <div class="centont">如果受助人不幸因病离世，怎么办？</div>
            </div>
            <div class="c">
                <div class="centont">如何让亲友帮我证实？</div>
                <div class="centont">如何能众筹到更多的医疗费？</div>
                <div class="centont">如何让更多好友来帮助我的项目？</div>
            </div>
            <div class="d">
                <div class="centont">我怎么对一个项目进行帮助？</div>
                <div class="centont">目标金额达到，是否可以继续帮助？?</div>
                <div class="centont">帮助过后，可以取消帮助吗？</div>
                <div class="centont">支付成功后筹款金额没有增长？</div>
                <div class="centont">为什么会提示支付失败？</div>
            </div>
            <div class="e">
                <div class="centont">众筹结束后钱存在哪里？?</div>
                <div class="centont">项目结束后，钱怎么提取（提现）？</div>
                <div class="centont">我急需用钱但项目未结束，可否提现？</div>
                <div class="centont">申请提现要多久？</div>
            </div>
            <div class="f">
                <div class="centont">什么是“已审核”标记？?</div>
                <div class="centont">注册的手机号能否变更？</div>
                <div class="centont">注册时收不到验证码怎么办？</div>

            </div>
            <div class="g">
                <div class="centont" style="text-align: center;">用户协议</div>
                <p>
                    如您对本声明或本协议任何条款有异议，请停止注册或使用简书（包括jianshu.com、名称为“简书”的手机端、电脑等设备客户端应用程序，下同）软件及所提供的全部服务。<br>

                    <h3>一、序言</h3>
                    <br>
                    1、您使用简书软件和/或服务，即视为您签署了本协议，表明您自愿接受本协议全部条款的约束，本协议将构成您与上海佰集科技有限公司（以下称我公司）就“简书”软件及服务（以下统称“简书”）之间具有约束力的法律文件。无论您是进入简书浏览网页，还是在简书上发布任何内容，或者是直接或通过各类方式（如站外API引用等）间接使用简书的行为，都将被视作已无条件接受本声明所涉全部内容。
                    <br>
                    2、我公司有权利对本协议进行修改，我公司将在简书相关页面公告或发送通知等方式公布修改的内容，修改后的协议一经公布即有效的代替原协议。如果您不同意本协议的修改，请立即停止访问或使用简书或取消已经获得的服务；如果您选择继续访问或使用简书，则视为您已接受本协议的修改。
                    <br>
                    3、本协议所列明的条款，并不能完全涵盖您与我公司之间所有的权利和义务。因此，我公司不定期公布的其他声明、规则、子协议等均视为本协议之补充协议，为本协议不可分割的组成部分，与本协议具有同等法律效力。
                    <br>
                    4、如本协议与简书的补充协议不一致，以补充协议内容为准。
                    <br>
                    <h3>二、帐号密码与注册、登录</h3>
                    <br>
                    1、帐号的取得 (1)您确认，在您开始使用简书时，已经具备中华人民共和国法律规定的与您行为相适应的民事行为能力。若您不具备前述与您行为相适应的民事行为能力，则您及您的监护人应依照法律规定承担因此而导致的一切后果。
                    <br>
                    (2)您注册成功后，即成为简书注册用户，用户须对在简书的注册信息的真实性、合法性、有效性承担全部责任。您可自行创建、修改昵称，但用户名和昵称的命名及使用应遵守相关法律法规并符合网络道德，不得冒充他人或恶意注册使人误认；不得利用他人的名义发布任何信息；不得恶意使用注册帐号导致其他用户误认；用户名和昵称中不能含有任何侮辱、诽谤、淫秽或暴力等侵害他人合法权益或违反公序良俗的词语。如您违反前述规定，简书有权随时限制或拒绝您使用该账号，甚至注销该账号。 (3)用户名的管理 1)请勿以党和国家领导人或其他名人的真实姓名、字、号、艺名、笔名、头衔等注册和使用昵称（如确为本人，需要提交相关证据并通过审核方可允许使用）； 2)请勿以国家组织机构或其他组织机构的名称等注册和使用昵称（如确为该机构，需要提交相关证据并通过审核方可允许使用）； 3)请勿注册和使用与其他网友相同、相仿的用户名或昵称； 4)请勿注册和使用不文明、不健康的用户名和昵称； 5)请勿注册和使用易产生歧义、引起他人误解或带有各种奇形怪状符号的用户名和昵称。 6)用户以虚假信息骗取账号名称注册，或账号头像、简介等注册信息存在违法和不良信息的，简书将暂停或注销。

                    2、请您妥善保管您注册时填写的用户帐号和密码，不要将帐号密码告知他人，因您原因导致帐号或密码泄露而造成的法律后果由用户负责。同时，您还应当对以此帐号登录进行的所有活动和事件承担全部后果与法律责任。
                    <br>
                    3、若您的帐号或密码遗失，可以通过注册信息按照相关步骤找回密码，若您发现账号遭到未授权的使用或存在其他安全漏洞的情况，应立即告知我公司。
                    <br>
                    <h3>三、实名认证</h3>
                    <br>
                    1、如您在简书注册满31天且您在简书发布的文章不少于10篇且文章不含有抄袭等侵犯第三方权利的内容，您可以自愿申请简书的实名认证。
                    <br>
                    2、为完成实名认证，我公司将会您在申请实名认证过程中所填写或留存的信息进行存储；同时为了准确核验您的身份，您授权我公司收集您的人脸、身份证件等信息。
                    <br>
                    3、为准确核验您的身份，我公司将对您的人脸、身份证件的信息提供给合法存有您信息的第三方机构进行比对核验。我公司向您承诺，我公司会以最大努力保障您的个人信息安全，严格要求该第三方对您的个人信息保密，只以实名认证之目的获悉和使用，不得对无关方泄露或做其他任何用途。
                    <br>
                    4、您理解并同意，您提交的资料和信息是实名认证的重要依据，您保证提供予我公司的所有资料和信息真实、合法、准确和有效。
                    <br>
                    公司：云筹<br>
                    链接：https://www.yunchou.com<br>
                    来源：云筹
                    著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
                </p>
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

    <script src="script/helpe.js"></script>
    <script>
        $(".hover").click(function () {
            $(".shezhi").toggle();
        })
    </script>

</asp:Content>
