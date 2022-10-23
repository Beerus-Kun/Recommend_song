USE [MUSIC]
GO
/****** Object:  Table [dbo].[MUSIC]    Script Date: 23/10/2022 11:17:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MUSIC](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name_music] [nvarchar](255) NULL,
	[name_singer] [nvarchar](255) NULL,
	[name_author] [nvarchar](255) NULL,
	[url] [nvarchar](255) NULL,
	[flag] [tinyint] NULL,
	[url_image] [varchar](255) NULL,
	[rated] [float] NULL,
 CONSTRAINT [PK_MUSIC] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
