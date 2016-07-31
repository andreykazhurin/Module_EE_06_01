USE [restaurant]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cooked_dish](
	[id] [int] NOT NULL,
	[count] [int] NOT NULL,
	[id_dish] [int] NOT NULL,
	[id_employee] [int] NOT NULL,
	[id_order] [int] NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_cooked_dish] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[cooked_dish]  WITH CHECK ADD FOREIGN KEY([id_dish])
REFERENCES [dbo].[dish] ([id])
GO

ALTER TABLE [dbo].[cooked_dish]  WITH CHECK ADD FOREIGN KEY([id_employee])
REFERENCES [dbo].[employee] ([id])
GO

ALTER TABLE [dbo].[cooked_dish]  WITH CHECK ADD FOREIGN KEY([id_order])
REFERENCES [dbo].[order] ([id])
GO

CREATE TABLE [dbo].[category](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[dish](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[id_category] [int] NOT NULL,
	[cost] [numeric](18, 2) NOT NULL,
	[weight] [int] NOT NULL,
 CONSTRAINT [PK_dish] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[dish]  WITH CHECK ADD FOREIGN KEY([id_category])
REFERENCES [dbo].[category] ([id])
GO

CREATE TABLE [dbo].[dish_list_ingredient](
	[count] [int] NOT NULL,
	[id_dish] [int] NOT NULL,
	[id_ingredient] [int] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[dish_list_ingredient]  WITH CHECK ADD FOREIGN KEY([id_dish])
REFERENCES [dbo].[dish] ([id])
GO

ALTER TABLE [dbo].[dish_list_ingredient]  WITH CHECK ADD FOREIGN KEY([id_ingredient])
REFERENCES [dbo].[ingredient] ([id])
GO

CREATE TABLE [dbo].[employee](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[second_name] [nchar](10) NOT NULL,
	[birthday] [date] NOT NULL,
	[telephone] [nvarchar](50) NOT NULL,
	[id_position] [int] NOT NULL,
	[salary] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([id_position])
REFERENCES [dbo].[position] ([id])
GO

CREATE TABLE [dbo].[ingredient](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_ingredient] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[menu](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[menu_list_dish](
	[count] [int] NOT NULL,
	[id_menu] [int] NOT NULL,
	[id_dish] [int] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[menu_list_dish]  WITH CHECK ADD FOREIGN KEY([id_dish])
REFERENCES [dbo].[dish] ([id])
GO

ALTER TABLE [dbo].[menu_list_dish]  WITH CHECK ADD FOREIGN KEY([id_menu])
REFERENCES [dbo].[menu] ([id])
GO

CREATE TABLE [dbo].[order](
	[id] [int] NOT NULL,
	[id_employee] [int] NOT NULL,
	[table_num] [smallint] NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[order]  WITH CHECK ADD FOREIGN KEY([id_employee])
REFERENCES [dbo].[employee] ([id])
GO

CREATE TABLE [dbo].[order_list_dish](
	[count] [int] NOT NULL,
	[id_dish] [int] NOT NULL,
	[id_order] [int] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[order_list_dish]  WITH CHECK ADD FOREIGN KEY([id_dish])
REFERENCES [dbo].[dish] ([id])
GO

ALTER TABLE [dbo].[order_list_dish]  WITH CHECK ADD FOREIGN KEY([id_order])
REFERENCES [dbo].[order] ([id])
GO

CREATE TABLE [dbo].[position](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_position] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[warehouse_balance](
	[id_ingredient] [int] NOT NULL,
	[count] [int] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[warehouse_balance]  WITH CHECK ADD FOREIGN KEY([id_ingredient])
REFERENCES [dbo].[ingredient] ([id])
GO

