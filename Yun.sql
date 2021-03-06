USE [master]
GO
/****** Object:  Database [Yun]    Script Date: 2022/5/23 8:26:08 ******/
CREATE DATABASE [Yun]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Yun', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Yun.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Yun_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Yun_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Yun] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Yun].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Yun] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Yun] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Yun] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Yun] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Yun] SET ARITHABORT OFF 
GO
ALTER DATABASE [Yun] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Yun] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Yun] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Yun] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Yun] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Yun] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Yun] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Yun] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Yun] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Yun] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Yun] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Yun] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Yun] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Yun] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Yun] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Yun] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Yun] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Yun] SET RECOVERY FULL 
GO
ALTER DATABASE [Yun] SET  MULTI_USER 
GO
ALTER DATABASE [Yun] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Yun] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Yun] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Yun] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Yun] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Yun] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Yun', N'ON'
GO
ALTER DATABASE [Yun] SET QUERY_STORE = OFF
GO
USE [Yun]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 2022/5/23 8:26:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[ComId] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [int] NOT NULL,
	[Proid] [int] NOT NULL,
	[Comtext] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[ComId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donate]    Script Date: 2022/5/23 8:26:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donate](
	[DonId] [int] IDENTITY(1,1) NOT NULL,
	[UsersID] [int] NOT NULL,
	[ProID] [int] NOT NULL,
	[Donprice] [decimal](8, 2) NOT NULL,
	[Dontime] [datetime] NULL,
	[Donphone] [nvarchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 2022/5/23 8:26:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[MessId] [int] IDENTITY(1,1) NOT NULL,
	[usersID] [int] NOT NULL,
	[Messname] [nvarchar](20) NOT NULL,
	[Messaddress] [nvarchar](100) NOT NULL,
	[Messphone] [nvarchar](11) NOT NULL,
	[Bankname] [nvarchar](50) NOT NULL,
	[Bankcard] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 2022/5/23 8:26:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[ProID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Proname] [nvarchar](20) NOT NULL,
	[Amount] [decimal](8, 2) NOT NULL,
	[Prodays] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](20) NULL,
	[Proaddress] [nvarchar](50) NULL,
	[Proimg] [nvarchar](100) NULL,
	[Protitle] [nvarchar](50) NULL,
	[Protext] [nvarchar](150) NULL,
	[Prophone] [nvarchar](11) NOT NULL,
	[Donprice] [decimal](8, 2) NULL,
	[Daysing] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2022/5/23 8:26:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [nvarchar](11) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Sex] [nvarchar](2) NULL,
	[Address] [nvarchar](50) NULL,
	[Usertext] [nvarchar](150) NULL,
	[Portrait] [nvarchar](100) NULL,
	[Receing] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([ComId], [Userid], [Proid], [Comtext]) VALUES (1, 2, 1, N'希望我也能考到这里')
INSERT [dbo].[Comment] ([ComId], [Userid], [Proid], [Comtext]) VALUES (2, 1, 2, N'我的愿望就是在这里上学')
INSERT [dbo].[Comment] ([ComId], [Userid], [Proid], [Comtext]) VALUES (3, 2, 4, N'我捐的不多，希望多尽一份力')
INSERT [dbo].[Comment] ([ComId], [Userid], [Proid], [Comtext]) VALUES (4, 1005, 4, N'捐了200，不多但是是我自己挣得')
INSERT [dbo].[Comment] ([ComId], [Userid], [Proid], [Comtext]) VALUES (5, 4, 1, N'希望我明年能够出现在这里')
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Donate] ON 

INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (1, 1, 1, CAST(2000.00 AS Decimal(8, 2)), CAST(N'2012-09-01T00:00:00.000' AS DateTime), N'16786451325')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (2, 1, 2, CAST(3000.00 AS Decimal(8, 2)), CAST(N'2012-09-01T00:00:00.000' AS DateTime), N'16786451325')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (4, 2, 4, CAST(1000.00 AS Decimal(8, 2)), CAST(N'2012-03-05T00:00:00.000' AS DateTime), N'12345678910')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (5, 3, 10, CAST(300.00 AS Decimal(8, 2)), CAST(N'2012-06-15T00:00:00.000' AS DateTime), N'11321546545')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (6, 3, 11, CAST(300.00 AS Decimal(8, 2)), CAST(N'2012-08-21T00:00:00.000' AS DateTime), N'11321546545')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (7, 4, 8, CAST(100.00 AS Decimal(8, 2)), CAST(N'2012-07-19T00:00:00.000' AS DateTime), N'14984561374')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (8, 4, 9, CAST(200.00 AS Decimal(8, 2)), CAST(N'2012-08-13T00:00:00.000' AS DateTime), N'14984561374')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (9, 5, 6, CAST(900.00 AS Decimal(8, 2)), CAST(N'2012-06-12T00:00:00.000' AS DateTime), N'11868745434')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (10, 5, 7, CAST(800.00 AS Decimal(8, 2)), CAST(N'2012-06-13T00:00:00.000' AS DateTime), N'11868745434')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (11, 5, 5, CAST(700.00 AS Decimal(8, 2)), CAST(N'2012-06-14T00:00:00.000' AS DateTime), N'11868745434')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (12, 2, 2, CAST(123.00 AS Decimal(8, 2)), CAST(N'2022-03-06T19:08:01.000' AS DateTime), N'12345678910')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (13, 2, 2, CAST(123.00 AS Decimal(8, 2)), CAST(N'2022-03-06T19:08:05.000' AS DateTime), N'12345678910')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (1002, 2, 2, CAST(123.00 AS Decimal(8, 2)), CAST(N'2022-03-07T13:04:00.000' AS DateTime), N'12345678910')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (1004, 2, 4, CAST(123.00 AS Decimal(8, 2)), CAST(N'2022-03-08T17:11:55.000' AS DateTime), N'12345678910')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (1005, 2, 4, CAST(123.00 AS Decimal(8, 2)), CAST(N'2022-03-08T17:12:00.000' AS DateTime), N'12345678910')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (1007, 1, 1006, CAST(50.00 AS Decimal(8, 2)), CAST(N'2022-03-08T17:20:15.000' AS DateTime), N'16786451325')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (1008, 1003, 1, CAST(123.00 AS Decimal(8, 2)), CAST(N'2022-03-10T19:34:23.000' AS DateTime), N'18431059121')
INSERT [dbo].[Donate] ([DonId], [UsersID], [ProID], [Donprice], [Dontime], [Donphone]) VALUES (1012, 1006, 1, CAST(1000.00 AS Decimal(8, 2)), CAST(N'2022-04-12T17:42:20.000' AS DateTime), N'14789235666')
SET IDENTITY_INSERT [dbo].[Donate] OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([MessId], [usersID], [Messname], [Messaddress], [Messphone], [Bankname], [Bankcard]) VALUES (1, 1, N'小黑', N'东西省华南市', N'16786451325', N'华国种地银行', N'468415324896335216')
INSERT [dbo].[Message] ([MessId], [usersID], [Messname], [Messaddress], [Messphone], [Bankname], [Bankcard]) VALUES (2, 2, N'小白', N'沿海省南茂市', N'12345678910', N'华国种地银行', N'685347843541546432')
INSERT [dbo].[Message] ([MessId], [usersID], [Messname], [Messaddress], [Messphone], [Bankname], [Bankcard]) VALUES (3, 3, N'黑白', N'西疆省柯泽市', N'11321546545', N'华国诚信银行', N'763548743546751346')
INSERT [dbo].[Message] ([MessId], [usersID], [Messname], [Messaddress], [Messphone], [Bankname], [Bankcard]) VALUES (4, 4, N'小红', N'择优省有钱市', N'14984561374', N'华国诚信银行', N'134987432418654545')
INSERT [dbo].[Message] ([MessId], [usersID], [Messname], [Messaddress], [Messphone], [Bankname], [Bankcard]) VALUES (5, 5, N'小绿', N'南三省天翼市', N'11868745434', N'华国友情银行', N'345487975434876464')
INSERT [dbo].[Message] ([MessId], [usersID], [Messname], [Messaddress], [Messphone], [Bankname], [Bankcard]) VALUES (6, 6, N'郁', N'江北省冀唐市', N'12345678910', N'华国友情银行', N'123658521568131684')
INSERT [dbo].[Message] ([MessId], [usersID], [Messname], [Messaddress], [Messphone], [Bankname], [Bankcard]) VALUES (1002, 2, N'张磊', N'堂堂', N'12312312311', N'六六六银行', N'430258987456321405')
INSERT [dbo].[Message] ([MessId], [usersID], [Messname], [Messaddress], [Messphone], [Bankname], [Bankcard]) VALUES (1003, 1, N'张磊', N'堂堂', N'12312312311', N'六六六银行', N'430258987456321405')
INSERT [dbo].[Message] ([MessId], [usersID], [Messname], [Messaddress], [Messphone], [Bankname], [Bankcard]) VALUES (1004, 1006, N'熊二', N'唐山', N'14782935666', N'看来你下次', N'1234567891234566')
SET IDENTITY_INSERT [dbo].[Message] OFF
GO
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (1, 5, N'清华五道口', CAST(300000.00 AS Decimal(8, 2)), N'30', N'商业困难', N'北京', N'picture/wudaokou.jpeg', N'《清华五道口》学院地基项目开发中', N'我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱', N'11868745434', CAST(2480.00 AS Decimal(8, 2)), 15)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (2, 4, N'北大五道口', CAST(300000.00 AS Decimal(8, 2)), N'30', N'商业困难', N'北京', N'picture/beida.jpeg', N'你想要学习吗？你想要知识吗？', N'我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱', N'14984561374', CAST(5583.00 AS Decimal(8, 2)), 12)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (3, 5, N'佳丽顿大学', CAST(300000.00 AS Decimal(8, 2)), N'30', N'商业困难', N'外加', N'picture/jialidun.jpeg', N'著名家里蹲持续广告招租中', N'我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱', N'11868745434', CAST(4567.00 AS Decimal(8, 2)), 6)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (4, 3, N'小小贫困生', CAST(300000.00 AS Decimal(8, 2)), N'30', N'家庭困难', N'西姆', N'picture/xiaopinkun.jpeg', N'我想要上学，你能够帮帮我吗', N'我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱', N'11321546545', CAST(3583.00 AS Decimal(8, 2)), 19)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (5, 2, N'小山仡佬的', CAST(300000.00 AS Decimal(8, 2)), N'30', N'自然灾害', N'天市', N'picture/sgelao.jpeg', N'家乡的交通极为不便，因此而落后', N'我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱', N'12345678910', CAST(7896.00 AS Decimal(8, 2)), 20)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (6, 1, N'悲凉咖啡馆', CAST(60000.00 AS Decimal(8, 2)), N'20', N'经济困难', N'北市', N'picture/kafeiguan.jpeg', N'北市东明路咖啡馆即将开业！！', N'我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱', N'16786451325', CAST(96.00 AS Decimal(8, 2)), 19)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (7, 3, N'创业基金', CAST(200000.00 AS Decimal(8, 2)), N'25', N'创业众筹', N'东庄', N'picture/chuangye.jpeg', N'都说我不能够成功我偏要做', N'我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱', N'11321546545', CAST(7896.00 AS Decimal(8, 2)), 17)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (8, 1, N'短暂时光', CAST(100000.00 AS Decimal(8, 2)), N'30', N'其它', N'上光', N'picture/shiguang.jpeg', N'浪漫是短暂的时间是永远的', N'我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱', N'16786451325', CAST(7896.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (9, 2, N'超级佳人', CAST(89691.00 AS Decimal(8, 2)), N'20', N'其它', N'南市', N'picture/supjiaren.jpeg', N'你有女朋友吗，赶紧来领吧', N'我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱', N'12345678910', CAST(7896.00 AS Decimal(8, 2)), 11)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (10, 4, N'京大阿里', CAST(600000.00 AS Decimal(8, 2)), N'50', N'经济困难', N'京市', N'picture/jingdaali.jpeg', N'我可以满足你的一切消费需求', N'我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱', N'14984561374', CAST(100296.00 AS Decimal(8, 2)), 5)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (11, 4, N'大学生创业', CAST(100000.00 AS Decimal(8, 2)), N'30', N'创业众筹', N'华南市', N'picture/daxueshengcy.jpg', N'谁说大学生就干不出一番事业', N'我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱', N'14984561374', CAST(100296.00 AS Decimal(8, 2)), 7)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (12, 1, N'爱情博物馆', CAST(200000.00 AS Decimal(8, 2)), N'30', N'创业众筹', N'京津市', N'picture/aiqingbwg.jpeg', N'你品尝过爱情的苦吗？', N'我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱我需要很多钱', N'14984561374', CAST(100296.00 AS Decimal(8, 2)), 3)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (1002, 2, N'123', CAST(123123.00 AS Decimal(8, 2)), N'23', N'家庭困难', N'12qwewqe', N'picture/1635487752700.jpeg', N'111', N'111', N'12312312311', CAST(123123.00 AS Decimal(8, 2)), 23)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (1003, 2, N'123', CAST(123123.00 AS Decimal(8, 2)), N'23', N'家庭困难', N'12qwewqe', N'picture/1635487710163.jpeg', N'as', N'asd', N'12312312311', CAST(0.00 AS Decimal(8, 2)), 23)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (1004, 2, N'123', CAST(123123.00 AS Decimal(8, 2)), N'23', N'商业困难', N'12qwewqe', N'picture/1635487722836.jpeg', N'12', N'12', N'12312312311', CAST(0.00 AS Decimal(8, 2)), 23)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (1005, 2, N'123', CAST(123123.00 AS Decimal(8, 2)), N'23', N'商业困难', N'12qwewqe', N'picture/bizhi.jpg', N'12345y', N'ASDFGHJKL', N'12312312311', CAST(0.00 AS Decimal(8, 2)), 23)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (1006, 1, N'张磊吃屎', CAST(522.00 AS Decimal(8, 2)), N'13', N'经济困难', N'测试', N'picture/IMG_20201217_164213.jpg', N'123', N'123456', N'18963214750', CAST(50.00 AS Decimal(8, 2)), 13)
INSERT [dbo].[Project] ([ProID], [UserID], [Proname], [Amount], [Prodays], [Type], [Proaddress], [Proimg], [Protitle], [Protext], [Prophone], [Donprice], [Daysing]) VALUES (1007, 1006, N'测试项目1', CAST(50000.00 AS Decimal(8, 2)), N'15', N'创业众筹', N'测试测试', N'picture/1638233940112.jpeg', N'的法国军官', N'我IC关键词vvjvvjv', N'14782935666', CAST(0.00 AS Decimal(8, 2)), 15)
SET IDENTITY_INSERT [dbo].[Project] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Phone], [Password], [Email], [Username], [Sex], [Address], [Usertext], [Portrait], [Receing]) VALUES (1, N'16786451325', N'123456', N'12345678900@qq.com', N'小黑', N'男', N'东西省华南市', N'尽情聆听风的的声音', N'face/dmn.jpeg', N'东西省华南市东街200号')
INSERT [dbo].[Users] ([UserId], [Phone], [Password], [Email], [Username], [Sex], [Address], [Usertext], [Portrait], [Receing]) VALUES (2, N'12345678910', N'123456', N'45632148923@qq.com', N'小白', N'男', N'沿海省南茂市', N'我是这个世界的梦魇', N'face/xnh.jpeg', N'沿海省南茂市新华大道123号')
INSERT [dbo].[Users] ([UserId], [Phone], [Password], [Email], [Username], [Sex], [Address], [Usertext], [Portrait], [Receing]) VALUES (3, N'11321546545', N'123456', N'78953424644@qq.com', N'黑白', N'男', N'西疆省柯泽市', N'想要赚大钱', N'face/pig.jpeg', N'西疆省柯泽市天南街59号')
INSERT [dbo].[Users] ([UserId], [Phone], [Password], [Email], [Username], [Sex], [Address], [Usertext], [Portrait], [Receing]) VALUES (4, N'14984561374', N'123456', N'34567243657@qq.com', N'小红', N'女', N'择优省有钱市', N'快来吧！快来吧！', N'face/xkl.jpeg', N'择优省有钱市南街与东街交界处')
INSERT [dbo].[Users] ([UserId], [Phone], [Password], [Email], [Username], [Sex], [Address], [Usertext], [Portrait], [Receing]) VALUES (5, N'11868745434', N'123456', N'24657532543@qq.com', N'小绿', N'男', N'南三省天翼市', N'无', N'face/dog.jpeg', N'南三省天翼市北街43号')
INSERT [dbo].[Users] ([UserId], [Phone], [Password], [Email], [Username], [Sex], [Address], [Usertext], [Portrait], [Receing]) VALUES (6, N'00000000000', N'123456', N'14685236189@qq.com', N'admin', N'男', N'天上人间市', N'我是废物', NULL, NULL)
INSERT [dbo].[Users] ([UserId], [Phone], [Password], [Email], [Username], [Sex], [Address], [Usertext], [Portrait], [Receing]) VALUES (1002, N'19876325410', N'123456qq', N'123456@qq.com', N'User-001', N'男', N'看来你下次', N'天上人间', N'face/wei.png', NULL)
INSERT [dbo].[Users] ([UserId], [Phone], [Password], [Email], [Username], [Sex], [Address], [Usertext], [Portrait], [Receing]) VALUES (1003, N'18431059121', N'123zxc', N'123456@qq.com', N'User-001', NULL, NULL, NULL, N'face/wei.png', NULL)
INSERT [dbo].[Users] ([UserId], [Phone], [Password], [Email], [Username], [Sex], [Address], [Usertext], [Portrait], [Receing]) VALUES (1004, N'12356789101', N'123123q', N'123123@qq.com', N'User-001', NULL, NULL, NULL, N'face/wei.png', NULL)
INSERT [dbo].[Users] ([UserId], [Phone], [Password], [Email], [Username], [Sex], [Address], [Usertext], [Portrait], [Receing]) VALUES (1005, N'18634123670', N'fengbai0577', N'fengbai0577@163.com', N'郁', N'男', N'河北省', N'测试测试', N'face/girl.jpeg', N'河北省唐山市29号')
INSERT [dbo].[Users] ([UserId], [Phone], [Password], [Email], [Username], [Sex], [Address], [Usertext], [Portrait], [Receing]) VALUES (1006, N'14789235666', N'123456aaa', N'123123@qq.com', N'爱爱爱', N'男', N'河北省', N'测试测试1', N'face/19816118963.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__5C7E359E20113A7A]    Script Date: 2022/5/23 8:26:08 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('User-001') FOR [Username]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Portrait]  DEFAULT (N'face/wei.png') FOR [Portrait]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Project] FOREIGN KEY([Proid])
REFERENCES [dbo].[Project] ([ProID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Project]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Users] FOREIGN KEY([Userid])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Users]
GO
ALTER TABLE [dbo].[Donate]  WITH CHECK ADD FOREIGN KEY([ProID])
REFERENCES [dbo].[Project] ([ProID])
GO
ALTER TABLE [dbo].[Donate]  WITH CHECK ADD FOREIGN KEY([UsersID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([usersID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserId])
GO
USE [master]
GO
ALTER DATABASE [Yun] SET  READ_WRITE 
GO
