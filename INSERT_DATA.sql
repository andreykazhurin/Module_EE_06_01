USE [restaurant]
GO

INSERT INTO [dbo].[category]
           ([id]
           ,[name])
     VALUES
           (1
           ,'dessert')

INSERT INTO [dbo].[category]
           ([id]
           ,[name])
     VALUES
           (2
           ,'beverage')

INSERT INTO [dbo].[category]
           ([id]
           ,[name])
     VALUES
           (3
           ,'first course')

INSERT INTO [dbo].[category]
           ([id]
           ,[name])
     VALUES
           (4
           ,'main course')
INSERT INTO [dbo].[category]
           ([id]
           ,[name])
     VALUES
           (5
           ,'aperitive')
INSERT INTO [dbo].[category]
           ([id]
           ,[name])
     VALUES
           (6
           ,'Salad')
INSERT INTO [dbo].[category]
           ([id]
           ,[name])
     VALUES
           (7
           ,'snack')
GO

INSERT INTO [dbo].[dish]
           ([id]
           ,[name]
           ,[id_category]
           ,[cost]
           ,[weight])
     VALUES
           (1
           ,'Beer'
           ,2
           ,35.00
		   ,500)

INSERT INTO [dbo].[dish]
           ([id]
           ,[name]
           ,[id_category]
           ,[cost]
           ,[weight])
     VALUES
           (2
           ,'soup with salmon'
           ,3
           ,48.00
		   ,300)

INSERT INTO [dbo].[dish]
           ([id]
           ,[name]
           ,[id_category]
           ,[cost]
           ,[weight])
     VALUES
           (3
           ,'Salad with shrimp'
           ,6
           ,89.00
		   ,300)

INSERT INTO [dbo].[dish]
           ([id]
           ,[name]
           ,[id_category]
           ,[cost]
           ,[weight])
     VALUES
           (4
           ,'scrambled eggs'
           ,4
           ,32.00
		   ,180)

INSERT INTO [dbo].[dish]
           ([id]
           ,[name]
           ,[id_category]
           ,[cost]
           ,[weight])
     VALUES
           (5
           ,'Greek salad'
           ,6
           ,78.00
		   ,300)

INSERT INTO [dbo].[dish]
           ([id]
           ,[name]
           ,[id_category]
           ,[cost]
           ,[weight])
     VALUES
           (6
           ,'Ice cream'
           ,1
           ,48.00
		   ,200)
GO