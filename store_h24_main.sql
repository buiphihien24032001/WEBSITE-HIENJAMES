USE [store_h24_main]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 8/8/2021 8:41:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[fullname] [nvarchar](100) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[photo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 8/8/2021 8:41:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[role_id] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/8/2021 8:41:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [varchar](50) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 8/8/2021 8:41:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/8/2021 8:41:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[create_date] [date] NOT NULL,
	[address] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/8/2021 8:41:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[image] [varchar](50) NOT NULL,
	[price] [float] NOT NULL,
	[create_date] [date] NOT NULL,
	[available] [bit] NOT NULL,
	[category_id] [varchar](50) NOT NULL,
	[single1] [varchar](50) NULL,
	[single2] [varchar](50) NULL,
	[single3] [varchar](50) NULL,
	[des1] [varchar](50) NULL,
	[des2] [varchar](50) NULL,
	[des3] [varchar](50) NULL,
	[desmain] [nvarchar](250) NULL,
	[desfirst] [nvarchar](250) NULL,
	[dessecond] [nvarchar](250) NULL,
	[desthird] [nvarchar](250) NULL,
	[quantity] [float] NULL,
	[thumb1] [varchar](50) NULL,
	[thumb2] [varchar](50) NULL,
	[thumb3] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 8/8/2021 8:41:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo]) VALUES (N'admin1', N'123', N'phi hien admin', N'hienadmin@gmail.com', N'hien3.jpg')
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo]) VALUES (N'staff1', N'123', N'phi hien staff', N'hienstaff@gmail.com', N'hien2.jpg')
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo]) VALUES (N'user1', N'123', N'phi hien', N'hien@gmail.com', N'hien.jpg')
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([id], [username], [role_id]) VALUES (8, N'staff1', N'STAFF')
INSERT [dbo].[Authorities] ([id], [username], [role_id]) VALUES (9, N'admin1', N'ADMIN')
INSERT [dbo].[Authorities] ([id], [username], [role_id]) VALUES (10, N'user1', N'USER')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'1', N'Nike')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'10', N'New Balance')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'2', N'Adidas')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'3', N'Puma')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'4', N'Vans')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'5', N'Converse')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'6', N'Balenciaga')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'7', N'McQueen')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'8', N'Boots')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'9', N'Gucci')
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([id], [order_id], [product_id], [price], [quantity]) VALUES (9, 9, 9, 150, 1)
INSERT [dbo].[OrderDetails] ([id], [order_id], [product_id], [price], [quantity]) VALUES (10, 9, 4, 210, 1)
INSERT [dbo].[OrderDetails] ([id], [order_id], [product_id], [price], [quantity]) VALUES (11, 9, 3, 190, 1)
INSERT [dbo].[OrderDetails] ([id], [order_id], [product_id], [price], [quantity]) VALUES (12, 9, 1, 190, 1)
INSERT [dbo].[OrderDetails] ([id], [order_id], [product_id], [price], [quantity]) VALUES (13, 10, 4, 210, 1)
INSERT [dbo].[OrderDetails] ([id], [order_id], [product_id], [price], [quantity]) VALUES (14, 11, 3, 190, 1)
INSERT [dbo].[OrderDetails] ([id], [order_id], [product_id], [price], [quantity]) VALUES (15, 11, 4, 210, 1)
INSERT [dbo].[OrderDetails] ([id], [order_id], [product_id], [price], [quantity]) VALUES (16, 11, 5, 110, 1)
INSERT [dbo].[OrderDetails] ([id], [order_id], [product_id], [price], [quantity]) VALUES (17, 11, 6, 120, 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [username], [create_date], [address]) VALUES (9, N'user1', CAST(N'2021-08-02' AS Date), N'Thống Nhất - Đồng Nai')
INSERT [dbo].[Orders] ([id], [username], [create_date], [address]) VALUES (10, N'user1', CAST(N'2021-08-02' AS Date), N'hello')
INSERT [dbo].[Orders] ([id], [username], [create_date], [address]) VALUES (11, N'user1', CAST(N'2021-08-04' AS Date), N'heloo')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [image], [price], [create_date], [available], [category_id], [single1], [single2], [single3], [des1], [des2], [des3], [desmain], [desfirst], [dessecond], [desthird], [quantity], [thumb1], [thumb2], [thumb3]) VALUES (1, N'Nike Air Force 1 ''07 Premium', N'product_1.png', 190, CAST(N'2021-07-25' AS Date), 1, N'1', N'single1_1.jpg', N'single1_2.jpg', N'single1_3.jpg', N'des1_1.jpg', N'des1_2.jpg', N'des1_3.jpg', N'mô tả chính', N'mô tả first', N'mô tả sescond', N'mô tả 3 ', 36, N'thumb1_1.jpg', N'thumb1_2.jpg', N'thumb1_3.jpg')
INSERT [dbo].[Products] ([id], [name], [image], [price], [create_date], [available], [category_id], [single1], [single2], [single3], [des1], [des2], [des3], [desmain], [desfirst], [dessecond], [desthird], [quantity], [thumb1], [thumb2], [thumb3]) VALUES (2, N'Nike Air Max Pre-Day', N'product_2.png', 120, CAST(N'2021-07-25' AS Date), 1, N'1', N'single2_1.jpg
', N'single2_2.jpg
', N'single2_3.jpg
', N'des2_1.jpg
', N'des2_2.jpg
', N'des2_3.jpg
', NULL, NULL, NULL, NULL, 15, N'thumb2_1.jpg
', N'thumb2_2.jpg
', N'thumb2_3.jpg
')
INSERT [dbo].[Products] ([id], [name], [image], [price], [create_date], [available], [category_id], [single1], [single2], [single3], [des1], [des2], [des3], [desmain], [desfirst], [dessecond], [desthird], [quantity], [thumb1], [thumb2], [thumb3]) VALUES (3, N'Jordan Delta 2', N'product_3.png', 190, CAST(N'2021-07-25' AS Date), 1, N'1', N'single3_1.jpg
', N'single3_2.jpg
', N'single3_3.jpg
', N'des3_1.jpg
', N'des3_2.jpg
', N'des3_3.jpg
', NULL, NULL, NULL, NULL, 14, N'thumb3_1.jpg
', N'thumb3_2.jpg
', N'thumb3_3.jpg
')
INSERT [dbo].[Products] ([id], [name], [image], [price], [create_date], [available], [category_id], [single1], [single2], [single3], [des1], [des2], [des3], [desmain], [desfirst], [dessecond], [desthird], [quantity], [thumb1], [thumb2], [thumb3]) VALUES (4, N'Ultraboost 20 Nam', N'product_4.png', 210, CAST(N'2021-07-25' AS Date), 1, N'2', N'single4_1.jpg
', N'single4_2.jpg
', N'single4_3.jpg
', N'des4_1.jpg
', N'des4_2.jpg
', N'des4_3.jpg
', NULL, NULL, NULL, NULL, 27, N'thumb4_1.jpg
', N'thumb4_2.jpg
', N'thumb4_3.jpg
')
INSERT [dbo].[Products] ([id], [name], [image], [price], [create_date], [available], [category_id], [single1], [single2], [single3], [des1], [des2], [des3], [desmain], [desfirst], [dessecond], [desthird], [quantity], [thumb1], [thumb2], [thumb3]) VALUES (5, N'Giày adidas ORIGINALS Retroset Nam Màu đen FW4772', N'product_5.png', 110, CAST(N'2021-07-25' AS Date), 1, N'2', N'single5_1.jpg
', N'single5_2.jpg
', N'single5_3.jpg
', N'des5_1.jpg
', N'des5_2.jpg
', N'des5_3.jpg
', NULL, NULL, NULL, NULL, 63, N'thumb5_1.jpg
', N'thumb5_2.jpg
', N'thumb5_3.jpg
')
INSERT [dbo].[Products] ([id], [name], [image], [price], [create_date], [available], [category_id], [single1], [single2], [single3], [des1], [des2], [des3], [desmain], [desfirst], [dessecond], [desthird], [quantity], [thumb1], [thumb2], [thumb3]) VALUES (6, N'Giày adidas ORIGINALS Nam Superstar Màu Trắng FZ1807', N'product_6.png', 120, CAST(N'2021-07-25' AS Date), 1, N'2', N'single6_1.jpg
', N'single6_2.jpg
', N'single6_3.jpg
', N'des6_1.jpg
', N'des6_2.jpg
', N'des6_3.jpg
', NULL, NULL, NULL, NULL, 24, N'thumb6_1.jpg
', N'thumb6_2.jpg
', N'thumb6_3.jpg
')
INSERT [dbo].[Products] ([id], [name], [image], [price], [create_date], [available], [category_id], [single1], [single2], [single3], [des1], [des2], [des3], [desmain], [desfirst], [dessecond], [desthird], [quantity], [thumb1], [thumb2], [thumb3]) VALUES (7, N'Giày Sneaker PUMA RS-X SOFTCASE ', N'product_7.png', 115, CAST(N'2021-07-25' AS Date), 1, N'3', N'single7_1.jpg
', N'single7_2.jpg
', N'single7_3.jpg
', N'des7_1.jpg
', N'des7_2.jpg
', N'des7_3.jpg
', NULL, NULL, NULL, NULL, 15, N'thumb7_1.jpg
', N'thumb7_2.jpg
', N'thumb7_3.jpg
')
INSERT [dbo].[Products] ([id], [name], [image], [price], [create_date], [available], [category_id], [single1], [single2], [single3], [des1], [des2], [des3], [desmain], [desfirst], [dessecond], [desthird], [quantity], [thumb1], [thumb2], [thumb3]) VALUES (8, N'Giày thể thao Puma Thunder Colour Block Wns', N'product_8.png', 120, CAST(N'2021-07-25' AS Date), 1, N'3', N'single8_1.jpg
', N'single8_2.jpg
', N'single8_3.jpg
', N'des8_1.jpg
', N'des8_2.jpg
', N'des8_3.jpg
', NULL, NULL, NULL, NULL, 6, N'thumb8_1.jpg
', N'thumb8_2.jpg
', N'thumb8_3.jpg
')
INSERT [dbo].[Products] ([id], [name], [image], [price], [create_date], [available], [category_id], [single1], [single2], [single3], [des1], [des2], [des3], [desmain], [desfirst], [dessecond], [desthird], [quantity], [thumb1], [thumb2], [thumb3]) VALUES (9, N'Giày Puma RS-X Winterized Shoes Triple White', N'product_9.png', 150, CAST(N'2021-07-25' AS Date), 1, N'3', N'single9_1.jpg
', N'single9_2.jpg
', N'single9_3.jpg
', N'des9_1.jpg
', N'des9_2.jpg
', N'des9_3.jpg
', NULL, NULL, NULL, NULL, 25, N'thumb9_1.jpg
', N'thumb9_2.jpg
', N'thumb9_3.jpg
')
INSERT [dbo].[Products] ([id], [name], [image], [price], [create_date], [available], [category_id], [single1], [single2], [single3], [des1], [des2], [des3], [desmain], [desfirst], [dessecond], [desthird], [quantity], [thumb1], [thumb2], [thumb3]) VALUES (10, N'Giày Vans Old Skool Skate Mới
', N'product_10.png', 110, CAST(N'2021-07-25' AS Date), 1, N'4', N'single10_1.jpg
', N'single10_2.jpg
', N'single10_3.jpg
', N'des10_1.jpg
', N'des10_2.jpg
', N'des10_3.jpg
', NULL, NULL, NULL, NULL, 15, N'thumb10_1.jpg
', N'thumb10_2.jpg
', N'thumb10_3.jpg
')
INSERT [dbo].[Products] ([id], [name], [image], [price], [create_date], [available], [category_id], [single1], [single2], [single3], [des1], [des2], [des3], [desmain], [desfirst], [dessecond], [desthird], [quantity], [thumb1], [thumb2], [thumb3]) VALUES (11, N'Giày Vans Era Forgotten Bones
', N'product_11.png', 85, CAST(N'2021-07-25' AS Date), 1, N'4', N'single11_1.jpg
', N'single11_2.jpg
', N'single11_3.jpg
', N'des11_1.jpg
', N'des11_2.jpg
', N'des11_3.jpg
', NULL, NULL, NULL, NULL, 36, N'thumb11_1.jpg
', N'thumb11_2.jpg
', N'thumb11_3.jpg
')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'ADMIN', N'ADMIN')
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'STAFF', N'STAFF')
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'USER', N'USER')
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Accounts]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
