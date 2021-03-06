USE [Bookshop]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 20/12/2017 16:14:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](120) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ISBN] [varchar](22) NOT NULL,
	[Author] [varchar](64) NOT NULL,
	[Stock] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK__Book__3DE0C22791CB8827] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 20/12/2017 16:14:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](16) NOT NULL,
 CONSTRAINT [PK__Category__19093A2BB7D4E167] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 20/12/2017 16:14:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[PercentDiscount] [decimal](3, 2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 20/12/2017 16:14:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[UserID] [nvarchar](max) NOT NULL,
	[DatePurchase] [datetime] NOT NULL,
	[Price] [decimal](20, 4) NOT NULL,
	[Discount] [decimal](3, 2) NULL,
	[OrderStatus] [varchar](15) NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK__tmp_ms_x__C3905BAF0629A804] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (1, N'The Trials of Apollo Book Two The Dark Prophecy', 1, N'9781484746424', N'Rick Riordan', 9, CAST(19.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (2, N'The Wonderful Things You Will Be', 1, N'9780385376716', N'Emily Winfield Martin', 10, CAST(17.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (3, N'A Court of Wings and Ruin', 1, N'9781619634480', N'Sarah J. Maas', 9, CAST(18.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (4, N'Lord of Shadows (The Dark Artifices)', 1, N'9781442468405', N'Cassandra Clare', -1, CAST(24.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (5, N'The Day the Crayons Quit', 1, N'9780399255373', N'Drew Daywalt and Oliver Jeffers', 7, CAST(17.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (6, N'If Animals Kissed Good Night', 1, N'9780374300210', N'Ann Whitford Paul and David Walker', 10, CAST(7.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (7, N'The Book with No Pictures', 1, N'9780803741713', N'B. J. Novak', 10, CAST(17.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (8, N'The Hate U Give', 1, N'9780062498533', N'Angie Thomas', 10, CAST(17.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (9, N'Ada Twist, Scientist', 1, N'9781419721373', N'Andrea Beaty and David Roberts', 9, CAST(17.95 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (10, N'The Trials of Apollo, Book 1: The Hidden Oracle', 1, N'9781484732748', N'Rick Riordan', 10, CAST(19.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (11, N'The Girl Who Drank the Moon', 1, N'9781616205676', N'Kelly Barnhill', 10, CAST(16.95 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (12, N'We''re All Wonders', 1, N'9781524766498', N'R. J. Palacio', 10, CAST(18.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (13, N'The Intelligent Investor', 2, N'9780060555665', N'Benjamin Graham and Jason Zweig', 10, CAST(22.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (14, N'Set for Life', 2, N'9780997584714', N'Scott Trench', 10, CAST(29.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (15, N'The Millionaire Next Door', 2, N'9781589795471', N'Thomas J. Stanley and William D. Danko', 10, CAST(16.95 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (16, N'Adaptive Markets', 2, N'9780691135144', N'Andrew W. Lo', 10, CAST(37.50 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (17, N'Profit First', 2, N'9780735214149', N'Mike Michalowicz', 10, CAST(27.00 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (18, N'Fanatical Prospecting', 2, N'9781119144755', N'Jeb Blount and Mike Weinberg', 10, CAST(27.00 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (19, N'How to Day Trade for a Living', 2, N'9781535585958', N'Andrew Aziz', 10, CAST(19.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (20, N'The End of Theory', 2, N'9780691169019', N'Richard Bookstaber', 10, CAST(29.95 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (21, N'Venture Deals', 2, N'9781119259756', N'Brad Feld and Jason Mendelson', 10, CAST(49.95 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (22, N'Black Edge', 2, N'9780812995800', N'Sheelah Kolhatkar', 10, CAST(28.00 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (23, N'Business Adventures: Twelve Classic Tales from the World of Wall Street', 2, N'9781497644892', N'John Brooks', 10, CAST(18.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (24, N'The Truth About Your Future', 2, N'9781501163807', N'Ric Edelman', 10, CAST(26.00 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (25, N'When Breath Becomes Air', 3, N'9780812988406', N'Paul Kalanithi', 10, CAST(25.00 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (26, N'Born a Crime: Stories from a South African Childhood', 3, N'9780399588174', N'Trevor Noah', 10, CAST(28.00 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (27, N'The Stranger in the Woods: The Extraordinary Story of the Last True Hermit', 3, N'9781101875681', N'Michael Finkel', 9, CAST(25.95 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (28, N'The Moth Presents All These Wonders: True Stories About Facing the Unknown', 3, N'9781101904404', N'Catherine Burns and Neil Gaiman', 10, CAST(25.00 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (29, N'The Most Beautiful: My Life with Prince', 3, N'9780316468978', N'Mayte Garcia', 10, CAST(27.00 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (30, N'The Rules Do Not Apply: A Memoir', 3, N'9780812996937', N'Ariel Levy', 10, CAST(27.00 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (31, N'Letterman: The Last Giant of Late Night', 3, N'9780062377210', N'Jason Zinoman', 10, CAST(28.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (32, N'Richard Nixon: The Life', 3, N'9780385537353', N'John A. Farrell', 10, CAST(35.00 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (33, N'Talking as Fast as I Can: From Gilmore Girls to Gilmore Girls (and Everything in Between)', 3, N'9780425285176', N'Lauren Graham', 10, CAST(28.00 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (34, N'Born to Run', 3, N'9780307279187', N'Bruce Springsteen', 10, CAST(32.50 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (35, N'The Black Hand: The Epic War Between a Brilliant Detective and the Deadliest Secret Society in American History', 3, N'9780544633384', N'Stephan Talty', 10, CAST(28.00 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (36, N'The Road to Jonestown: Jim Jones and Peoples Temple', 3, N'9781476763828', N'Jeff Guinn', 10, CAST(28.00 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (37, N'The Art of Overwatch', 4, N'9781506703671', N'Blizzard', 10, CAST(49.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (38, N'Overwatch: Anthology Volume', 4, N'9781506705408', N'BLIZZARD ENTERTAINMENT and Matt Burns', 10, CAST(19.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (39, N'Cracking the Coding Interview', 4, N'9780984782857', N'Gayle Laakmann McDowell', 10, CAST(26.79 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (40, N'Deep Learning', 4, N'9780262035613', N'Ian Goodfellow and Yoshua Bengio', 10, CAST(80.00 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (41, N'Hands-On Machine Learning with Scikit-Learn and TensorFlow', 4, N'9781491962299', N'AurÃ©lien GÃ©ron', -30, CAST(49.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (42, N'The Art of Persona 5', 4, N'9780744017311', N'Prima Games', 6, CAST(39.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (43, N'Everybody Lies:', 4, N'9780062390851', N'Seth Stephens-Davidowitz', 10, CAST(27.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (44, N'CompTIA A+ Certification All-in-One Exam Guide', 4, N'9781259589515', N'Mike Meyers', 10, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (45, N'Python Crash Course', 4, N'9781593276034', N'Eric Matthes', 10, CAST(39.95 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (46, N'The Legend of Zelda', 4, N'9781506703350', N'Nintendo', 10, CAST(39.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (47, N'The Legend of Zelda: Breadth of the Wild', 4, N'9781911015222', N'Piggyback', 10, CAST(39.99 AS Decimal(18, 2)))
INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (48, N'df', 1, N'123456777', N'AAA', 5, CAST(25.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Book] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (1, N'children')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (2, N'finance')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (3, N'non-fiction')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (4, N'technical')
SET IDENTITY_INSERT [dbo].[Category] OFF
INSERT [dbo].[Discounts] ([StartDate], [EndDate], [PercentDiscount]) VALUES (CAST(N'2017-11-19' AS Date), CAST(N'2017-12-18' AS Date), CAST(0.50 AS Decimal(3, 2)))
INSERT [dbo].[Discounts] ([StartDate], [EndDate], [PercentDiscount]) VALUES (CAST(N'2017-11-20' AS Date), CAST(N'2017-12-25' AS Date), CAST(0.60 AS Decimal(3, 2)))
INSERT [dbo].[Discounts] ([StartDate], [EndDate], [PercentDiscount]) VALUES (CAST(N'2017-12-05' AS Date), CAST(N'2017-12-11' AS Date), CAST(0.70 AS Decimal(3, 2)))
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (1, 4, N'1234567812345678', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(24.9900 AS Decimal(20, 4)), CAST(0.50 AS Decimal(3, 2)), N'Processed', 2)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (2, 4, N'ae8806e3-db8c-4c08-99af-afc693c53e91', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(12.4950 AS Decimal(20, 4)), CAST(0.50 AS Decimal(3, 2)), N'Processing', 1)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (3, 4, N'3c6de4e2-483f-4270-ab6a-083e59082090', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(124.9500 AS Decimal(20, 4)), CAST(0.50 AS Decimal(3, 2)), N'Processed', 10)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (4, 5, N'ae8806e3-db8c-4c08-99af-afc693c53e91', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(17.9900 AS Decimal(20, 4)), CAST(0.50 AS Decimal(3, 2)), N'Processing', 2)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (5, 9, N'ae8806e3-db8c-4c08-99af-afc693c53e91', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(8.9750 AS Decimal(20, 4)), CAST(0.50 AS Decimal(3, 2)), N'Processing', 1)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (6, 1, N'bed82b34-644b-4e9b-8ae0-dca08c2be5d4', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(7.9960 AS Decimal(20, 4)), CAST(0.60 AS Decimal(3, 2)), N'Processing', 1)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (7, 27, N'd1f20600-4e18-455d-82ff-5d9063a571ab', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(10.3800 AS Decimal(20, 4)), CAST(0.60 AS Decimal(3, 2)), N'Processing', 1)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (8, 41, N'4842bc60-4be7-4b67-b260-18f256cc4ec0', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(199.9600 AS Decimal(20, 4)), CAST(0.60 AS Decimal(3, 2)), N'Processing', 10)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (9, 42, N'4842bc60-4be7-4b67-b260-18f256cc4ec0', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(15.9960 AS Decimal(20, 4)), CAST(0.60 AS Decimal(3, 2)), N'Processing', 1)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (10, 41, N'4842bc60-4be7-4b67-b260-18f256cc4ec0', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(199.9600 AS Decimal(20, 4)), CAST(0.60 AS Decimal(3, 2)), N'Processing', 10)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (11, 42, N'4842bc60-4be7-4b67-b260-18f256cc4ec0', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(15.9960 AS Decimal(20, 4)), CAST(0.60 AS Decimal(3, 2)), N'Processing', 1)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (12, 41, N'4842bc60-4be7-4b67-b260-18f256cc4ec0', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(199.9600 AS Decimal(20, 4)), CAST(0.60 AS Decimal(3, 2)), N'Processing', 10)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (13, 42, N'4842bc60-4be7-4b67-b260-18f256cc4ec0', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(15.9960 AS Decimal(20, 4)), CAST(0.60 AS Decimal(3, 2)), N'Processing', 1)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (14, 41, N'4842bc60-4be7-4b67-b260-18f256cc4ec0', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(199.9600 AS Decimal(20, 4)), CAST(0.60 AS Decimal(3, 2)), N'Processing', 10)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (15, 42, N'4842bc60-4be7-4b67-b260-18f256cc4ec0', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(15.9960 AS Decimal(20, 4)), CAST(0.60 AS Decimal(3, 2)), N'Processing', 1)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (16, 3, N'4842bc60-4be7-4b67-b260-18f256cc4ec0', CAST(N'2017-11-21T00:00:00.000' AS DateTime), CAST(7.5960 AS Decimal(20, 4)), CAST(0.60 AS Decimal(3, 2)), N'Processing', 1)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (17, 4, N'ae8806e3-db8c-4c08-99af-afc693c53e91', CAST(N'2017-12-04T00:00:00.000' AS DateTime), CAST(9.9960 AS Decimal(20, 4)), CAST(0.60 AS Decimal(3, 2)), N'Processing', 1)
INSERT [dbo].[Orders] ([OrderID], [BookID], [UserID], [DatePurchase], [Price], [Discount], [OrderStatus], [Quantity]) VALUES (18, 5, N'ae8806e3-db8c-4c08-99af-afc693c53e91', CAST(N'2017-12-04T00:00:00.000' AS DateTime), CAST(7.1960 AS Decimal(20, 4)), CAST(0.60 AS Decimal(3, 2)), N'Processing', 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK__Book__CategoryID__1273C1CD] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK__Book__CategoryID__1273C1CD]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__BookID__2C3393D0] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__BookID__2C3393D0]
GO
