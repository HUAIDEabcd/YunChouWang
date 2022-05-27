use master

go

/*if DB_ID("ABC") is not null
    drop database abc*/

if exists(select * from sys.databases where name='Yun')
	drop database Yun
go

/*�������ݿ�*/
create database Yun;

go

use Yun

go

/*�˻���*/
create table Users(
    UserId int primary key identity(1,1),                                    /*�˻�ID ����  ����*/
    Phone nvarchar(11) unique not null,                                      /*�绰 �ǿ�*/
    Password nvarchar(50) not null,                                          /*���� �ǿ�*/
    Email nvarchar(50) not null,                                             /*����  �ǿ�*/
    Username nvarchar(50) default ('User-001'),								 /*�û��� Ĭ��*/
    Sex nvarchar(2),                                                         /*�Ա�*/
    Address nvarchar(50),                                                    /*��ַ*/
    Usertext nvarchar(150),                                                  /*����˵��*/
    Portrait nvarchar(100)                                                   /*ͷ��*/
);

go

--�����ڳ���Ŀ��
create table Project(
    ProID int primary key identity(1,1),                                --��ĿID ����  ����
    UserID int references Users(UserID) not null,                       --�������û���ID��
    Proname nvarchar(20) not null,                                      /*��Ŀ���� �ǿ�*/
    Amount decimal(8,2) not null,                                       /*Ŀ���� �ǿ�*/
    Prodays nvarchar(50) not null,                                      /*�Ｏ���� �ǿ�*/
    Type nvarchar(20),                                                  /*���*/
    Proaddress nvarchar(50),                                            /*��Ŀ�ص�*/
    Proimg nvarchar(100),                                               /*��Ŀ����*/
    Protitle nvarchar(50),                                              /*��Ŀ���*/
    Protext nvarchar(150),                                              /*��Ŀ����*/
    Prophone nvarchar(11) not null,                                     /*��Ŀ�ֻ���*/
    Donprice decimal(8,2),                                              /*�Ѿ��׽��*/
    Daysing int				--ʣ������
);

go

/*�������ױ�*/
create table Donate(
    DonId int primary key identity(1,1),                                --����ID
    UsersID int references Users(UserID) not null,                      --�������û���ID��
    ProID int references Project(ProID) not null,                       --��������Ŀ��ID��
    Donprice decimal(8,2) not null,                                     --���׽��
    Dontime datetime,                                                   --����ʱ��
    Donphone nvarchar(11) not null                                      --�����ֻ���
)

go

--����������Ϣ��
create table Message(
    MessId int primary key identity(1,1),                               --������ϢID
    usersID int references Users(UserID) not null,                      --�������û���ID��
    Messname nvarchar(20) not null,                                     --����������
    Messaddress nvarchar(100) not null,                                 --�����ߵ�ַ
    Messphone nvarchar(11) not null,                                    --�����ߵ绰
    Bankname nvarchar(50) not null,                                     --��������
    Bankcard nvarchar(20) not null                                      --���п�����
)

go


--�����û�������        �绰 �ǿ�    ���� �ǿ�          ����                   �û��� �Ա�     ��ַ             ����˵��              ͷ��
insert Users values('16786451325','123456','12345678900@qq.com','С��','��','����ʡ������','����������ĵ�����','face/dmn.jpeg')
insert Users values('12345678910','123456','45632148923@qq.com','С��','��','�غ�ʡ��ï��','����������������','face/xnh.jpeg')
insert Users values('11321546545','123456','78953424644@qq.com','�ڰ�','��','����ʡ������','��Ҫ׬��Ǯ','face/pig.jpeg')
insert Users values('14984561374','123456','34567243657@qq.com','С��','Ů','����ʡ��Ǯ��','�����ɣ������ɣ�','face/xkl.jpeg')
insert Users values('11868745434','123456','24657532543@qq.com','С��','��','����ʡ������','��','face/dog.jpeg')
insert Users values('00000000000','123456','14685236189@qq.com','admin','��','�����˼���','���Ƿ���',null)
select * from USers


--�����ڳ���Ŀ������ �û�ID ��Ŀ����   Ŀ���� �Ｏ���� ���   ��Ŀ�ص�      ��Ŀ����						��Ŀ���													��Ŀ����													��Ŀ�ֻ���  �ѳ��� ʣ������
insert Project values('5','�廪�����','300000','30','��ҵ����','����','picture/wudaokou.jpeg','���廪����ڡ�ѧԺ�ػ���Ŀ������','����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ','11868745434','1234','15')
insert Project values('4','���������','300000','30','��ҵ����','����','picture/beida.jpeg','����Ҫѧϰ������Ҫ֪ʶ��','����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ','14984561374','3214','12')
insert Project values('5','�����ٴ�ѧ','300000','30','��ҵ����','���','picture/jialidun.jpeg','��������׳������������','����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ','11868745434','4567','6')
insert Project values('3','ССƶ����','300000','30','��ͥ����','��ķ','picture/xiaopinkun.jpeg','����Ҫ��ѧ�����ܹ��������','����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ','11321546545','3214','19')
insert Project values('2','Сɽ���е�','300000','30','��Ȼ�ֺ�','����','picture/sgelao.jpeg','����Ľ�ͨ��Ϊ���㣬��˶����','����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ','12345678910','7896','20')
insert Project values('1','�������ȹ�','60000','20','��������','����','picture/kafeiguan.jpeg','���ж���·���ȹݼ�����ҵ����','����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ','16786451325','96','19')
insert Project values('3','��ҵ����','200000','25','��ҵ�ڳ�','��ׯ','picture/chuangye.jpeg','��˵�Ҳ��ܹ��ɹ���ƫҪ��','����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ','11321546545','7896','17')
insert Project values('1','����ʱ��','100000','30','����','�Ϲ�','picture/shiguang.jpeg','�����Ƕ��ݵ�ʱ������Զ��','����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ','16786451325','7896','1')
insert Project values('2','��������','89691','20','����','����','picture/supjiaren.jpeg','����Ů�����𣬸Ͻ������','����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ','12345678910','7896','11')
insert Project values('4','������','600000','50','��������','����','picture/jingdaali.jpeg','�ҿ����������һ����������','����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ','14984561374','100296','5')
insert Project values('4','��ѧ����ҵ','100000','30','��ҵ�ڳ�','������','picture/daxueshengcy.jpg','˭˵��ѧ���͸ɲ���һ����ҵ','����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ','14984561374','100296','7')
insert Project values('1','���鲩���','200000','30','��ҵ�ڳ�','������','picture/aiqingbwg.jpeg','��Ʒ��������Ŀ���','����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ����Ҫ�ܶ�Ǯ','14984561374','100296','3')
select * from Project


--������ױ�����   UserID ProID ���      ʱ��        �ֻ���
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


--����������Ϣ������  UserID ����       ��ַ          �绰          ����            ���п�����
insert Message values('1','С��','����ʡ������','16786451325','�����ֵ�����','468415324896335216')
insert Message values('2','С��','�غ�ʡ��ï��','12345678910','�����ֵ�����','685347843541546432')
insert Message values('3','�ڰ�','����ʡ������','11321546545','������������','763548743546751346')
insert Message values('4','С��','����ʡ��Ǯ��','14984561374','������������','134987432418654545')
insert Message values('5','С��','����ʡ������','11868745434','������������','345487975434876464')
insert Message values('6','��','����ʡ������','12345678910','������������','123658521568131684')
select * from Message


