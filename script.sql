USE [ownego]
GO
/****** Object:  Table [dbo].[departments]    Script Date: 10/28/2013 15:36:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments](
	[departmentID] [int] IDENTITY(1,1) NOT NULL,
	[departmentName] [nvarchar](50) NULL,
	[description] [ntext] NULL,
 CONSTRAINT [PK_departments] PRIMARY KEY CLUSTERED 
(
	[departmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 10/28/2013 15:36:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[empID] [int] IDENTITY(1,1) NOT NULL,
	[department] [int] NULL,
	[name] [nvarchar](50) NULL,
	[age] [int] NULL,
	[phone] [nvarchar](50) NULL,
	[gender] [bit] NULL,
	[dayofbirth] [date] NULL,
	[family] [ntext] NULL,
 CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED 
(
	[empID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quanlyphongban]    Script Date: 10/28/2013 15:36:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quanlyphongban](
	[employeeID] [int] NULL,
	[departmentID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_employees_departments]    Script Date: 10/28/2013 15:36:41 ******/
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK_employees_departments] FOREIGN KEY([department])
REFERENCES [dbo].[departments] ([departmentID])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK_employees_departments]
GO
/****** Object:  ForeignKey [FK_quanlyphongban_departments]    Script Date: 10/28/2013 15:36:41 ******/
ALTER TABLE [dbo].[quanlyphongban]  WITH CHECK ADD  CONSTRAINT [FK_quanlyphongban_departments] FOREIGN KEY([departmentID])
REFERENCES [dbo].[departments] ([departmentID])
GO
ALTER TABLE [dbo].[quanlyphongban] CHECK CONSTRAINT [FK_quanlyphongban_departments]
GO
/****** Object:  ForeignKey [FK_quanlyphongban_employees]    Script Date: 10/28/2013 15:36:41 ******/
ALTER TABLE [dbo].[quanlyphongban]  WITH CHECK ADD  CONSTRAINT [FK_quanlyphongban_employees] FOREIGN KEY([employeeID])
REFERENCES [dbo].[employees] ([empID])
GO
ALTER TABLE [dbo].[quanlyphongban] CHECK CONSTRAINT [FK_quanlyphongban_employees]
GO
