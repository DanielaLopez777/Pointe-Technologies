USE [Pointe]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[Id_Class] [varchar](3) NOT NULL,
	[Grade] [varchar](2) NOT NULL,
	[Groupe] [varchar](1) NOT NULL,
	[Id_Prof] [int] NOT NULL,
 CONSTRAINT [PK__Classes__E30692FE8AFA7912] PRIMARY KEY CLUSTERED 
(
	[Id_Class] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dancers]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dancers](
	[Id_Dancer] [int] IDENTITY(10000,1) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[Nombre] [varchar](20) NULL,
	[High_Impact] [int] NOT NULL,
	[Turns] [int] NOT NULL,
	[Brush] [int] NOT NULL,
	[Balance] [int] NOT NULL,
	[Legs_Height] [int] NOT NULL,
	[Id_Warn] [varchar](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Dancer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horarios]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horarios](
	[idDancer] [int] NOT NULL,
	[Hr] [int] NOT NULL,
	[Mon] [varchar](100) NULL,
	[Tu] [varchar](100) NULL,
	[Wen] [varchar](100) NULL,
	[Th] [varchar](100) NULL,
	[Fr] [varchar](100) NULL,
	[Sa] [varchar](100) NULL,
	[Su] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Injuries]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Injuries](
	[Id_Warning] [varchar](1) NOT NULL,
	[Description] [varchar](500) NOT NULL,
 CONSTRAINT [PK__Injuries__D340A988860FFBD1] PRIMARY KEY CLUSTERED 
(
	[Id_Warning] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[log_Dancers]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log_Dancers](
	[Id_Dancer] [int] NOT NULL,
	[High_Impact] [int] NOT NULL,
	[Turns] [int] NOT NULL,
	[Brush] [int] NOT NULL,
	[Balance] [int] NOT NULL,
	[Legs_Height] [int] NOT NULL,
	[Today] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Professors]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professors](
	[Id_Professor] [int] IDENTITY(50000,1) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[Name] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Professor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recomendations]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recomendations](
	[Id_Warning] [varchar](1) NOT NULL,
	[Description] [varchar](150) NULL,
	[Videos] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedules](
	[Id_Class] [varchar](3) NOT NULL,
	[Id_Dancer] [int] NOT NULL,
	[Classroom] [varchar](3) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Classes] ([Id_Class], [Grade], [Groupe], [Id_Prof]) VALUES (N'ABC', N'G5', N'A', 50000)
GO
SET IDENTITY_INSERT [dbo].[Dancers] ON 

INSERT [dbo].[Dancers] ([Id_Dancer], [Password], [Nombre], [High_Impact], [Turns], [Brush], [Balance], [Legs_Height], [Id_Warn]) VALUES (10000, N'Yhhs', N'Yamil', 20, 40, 17, 20, 97, N'1')
INSERT [dbo].[Dancers] ([Id_Dancer], [Password], [Nombre], [High_Impact], [Turns], [Brush], [Balance], [Legs_Height], [Id_Warn]) VALUES (10001, N'Cafe123', N'Rogelio', 0, 34, 0, 20, 75, N'1')
INSERT [dbo].[Dancers] ([Id_Dancer], [Password], [Nombre], [High_Impact], [Turns], [Brush], [Balance], [Legs_Height], [Id_Warn]) VALUES (10002, N'Java', N'La Patrona', 0, 34, 0, 20, 75, N'1')
SET IDENTITY_INSERT [dbo].[Dancers] OFF
GO
INSERT [dbo].[Horarios] ([idDancer], [Hr], [Mon], [Tu], [Wen], [Th], [Fr], [Sa], [Su]) VALUES (10000, 7, N'Ensayo', N'Nada', N'Nada', N'Nada', N'Nada', N'Nada', N'Nada')
INSERT [dbo].[Horarios] ([idDancer], [Hr], [Mon], [Tu], [Wen], [Th], [Fr], [Sa], [Su]) VALUES (10000, 8, N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Horarios] ([idDancer], [Hr], [Mon], [Tu], [Wen], [Th], [Fr], [Sa], [Su]) VALUES (10000, 9, N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Horarios] ([idDancer], [Hr], [Mon], [Tu], [Wen], [Th], [Fr], [Sa], [Su]) VALUES (10000, 10, N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Horarios] ([idDancer], [Hr], [Mon], [Tu], [Wen], [Th], [Fr], [Sa], [Su]) VALUES (10000, 11, N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Horarios] ([idDancer], [Hr], [Mon], [Tu], [Wen], [Th], [Fr], [Sa], [Su]) VALUES (10000, 12, N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Horarios] ([idDancer], [Hr], [Mon], [Tu], [Wen], [Th], [Fr], [Sa], [Su]) VALUES (10000, 13, N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Horarios] ([idDancer], [Hr], [Mon], [Tu], [Wen], [Th], [Fr], [Sa], [Su]) VALUES (10000, 14, N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Horarios] ([idDancer], [Hr], [Mon], [Tu], [Wen], [Th], [Fr], [Sa], [Su]) VALUES (10000, 15, N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Horarios] ([idDancer], [Hr], [Mon], [Tu], [Wen], [Th], [Fr], [Sa], [Su]) VALUES (10000, 16, N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Horarios] ([idDancer], [Hr], [Mon], [Tu], [Wen], [Th], [Fr], [Sa], [Su]) VALUES (10000, 17, N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Horarios] ([idDancer], [Hr], [Mon], [Tu], [Wen], [Th], [Fr], [Sa], [Su]) VALUES (10000, 18, N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Horarios] ([idDancer], [Hr], [Mon], [Tu], [Wen], [Th], [Fr], [Sa], [Su]) VALUES (10000, 19, N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Horarios] ([idDancer], [Hr], [Mon], [Tu], [Wen], [Th], [Fr], [Sa], [Su]) VALUES (10000, 20, N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Horarios] ([idDancer], [Hr], [Mon], [Tu], [Wen], [Th], [Fr], [Sa], [Su]) VALUES (10000, 21, N'', N'', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[Injuries] ([Id_Warning], [Description]) VALUES (N'1', N'The most common knee injuries include sprains and tears of soft tissues (e.g., ligaments, meniscus), fractures, and dislocation. In many cases, injuries involve more than one structure in the knee. Pain and swelling are the most common signs of knee injury. In addition, the knee may catch or lock.')
GO
INSERT [dbo].[log_Dancers] ([Id_Dancer], [High_Impact], [Turns], [Brush], [Balance], [Legs_Height], [Today]) VALUES (10000, 2, 4, 10, 2, 7, CAST(N'2022-04-05' AS Date))
INSERT [dbo].[log_Dancers] ([Id_Dancer], [High_Impact], [Turns], [Brush], [Balance], [Legs_Height], [Today]) VALUES (10000, 20, 40, 17, 20, 97, CAST(N'2022-04-05' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Professors] ON 

INSERT [dbo].[Professors] ([Id_Professor], [Password], [Name]) VALUES (50000, N'Yhhs', N'Rosalinda ')
SET IDENTITY_INSERT [dbo].[Professors] OFF
GO
INSERT [dbo].[Schedules] ([Id_Class], [Id_Dancer], [Classroom]) VALUES (N'ABC', 10000, N'JAC')
GO
ALTER TABLE [dbo].[Dancers] ADD  DEFAULT ((0)) FOR [High_Impact]
GO
ALTER TABLE [dbo].[Dancers] ADD  DEFAULT ((0)) FOR [Turns]
GO
ALTER TABLE [dbo].[Dancers] ADD  DEFAULT ((0)) FOR [Brush]
GO
ALTER TABLE [dbo].[Dancers] ADD  DEFAULT ((0)) FOR [Balance]
GO
ALTER TABLE [dbo].[Dancers] ADD  DEFAULT ((0)) FOR [Legs_Height]
GO
ALTER TABLE [dbo].[Dancers] ADD  DEFAULT ((0)) FOR [Id_Warn]
GO
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK__Classes__Id_Prof__38996AB5] FOREIGN KEY([Id_Prof])
REFERENCES [dbo].[Professors] ([Id_Professor])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK__Classes__Id_Prof__38996AB5]
GO
ALTER TABLE [dbo].[Dancers]  WITH CHECK ADD  CONSTRAINT [FK__Dancers__Id_Warn__44FF419A] FOREIGN KEY([Id_Warn])
REFERENCES [dbo].[Injuries] ([Id_Warning])
GO
ALTER TABLE [dbo].[Dancers] CHECK CONSTRAINT [FK__Dancers__Id_Warn__44FF419A]
GO
ALTER TABLE [dbo].[Horarios]  WITH CHECK ADD FOREIGN KEY([idDancer])
REFERENCES [dbo].[Dancers] ([Id_Dancer])
GO
ALTER TABLE [dbo].[Recomendations]  WITH CHECK ADD  CONSTRAINT [FK__Recomenda__Id_Wa__3C69FB99] FOREIGN KEY([Id_Warning])
REFERENCES [dbo].[Injuries] ([Id_Warning])
GO
ALTER TABLE [dbo].[Recomendations] CHECK CONSTRAINT [FK__Recomenda__Id_Wa__3C69FB99]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK__Schedules__Id_Cl__46E78A0C] FOREIGN KEY([Id_Class])
REFERENCES [dbo].[Classes] ([Id_Class])
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK__Schedules__Id_Cl__46E78A0C]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD FOREIGN KEY([Id_Dancer])
REFERENCES [dbo].[Dancers] ([Id_Dancer])
GO
/****** Object:  StoredProcedure [dbo].[asistence]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[asistence]
@id int,
@grade varchar(2),
@group varchar(1)
as 
select Nombre from Professors
inner join Classes on Classes.Id_Prof=Professors.Id_Professor
inner join Schedules on Schedules.Id_Class=Classes.Id_Class
inner join Dancers on Dancers.Id_Dancer=Schedules.Id_Dancer

where Id_Professor=@id and Grade=@grade and Groupe=@group
GO
/****** Object:  StoredProcedure [dbo].[Daily]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Daily] 
@id int 
as
select*from Dancers where Id_Dancer=@id
GO
/****** Object:  StoredProcedure [dbo].[General]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[General] 
@id int 
as
select avg(High_Impact)as High_Impact,avg(Turns)as Turns,avg(Brush) as Brush,avg(Balance) as Balance, avg(Legs_Height) as Legs_Height  from log_Dancers where Id_Dancer = @id
GO
/****** Object:  StoredProcedure [dbo].[insertDancer]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertDancer] 
    @password varchar(20),
    @nombre varchar(20),
    @idWarning varchar (1)
    AS

    INSERT INto Dancers ([Password],Nombre,Id_Warn)
    VALUES (@password,@nombre,@idWarning)
GO
/****** Object:  StoredProcedure [dbo].[insertInjuries]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertInjuries] 
    @idWarning varchar(1),
    @Description varchar(500)
    AS
    INSERT INto Injuries (Id_Warning,[Description])
    VALUES (@idWarning,@Description)
GO
/****** Object:  StoredProcedure [dbo].[insertProfessor]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[insertProfessor]
@Psw varchar(20),
@Name varchar(20)
As
insert into Professors ([Password],[Name])
values (@Psw,@Name)
GO
/****** Object:  StoredProcedure [dbo].[log_Professor]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[log_Professor] 
@id int ,
@password varchar(20)
AS
IF exists (select * from Professors where Id_Professor=@id and [Password]=@password)
    select 'TRUE' as Response,@id as ID 
ELSE
    select 'FALSE' as Response, 0 AS ID
GO
/****** Object:  StoredProcedure [dbo].[login_Dancer]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[login_Dancer] 
@id int ,
@password varchar(20)
AS
IF exists (select * from Dancers where Id_Dancer=@id and [Password]=@password)
    select 'TRUE' as Response,@id as ID

ELSE
    select 'FALSE' as Response,0 as ID


GO
/****** Object:  StoredProcedure [dbo].[phpSchedules]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[phpSchedules]
@id int 
as
select*from Horarios 
where idDancer=@id
GO
/****** Object:  StoredProcedure [dbo].[spAgregaHorario]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spAgregaHorario]
@idD int
as
begin
declare @i int
set @i = 7



while @i < 22
begin
insert into Horarios VALUES(@idD,@i,'','','','','','','');
set @i = @i +1
end
end
GO
/****** Object:  StoredProcedure [dbo].[warnings]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[warnings]
@id int
as
select [Description]
from Dancers
inner join Injuries on Id_Warning = Id_Warn
where Id_Dancer=@id
GO
/****** Object:  Trigger [dbo].[tg_DailyReport]    Script Date: 05/04/2022 08:45:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[tg_DailyReport]
	on [dbo].[Dancers]
after update
as 
	insert into log_Dancers(
		Id_Dancer, 
		High_Impact, 
		Turns,
		Brush,
		Balance,
		Legs_Height,
		Today
	)
	select
		Id_Dancer, 
		High_Impact, 
		Turns,
		Brush,
		Balance,
		Legs_Height,
		getdate()
	
	from inserted
GO
ALTER TABLE [dbo].[Dancers] ENABLE TRIGGER [tg_DailyReport]
GO
