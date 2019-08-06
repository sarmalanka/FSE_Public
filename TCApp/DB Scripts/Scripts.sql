/****** Object:  Table [dbo].[Users]    Script Date: 7/23/2019 1:45:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[DisplayName] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Joined] [DateTime] NOT NULL,
	[Active] [bit] NOT NULL DEFAULT 1,
CONSTRAINT [pk_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[User_Following]    Script Date: 7/23/2019 1:45:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[User_Following](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] FOREIGN KEY REFERENCES USERS(ID) NOT NULL,
	[FollowingUser_ID] [int] FOREIGN KEY REFERENCES USERS(ID) NOT NULL,
CONSTRAINT [pk_User_Following] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[TweetDetails]    Script Date: 7/23/2019 1:45:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TweetDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] FOREIGN KEY REFERENCES USERS(ID) NOT NULL,
	[Message] [varchar](140) NOT NULL,
	[Created] [DateTime] NOT NULL,
	[Updated] [DateTime] NULL,
CONSTRAINT [pk_TweetDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO