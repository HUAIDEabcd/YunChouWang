use master

go

/*if DB_ID("ABC") is not null
    drop database abc*/

if exists(select * from sys.databases where name='Yun')
	drop database Yun
go

/*创建数据库*/
create database Yun;

go

use Yun

go

/*账户表*/
create table Users(
    UserId int primary key identity(1,1),                                    /*账户ID 主键  自增*/
    Phone nvarchar(11) unique not null,                                      /*电话 非空*/
    Password nvarchar(50) not null,                                          /*密码 非空*/
    Email nvarchar(50) not null,                                             /*邮箱  非空*/
    Username nvarchar(50) default ('User-001'),								 /*用户名 默认*/
    Sex nvarchar(2),                                                         /*性别*/
    Address nvarchar(50),                                                    /*地址*/
    Usertext nvarchar(150),                                                  /*个人说明*/
    Portrait nvarchar(100)                                                   /*头像*/
);

go

--创建众筹项目表
create table Project(
    ProID int primary key identity(1,1),                                --项目ID 主键  自增
    UserID int references Users(UserID) not null,                       --主键（用户表ID）
    Proname nvarchar(20) not null,                                      /*项目名称 非空*/
    Amount decimal(8,2) not null,                                       /*目标金额 非空*/
    Prodays nvarchar(50) not null,                                      /*筹集天数 非空*/
    Type nvarchar(20),                                                  /*类别*/
    Proaddress nvarchar(50),                                            /*项目地点*/
    Proimg nvarchar(100),                                               /*项目封面*/
    Protitle nvarchar(50),                                              /*项目简介*/
    Protext nvarchar(150),                                              /*项目详情*/
    Prophone nvarchar(11) not null,                                     /*项目手机号*/
    Donprice decimal(8,2),                                              /*已捐献金额*/
    Daysing int				--剩余天数
);

go

/*创建捐献表*/
create table Donate(
    DonId int primary key identity(1,1),                                --捐献ID
    UsersID int references Users(UserID) not null,                      --主键（用户表ID）
    ProID int references Project(ProID) not null,                       --主键（项目表ID）
    Donprice decimal(8,2) not null,                                     --捐献金额
    Dontime datetime,                                                   --捐献时间
    Donphone nvarchar(11) not null                                      --捐献手机号
)

go

--创建银行信息表
create table Message(
    MessId int primary key identity(1,1),                               --发布信息ID
    usersID int references Users(UserID) not null,                      --主键（用户表ID）
    Messname nvarchar(20) not null,                                     --发布者姓名
    Messaddress nvarchar(100) not null,                                 --发布者地址
    Messphone nvarchar(11) not null,                                    --发布者电话
    Bankname nvarchar(50) not null,                                     --银行名称
    Bankcard nvarchar(20) not null                                      --银行卡卡号
)

go


--插入用户表数据        电话 非空    密码 非空          邮箱                   用户名 性别     地址             个人说明              头像
insert Users values('16786451325','123456','12345678900@qq.com','小黑','男','东西省华南市','尽情聆听风的的声音','face/dmn.jpeg')
insert Users values('12345678910','123456','45632148923@qq.com','小白','男','沿海省南茂市','我是这个世界的梦魇','face/xnh.jpeg')
insert Users values('11321546545','123456','78953424644@qq.com','黑白','男','西疆省柯泽市','想要赚大钱','face/pig.jpeg')
insert Users values('14984561374','123456','34567243657@qq.com','小红','女','择优省有钱市','快来吧！快来吧！','face/xkl.jpeg')
insert Users values('11868745434','123456','24657532543@qq.com','小绿','男','南三省天翼市','无','face/dog.jpeg')
insert Users values('00000000000','123456','14685236189@qq.com','admin','男','天上人间市','我是废物',null)
select * from USers


--插入众筹项目表数据 用户ID 项目名称   目标金额 筹集天数 类别   项目地点      项目封面						项目简介													项目详情													项目手机号  已筹金额 剩余天数
insert Project values('5','清华五道口','300000','30','商业困难','北京','picture/wudaokou.jpeg','《清华五道口》学院地基项目开发中','我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱','11868745434','1234','15')
insert Project values('4','北大五道口','300000','30','商业困难','北京','picture/beida.jpeg','你想要学习吗？你想要知识吗？','我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱','14984561374','3214','12')
insert Project values('5','佳丽顿大学','300000','30','商业困难','外加','picture/jialidun.jpeg','著名家里蹲持续广告招租中','我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱','11868745434','4567','6')
insert Project values('3','小小贫困生','300000','30','家庭困难','西姆','picture/xiaopinkun.jpeg','我想要上学，你能够帮帮我吗','我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱','11321546545','3214','19')
insert Project values('2','小山仡佬的','300000','30','自然灾害','天市','picture/sgelao.jpeg','家乡的交通极为不便，因此而落后','我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱','12345678910','7896','20')
insert Project values('1','悲凉咖啡馆','60000','20','经济困难','北市','picture/kafeiguan.jpeg','北市东明路咖啡馆即将开业！！','我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱','16786451325','96','19')
insert Project values('3','创业基金','200000','25','创业众筹','东庄','picture/chuangye.jpeg','都说我不能够成功我偏要做','我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱','11321546545','7896','17')
insert Project values('1','短暂时光','100000','30','其它','上光','picture/shiguang.jpeg','浪漫是短暂的时间是永远的','我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱','16786451325','7896','1')
insert Project values('2','超级佳人','89691','20','其它','南市','picture/supjiaren.jpeg','你有女朋友吗，赶紧来领吧','我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱','12345678910','7896','11')
insert Project values('4','京大阿里','600000','50','经济困难','京市','picture/jingdaali.jpeg','我可以满足你的一切消费需求','我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱','14984561374','100296','5')
insert Project values('4','大学生创业','100000','30','创业众筹','华南市','picture/daxueshengcy.jpg','谁说大学生就干不出一番事业','我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱','14984561374','100296','7')
insert Project values('1','爱情博物馆','200000','30','创业众筹','京津市','picture/aiqingbwg.jpeg','你品尝过爱情的苦吗？','我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱','14984561374','100296','3')
select * from Project


--插入捐献表数据   UserID ProID 捐金      时间        手机号
insert Donate values('1','1','2000','2012-09-01','16786451325')
insert Donate values('1','2','3000','2012-09-01','16786451325')
insert Donate values('2','3','200','2012-02-10','12345678910')
insert Donate values('2','4','1000','2012-03-05','12345678910')
insert Donate values('3','10','300','2012-06-15','11321546545')
insert Donate values('3','11','300','2012-08-21','11321546545')
insert Donate values('4','8','100','2012-07-19','14984561374')
insert Donate values('4','9','200','2012-08-13','14984561374')
insert Donate values('5','6','900','2012-06-12','11868745434')
insert Donate values('5','7','800','2012-06-13','11868745434')
insert Donate values('5','5','700','2012-06-14','11868745434')
select * from Donate


--插入银行信息表数据  UserID 姓名       地址          电话          银行            银行卡卡号
insert Message values('1','小黑','东西省华南市','16786451325','华国种地银行','468415324896335216')
insert Message values('2','小白','沿海省南茂市','12345678910','华国种地银行','685347843541546432')
insert Message values('3','黑白','西疆省柯泽市','11321546545','华国诚信银行','763548743546751346')
insert Message values('4','小红','择优省有钱市','14984561374','华国诚信银行','134987432418654545')
insert Message values('5','小绿','南三省天翼市','11868745434','华国友情银行','345487975434876464')
insert Message values('6','郁','江北省冀唐市','12345678910','华国友情银行','123658521568131684')
select * from Message


