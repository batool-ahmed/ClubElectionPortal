USE [Club Elections]
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 12/20/2020 9:30:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batch](
	[Batch_ID] [int] IDENTITY(1,1) NOT NULL,
	[BatchName] [nchar](30) NULL,
	[BeginDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED 
(
	[Batch_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 12/20/2020 9:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate](
	[Candidate_StudentID] [nchar](7) NOT NULL,
	[Club_ID] [int] NOT NULL,
	[Position_ID] [int] NOT NULL,
	[ElectionID] [int] NOT NULL,
	[Mandate] [text] NULL,
	[IsApproved] [nchar](10) NULL,
 CONSTRAINT [PK_Candidate] PRIMARY KEY CLUSTERED 
(
	[Candidate_StudentID] ASC,
	[Club_ID] ASC,
	[Position_ID] ASC,
	[ElectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Club]    Script Date: 12/20/2020 9:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Club](
	[Club_ID] [int] IDENTITY(1,1) NOT NULL,
	[Club Name] [nchar](100) NOT NULL,
	[Club Description] [text] NULL,
	[Patron_ID] [int] NULL,
	[Monogram] [nchar](1000) NULL,
 CONSTRAINT [PK_Club] PRIMARY KEY CLUSTERED 
(
	[Club_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Election]    Script Date: 12/20/2020 9:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Election](
	[ElectionID] [int] NOT NULL,
	[ElectionYear] [int] NOT NULL,
	[PollingStartDate] [datetime] NULL,
	[PollingEndDate] [datetime] NULL,
	[ValidFrom] [datetime] NULL,
	[ValidTill] [datetime] NULL,
 CONSTRAINT [PK_Election] PRIMARY KEY CLUSTERED 
(
	[ElectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExecutiveBody]    Script Date: 12/20/2020 9:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExecutiveBody](
	[TenureStart] [date] NOT NULL,
	[TenureEnd] [date] NOT NULL,
	[ClubID] [int] NOT NULL,
	[Position] [int] NOT NULL,
	[Student_ID] [nchar](7) NULL,
 CONSTRAINT [PK_ExecutiveBody] PRIMARY KEY CLUSTERED 
(
	[TenureStart] ASC,
	[TenureEnd] ASC,
	[ClubID] ASC,
	[Position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Major]    Script Date: 12/20/2020 9:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major](
	[MajorID] [int] NOT NULL,
	[MajorName] [nchar](30) NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Major] PRIMARY KEY CLUSTERED 
(
	[MajorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Membership]    Script Date: 12/20/2020 9:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membership](
	[Student_ID] [nchar](7) NOT NULL,
	[Club_ID] [int] NOT NULL,
	[TenureStart] [date] NULL,
	[TenureEnd] [nchar](10) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Membership] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC,
	[Club_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patron]    Script Date: 12/20/2020 9:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patron](
	[Patron_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](100) NOT NULL,
	[Organization] [nchar](100) NOT NULL,
	[Description] [text] NULL,
	[TenureStart] [date] NULL,
	[TenureEnd] [date] NULL,
 CONSTRAINT [PK_Patron] PRIMARY KEY CLUSTERED 
(
	[Patron_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 12/20/2020 9:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Position_ID] [int] IDENTITY(1,1) NOT NULL,
	[DesignationRole] [nchar](50) NOT NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Position_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/20/2020 9:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Student_ID] [nchar](7) NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[Email] [nchar](30) NOT NULL,
	[MajorID] [int] NOT NULL,
	[BatchID] [int] NOT NULL,
	[MobileNo] [nchar](10) NULL,
	[DateOfBirth] [datetime] NULL,
	[Image] [nchar](1000) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vote]    Script Date: 12/20/2020 9:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vote](
	[Vote_ID] [int] IDENTITY(1,1) NOT NULL,
	[Student_Voter_ID] [nchar](7) NOT NULL,
	[PositionID] [int] NOT NULL,
	[ElectionID] [int] NOT NULL,
	[ClubID] [int] NOT NULL,
	[Student_CandidateID] [nchar](7) NOT NULL,
 CONSTRAINT [PK_Vote] PRIMARY KEY CLUSTERED 
(
	[Vote_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Batch] ON 

INSERT [dbo].[Batch] ([Batch_ID], [BatchName], [BeginDate], [EndDate]) VALUES (1, N'2021                          ', NULL, NULL)
INSERT [dbo].[Batch] ([Batch_ID], [BatchName], [BeginDate], [EndDate]) VALUES (2, N'2022                          ', NULL, NULL)
INSERT [dbo].[Batch] ([Batch_ID], [BatchName], [BeginDate], [EndDate]) VALUES (3, N'2023                          ', NULL, NULL)
INSERT [dbo].[Batch] ([Batch_ID], [BatchName], [BeginDate], [EndDate]) VALUES (4, N'2024                          ', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Batch] OFF
GO
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'aa06204', 2, 2, 2, N'I am a brilliant adventurous person who wants to travel all the world', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'aa06204', 2, 4, 2, N'I deserve this post.', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'ab01234', 1, 3, 2, N'A wonderful person!', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'ab01234', 3, 2, 2, N'A wonderful person who is willing to sacrifice anything for HU.', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'ab01234', 4, 1, 2, N'Anonymous Person willing to make HU a better place', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'ba06180', 1, 1, 2, N'I am ex[perienced and a good leader', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'ba06180', 2, 3, 2, N'I am a brilliant adventurous person who wants to travel all the world', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'cd01234', 1, 1, 2, N'Powerful, Compelling, and a great leader!', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'cd01234', 1, 4, 2, N'Powerful, Decisiv,e and Confident', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'ef01234', 3, 4, 2, N'Passionate, Confident and Good at Dancing', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'ef01234', 4, 3, 2, N'Helpful, Caring, Kind and Dedicated', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'fr06161', 2, 2, 2, N'I am a brilliant adventurous person who wants to travel all the world', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'fr06161', 3, 3, 2, N'I can do well I suppose', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'fr06161', 4, 1, 2, N'No experience really, but I will give my best!
', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'ij01234', 3, 1, 2, N'I was the former president of America.', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'ij01234', 4, 4, 2, N'I was the former president of America.', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'kl01234', 3, 1, 2, N'I am worth more than Abraham Lincoln.', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'kl01234', 3, 3, 2, N'Hey there, please vote for me.', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'mn01234', 4, 3, 2, N'I am the King of Cricket.', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'ms06171', 2, 4, 2, N'I am a wonderful person!', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'rn06169', 1, 2, 2, N'Wonderful, Charismatic, Confident, and a great leader', N'1         ')
INSERT [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID], [Mandate], [IsApproved]) VALUES (N'rn06169', 2, 3, 2, N'I am the queen', N'1         ')
GO
SET IDENTITY_INSERT [dbo].[Club] ON 

INSERT [dbo].[Club] ([Club_ID], [Club Name], [Club Description], [Patron_ID], [Monogram]) VALUES (1, N'Habib Adventure Club                                                                                ', N'Engraved with the thrill and joy of adventure, mad rush of adrenaline and an everlasting experience of a lifetime, Habib Adventure Society brings you the chance to expand your horizons within a journey through excitement – packed with the sophistication of trekking, rush of scuba diving and delight of activities such as camping, hiking and jet-skiing. Make sure you sign up.', 1, N'static/assets/img/ClubImages/HAC.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Club] ([Club_ID], [Club Name], [Club Description], [Patron_ID], [Monogram]) VALUES (2, N'Entrepreneurship Club                                                                               ', N'Habib University Entrepreneurship Club aims to promote the idea of Entrepreneurship in Habib University students and later on community in general, by encouraging them and providing a platform to execute their ideas. The Club will be initiating entrepreneurship projects of its own in different fields of study. Moreover, the Club will be organizing (public) lectures, workshops, seminars, competitions, and activities related to the subject.', 4, N'static/assets/img/ClubImages/Entreuprenership.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Club] ([Club_ID], [Club Name], [Club Description], [Patron_ID], [Monogram]) VALUES (3, N'Raqs Club                                                                                           ', N'The purpose of this organization is to provide a platform for any dance related activities, to hone abilities and showcase talent. All sorts of dance forms shall be covered and given due representation under this club. Further, this club aims to break the conventional stereotypes related to dance and use dance as a form of expression to materialize social and cultural norms.', 3, N'static/assets/img/ClubImages/Raqs.png                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ')
INSERT [dbo].[Club] ([Club_ID], [Club Name], [Club Description], [Patron_ID], [Monogram]) VALUES (4, N'Serve Club For People                                                                               ', N'“The true real worth of our lives lies in our ability to be of service to others”. The Serve Club was created with the aim to promote a sense of service within and beyond the Habib University community. We believe that through service, not only can we empower the society but also ourselves to become better individuals every day. Our club was initiated in 2014 and has been working for various different sectors such as education, health, environment, and the general well-being of the university’s community and domestic staff. The club not only carries out meaningful projects and events through the semester but also work to make sure that they have a sustainable and lasting impact. We are also open to collaboration with external initiatives and NGOs to have a widespread and greater impact in the society', 2, N'static/assets/img/ClubImages/Serve.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ')
SET IDENTITY_INSERT [dbo].[Club] OFF
GO
INSERT [dbo].[Election] ([ElectionID], [ElectionYear], [PollingStartDate], [PollingEndDate], [ValidFrom], [ValidTill]) VALUES (2, 2020, CAST(N'2020-12-01T00:00:00.000' AS DateTime), CAST(N'2020-12-10T00:00:00.000' AS DateTime), CAST(N'2020-12-11T00:00:00.000' AS DateTime), CAST(N'2021-12-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Election] ([ElectionID], [ElectionYear], [PollingStartDate], [PollingEndDate], [ValidFrom], [ValidTill]) VALUES (3, 2022, CAST(N'2022-01-05T00:00:00.000' AS DateTime), CAST(N'2022-01-25T00:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime), CAST(N'2023-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 1, 1, N'ef01234')
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 1, 2, N'aa06204')
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 1, 3, N'rn06169')
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 1, 4, N'cd01234')
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 2, 1, N'aa06204')
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 2, 2, N'ms06171')
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 2, 3, N'ba06180')
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 2, 4, N'rn06169')
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 3, 1, N'mn01234')
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 3, 2, N'kl01234')
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 3, 3, N'ij01234')
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 3, 4, N'fr06161')
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 4, 1, N'fr06161')
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 4, 2, N'ab01234')
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 4, 3, N'gh01234')
INSERT [dbo].[ExecutiveBody] ([TenureStart], [TenureEnd], [ClubID], [Position], [Student_ID]) VALUES (CAST(N'2019-12-01' AS Date), CAST(N'2020-12-01' AS Date), 4, 4, N'ba06180')
GO
INSERT [dbo].[Major] ([MajorID], [MajorName], [Description]) VALUES (1, N'Computer Science              ', N'Best Field Out There!')
INSERT [dbo].[Major] ([MajorID], [MajorName], [Description]) VALUES (2, N'Electrical Engineering        ', N'Second Best Field Out There!')
INSERT [dbo].[Major] ([MajorID], [MajorName], [Description]) VALUES (3, N'Computer Engineering          ', N'A mixture of CS and EE')
INSERT [dbo].[Major] ([MajorID], [MajorName], [Description]) VALUES (4, N'Communication and Design      ', N'Arts and Design related field')
INSERT [dbo].[Major] ([MajorID], [MajorName], [Description]) VALUES (5, N'Social Development and Policy ', N'Society, Economics, Politics')
INSERT [dbo].[Major] ([MajorID], [MajorName], [Description]) VALUES (6, N'Comparitive Liberal Studies   ', N'Religion, Philosophy, History')
GO
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'aa06204', 1, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'aa06204', 2, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'aa06204', 3, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'ab01234', 1, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'ab01234', 3, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'ab01234', 4, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'ba06180', 1, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'ba06180', 2, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'ba06180', 4, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'cd01234', 1, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'cd01234', 3, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'cd01234', 4, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'ef01234', 1, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'ef01234', 3, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'ef01234', 4, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'fr06161', 2, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'fr06161', 3, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'fr06161', 4, CAST(N'2020-11-26' AS Date), N'2021-11-26', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'gh01234', 2, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'gh01234', 3, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'gh01234', 4, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'ij01234', 3, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'ij01234', 4, CAST(N'2020-12-20' AS Date), N'2020-12-20', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'kl01234', 3, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'mn01234', 3, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'mn01234', 4, CAST(N'2020-12-20' AS Date), N'2021-12-20', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'ms06171', 1, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'ms06171', 2, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'ms06171', 3, CAST(N'2020-11-18' AS Date), N'2021-11-26', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'rn06169', 1, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'rn06169', 2, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
INSERT [dbo].[Membership] ([Student_ID], [Club_ID], [TenureStart], [TenureEnd], [isActive]) VALUES (N'rn06169', 3, CAST(N'2019-12-01' AS Date), N'2020-12-01', 1)
GO
SET IDENTITY_INSERT [dbo].[Patron] ON 

INSERT [dbo].[Patron] ([Patron_ID], [Name], [Organization], [Description], [TenureStart], [TenureEnd]) VALUES (1, N'Akhlaque Ahmed                                                                                      ', N'Habib University                                                                                    ', N'Brilliant professor belonging to Computer Science DSSE Faculty', CAST(N'2020-05-07' AS Date), CAST(N'2021-05-07' AS Date))
INSERT [dbo].[Patron] ([Patron_ID], [Name], [Organization], [Description], [TenureStart], [TenureEnd]) VALUES (2, N'Carina Dreyer                                                                                       ', N'Habib University                                                                                    ', N'Brilliant professor belonging to ISCIM DSSE Faculty', CAST(N'2020-05-07' AS Date), CAST(N'2021-05-07' AS Date))
INSERT [dbo].[Patron] ([Patron_ID], [Name], [Organization], [Description], [TenureStart], [TenureEnd]) VALUES (3, N'Sadaf Habib                                                                                         ', N'Habib University                                                                                    ', N'Brilliant professor belonging to AHSS Faculty', CAST(N'2020-05-07' AS Date), CAST(N'2021-05-07' AS Date))
INSERT [dbo].[Patron] ([Patron_ID], [Name], [Organization], [Description], [TenureStart], [TenureEnd]) VALUES (4, N'Yousuf Kerai                                                                                        ', N'Habib University                                                                                    ', N'Brilliant professor belonging to ISCIM Faculty', CAST(N'2020-05-07' AS Date), CAST(N'2021-05-07' AS Date))
INSERT [dbo].[Patron] ([Patron_ID], [Name], [Organization], [Description], [TenureStart], [TenureEnd]) VALUES (5, N'Abdullah Khalid                                                                                     ', N'Habib University                                                                                    ', N'Brilliant professor belonging to ISCIM Faculty', CAST(N'2020-05-07' AS Date), CAST(N'2021-05-07' AS Date))
SET IDENTITY_INSERT [dbo].[Patron] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([Position_ID], [DesignationRole], [Description]) VALUES (1, N'President                                         ', N'The President responsibilities include establishing short and long-term goals, presiding over the workforce, managing budgets, ensuring the proper allocation of resources, and ensuring all departments meet their goals.')
INSERT [dbo].[Position] ([Position_ID], [DesignationRole], [Description]) VALUES (2, N'Vice-President                                    ', N'Collaborate with stakeholders to achieve mutual goals. Form and lead internal teams, providing training and mentorship as needed. Directly and indirectly manage staff with the goal of enhancing professional development and personal growth. Manage relationships with key clients')
INSERT [dbo].[Position] ([Position_ID], [DesignationRole], [Description]) VALUES (3, N'Treasurer                                         ', N'Treasurer is responsible for overseeing the club budget and investments. They also manage and work to minimize financial risk for the company. As the position deals with managing and accounting for large sums of money, an advanced degree in finance, accounting or related field is required.')
INSERT [dbo].[Position] ([Position_ID], [DesignationRole], [Description]) VALUES (4, N'General Secretary                                 ', N'Ensuring meetings are effectively organised and minuted. Maintaining effective records and administration. Upholding the legal requirements of governing documents, charity law, company law etc (where relevant). Communication and correspondence.')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
INSERT [dbo].[Student] ([Student_ID], [Name], [Email], [MajorID], [BatchID], [MobileNo], [DateOfBirth], [Image]) VALUES (N'aa06204', N'Adnan Asif                    ', N'aa06204@st.habib.edu.pk       ', 1, 3, NULL, NULL, N'static/assets/img/StudentImages/Adnan Asif.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ')
INSERT [dbo].[Student] ([Student_ID], [Name], [Email], [MajorID], [BatchID], [MobileNo], [DateOfBirth], [Image]) VALUES (N'ab01234', N'Jane Doe                      ', N'ab01234@st.habib.edu.pk       ', 2, 3, NULL, NULL, N'static/assets/img/StudentImages/Jane Doe.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ')
INSERT [dbo].[Student] ([Student_ID], [Name], [Email], [MajorID], [BatchID], [MobileNo], [DateOfBirth], [Image]) VALUES (N'ba06180', N'Batool Ahmed                  ', N'ba06180@st.habib.edu.pk       ', 1, 3, NULL, NULL, N'static/assets/img/StudentImages/Batool Ahmed.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ')
INSERT [dbo].[Student] ([Student_ID], [Name], [Email], [MajorID], [BatchID], [MobileNo], [DateOfBirth], [Image]) VALUES (N'cd01234', N'John Doe                      ', N'cd01234@st.habib.edu.pk       ', 4, 3, NULL, NULL, N'static/assets/img/StudentImages/John Doe.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ')
INSERT [dbo].[Student] ([Student_ID], [Name], [Email], [MajorID], [BatchID], [MobileNo], [DateOfBirth], [Image]) VALUES (N'ef01234', N'Hermione Granger              ', N'ef01234@st.habib.edu.pk       ', 5, 3, NULL, NULL, N'static/assets/img/StudentImages/Hermione Granger.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Student] ([Student_ID], [Name], [Email], [MajorID], [BatchID], [MobileNo], [DateOfBirth], [Image]) VALUES (N'fr06161', N'Fizza Rubab                   ', N'fr06161@st.habib.edu.pk       ', 1, 3, NULL, NULL, N'static/assets/img/StudentImages/Fizza Rubab.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ')
INSERT [dbo].[Student] ([Student_ID], [Name], [Email], [MajorID], [BatchID], [MobileNo], [DateOfBirth], [Image]) VALUES (N'gh01234', N'Dwayne Johnson                ', N'gh01234@st.habib.edu.pk       ', 6, 3, NULL, NULL, N'static/assets/img/StudentImages/Dwayne Johnson.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ')
INSERT [dbo].[Student] ([Student_ID], [Name], [Email], [MajorID], [BatchID], [MobileNo], [DateOfBirth], [Image]) VALUES (N'ij01234', N'Abraham Lincoln               ', N'ij01234@st.habib.edu.pk       ', 2, 3, NULL, NULL, N'static/assets/img/StudentImages/Abraham Lincoln.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Student] ([Student_ID], [Name], [Email], [MajorID], [BatchID], [MobileNo], [DateOfBirth], [Image]) VALUES (N'kl01234', N'Elizabeth Windsor             ', N'kl01234@st.habib.edu.pk       ', 2, 3, NULL, NULL, N'static/assets/img/StudentImages/Elizabeth Windsor.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ')
INSERT [dbo].[Student] ([Student_ID], [Name], [Email], [MajorID], [BatchID], [MobileNo], [DateOfBirth], [Image]) VALUES (N'mn01234', N'Shahid Afridi                 ', N'mn01234@st.habib.edu.pk       ', 2, 3, NULL, NULL, N'static/assets/img/StudentImages/Shahid Afridi.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Student] ([Student_ID], [Name], [Email], [MajorID], [BatchID], [MobileNo], [DateOfBirth], [Image]) VALUES (N'ms06171', N'Mubaraka Shabbir              ', N'ms06171@st.habib.edu.pk       ', 3, 3, NULL, NULL, N'static/assets/img/StudentImages/Mubaraka Shabbir.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Student] ([Student_ID], [Name], [Email], [MajorID], [BatchID], [MobileNo], [DateOfBirth], [Image]) VALUES (N'op01234', N'Albert Einstein               ', N'op01234@st.habib.edu.pk       ', 2, 3, NULL, NULL, NULL)
INSERT [dbo].[Student] ([Student_ID], [Name], [Email], [MajorID], [BatchID], [MobileNo], [DateOfBirth], [Image]) VALUES (N'rn06169', N'Ruhama Naeem                  ', N'rn06169@st.habib.edu.pk       ', 1, 3, NULL, NULL, N'static/assets/img/StudentImages/Ruhama Naeem.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ')
GO
SET IDENTITY_INSERT [dbo].[Vote] ON 

INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (1, N'rn06169', 2, 2, 2, N'fr06161')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (3, N'ms06171', 2, 2, 2, N'aa06204')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (4, N'ms06171', 2, 2, 2, N'aa06204')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (7, N'ba06180', 2, 2, 2, N'aa06204')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (8, N'ba06180', 2, 2, 2, N'fr06161')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (9, N'fr06161', 2, 2, 2, N'aa06204')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (10, N'aa06204', 2, 2, 2, N'fr06161')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (11, N'fr06161', 2, 2, 2, N'aa06204')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (12, N'ms06171', 3, 2, 2, N'ba06180')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (19, N'fr06161', 4, 2, 2, N'ms06171')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (20, N'fr06161', 3, 2, 2, N'ba06180')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (21, N'fr06161', 1, 2, 3, N'ij01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (22, N'fr06161', 3, 2, 4, N'mn01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (23, N'mn01234', 1, 2, 4, N'fr06161')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (24, N'mn01234', 4, 2, 4, N'ij01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (25, N'mn01234', 1, 2, 3, N'ij01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (28, N'fr06161', 3, 2, 2, N'rn06169')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (29, N'fr06161', 4, 2, 2, N'aa06204')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (30, N'fr06161', 4, 2, 2, N'ms06171')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (31, N'fr06161', 1, 2, 3, N'kl01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (32, N'fr06161', 3, 2, 3, N'kl01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (33, N'ab01234', 3, 2, 3, N'fr06161')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (34, N'ab01234', 1, 2, 3, N'kl01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (35, N'ef01234', 1, 2, 1, N'cd01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (36, N'ef01234', 3, 2, 1, N'ab01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (37, N'ef01234', 4, 2, 1, N'cd01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (38, N'ef01234', 2, 2, 3, N'ab01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (39, N'ef01234', 1, 2, 4, N'ab01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (40, N'rn06169', 1, 2, 1, N'cd01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (41, N'rn06169', 4, 2, 1, N'cd01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (42, N'rn06169', 3, 2, 1, N'ab01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (43, N'rn06169', 1, 2, 3, N'ij01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (44, N'rn06169', 2, 2, 3, N'ab01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (45, N'rn06169', 4, 2, 3, N'ef01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (46, N'rn06169', 3, 2, 3, N'fr06161')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (47, N'ba06180', 1, 2, 1, N'cd01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (48, N'ba06180', 2, 2, 1, N'rn06169')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (49, N'ba06180', 4, 2, 1, N'cd01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (50, N'ba06180', 3, 2, 1, N'ab01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (51, N'ba06180', 1, 2, 4, N'ab01234')
INSERT [dbo].[Vote] ([Vote_ID], [Student_Voter_ID], [PositionID], [ElectionID], [ClubID], [Student_CandidateID]) VALUES (52, N'ba06180', 3, 2, 4, N'ef01234')
SET IDENTITY_INSERT [dbo].[Vote] OFF
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [Candidate Selection] FOREIGN KEY([Candidate_StudentID], [Club_ID])
REFERENCES [dbo].[Membership] ([Student_ID], [Club_ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [Candidate Selection]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [in Elections] FOREIGN KEY([ElectionID])
REFERENCES [dbo].[Election] ([ElectionID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [in Elections]
GO
ALTER TABLE [dbo].[Club]  WITH CHECK ADD  CONSTRAINT [supervised by] FOREIGN KEY([Patron_ID])
REFERENCES [dbo].[Patron] ([Patron_ID])
GO
ALTER TABLE [dbo].[Club] CHECK CONSTRAINT [supervised by]
GO
ALTER TABLE [dbo].[ExecutiveBody]  WITH CHECK ADD  CONSTRAINT [Club Positions] FOREIGN KEY([Position])
REFERENCES [dbo].[Position] ([Position_ID])
GO
ALTER TABLE [dbo].[ExecutiveBody] CHECK CONSTRAINT [Club Positions]
GO
ALTER TABLE [dbo].[ExecutiveBody]  WITH CHECK ADD  CONSTRAINT [ClubExecutives] FOREIGN KEY([ClubID])
REFERENCES [dbo].[Club] ([Club_ID])
GO
ALTER TABLE [dbo].[ExecutiveBody] CHECK CONSTRAINT [ClubExecutives]
GO
ALTER TABLE [dbo].[ExecutiveBody]  WITH CHECK ADD  CONSTRAINT [Std Name] FOREIGN KEY([Student_ID], [ClubID])
REFERENCES [dbo].[Membership] ([Student_ID], [Club_ID])
GO
ALTER TABLE [dbo].[ExecutiveBody] CHECK CONSTRAINT [Std Name]
GO
ALTER TABLE [dbo].[Membership]  WITH CHECK ADD  CONSTRAINT [Club Membership] FOREIGN KEY([Club_ID])
REFERENCES [dbo].[Club] ([Club_ID])
GO
ALTER TABLE [dbo].[Membership] CHECK CONSTRAINT [Club Membership]
GO
ALTER TABLE [dbo].[Membership]  WITH CHECK ADD  CONSTRAINT [FK_Membership_Student] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Student] ([Student_ID])
GO
ALTER TABLE [dbo].[Membership] CHECK CONSTRAINT [FK_Membership_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [Student_Major] FOREIGN KEY([MajorID])
REFERENCES [dbo].[Major] ([MajorID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [Student_Major]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [StudentBatch] FOREIGN KEY([BatchID])
REFERENCES [dbo].[Batch] ([Batch_ID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [StudentBatch]
GO
ALTER TABLE [dbo].[Vote]  WITH CHECK ADD  CONSTRAINT [candidate details] FOREIGN KEY([Student_CandidateID], [ClubID], [PositionID], [ElectionID])
REFERENCES [dbo].[Candidate] ([Candidate_StudentID], [Club_ID], [Position_ID], [ElectionID])
GO
ALTER TABLE [dbo].[Vote] CHECK CONSTRAINT [candidate details]
GO
ALTER TABLE [dbo].[Vote]  WITH CHECK ADD  CONSTRAINT [has Voted] FOREIGN KEY([Student_Voter_ID])
REFERENCES [dbo].[Student] ([Student_ID])
GO
ALTER TABLE [dbo].[Vote] CHECK CONSTRAINT [has Voted]
GO
/****** Object:  StoredProcedure [dbo].[DeleteClub]    Script Date: 12/20/2020 9:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DeleteClub]
@ClubName nchar(100)
AS 
BEGIN
DECLARE @ClubID int;
set @ClubID=(Select Club_ID FROM Club where [Club Name]=@ClubName);
DELETE ExecutiveBody where ClubID=@ClubID;
DELETE Vote where ClubID=@ClubID;
DELETE Candidate where Club_ID=@ClubID;
DELETE Membership where Club_ID=@ClubID;
DELETE Club where Club_ID=@ClubID;
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteElection]    Script Date: 12/20/2020 9:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DeleteElection] 
@ID int
AS
begin
DELETE Vote where ElectionID=@ID;

DELETE Candidate where ElectionID=@ID;
DELETE Election where ElectionID=@ID;
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteMember]    Script Date: 12/20/2020 9:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DeleteMember]
@ID nchar(7), @ClubID int
AS
begin
update ExecutiveBody 
set Student_ID=NULL where Student_ID=@ID and ClubID=@ClubID;
delete Vote where Student_CandidateID=@ID and ClubID=@ClubID;
delete Candidate where Candidate_StudentID=@ID and Club_ID=@ClubID;
delete Membership where Student_ID=@ID and Club_ID=@ClubID;
end
GO
/****** Object:  StoredProcedure [dbo].[GetResults]    Script Date: 12/20/2020 9:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetResults] 
@ClubID int,  @PositionID int
AS
begin
SELECT (Select [Name] from Student where Student_ID=Student_CandidateID), COUNT(1) from Vote where PositionID=@PositionID
and ClubID=@ClubID group by Student_CandidateID
end
GO
