USE [MUSIC]
GO
/****** Object:  Table [dbo].[MUSIC]    Script Date: 23/10/2022 11:32:28 AM ******/
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
	[rated] [float] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MUSIC] ON 

INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (1, N'Bài Này Chill Phết', N'Ðen Vâu', N'Ðen Vâu', N'https://www.youtube.com/watch?v=ddaEtFOsFeM', 1, N'bainaychilphet.webp', 9.5)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (2, N'Buồn Không Em', N'Ðạt G', N'Ðạt G', N'https://www.youtube.com/watch?v=NtKX__-qPSI', 0, N'buonkhongem.webp', 7.9)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (4, N'Đây Là Một Bài Hát Vui', N'Jun Phạm', N'Huỳnh Hiền Năng', N'https://www.youtube.com/watch?v=GNsoXrAEEWg', 2, N'daylamotbaihatvui.webp', 5.5)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (5, N'Nước ngoài', N'Phan Mạnh Quỳnh', N'Phan Mạnh Quỳnh', N'https://www.youtube.com/watch?v=rKUieRwoYAI', 0, N'nuocngoai.webp', 8)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (6, N'Sai người sai thời điểm', N'Thanh Hung', N'Thanh Hung', N'https://www.youtube.com/watch?v=CKzlexoWLic', 0, N'sainguoisaithoidiem.webp', 7.5)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (7, N'Vô Cùng ( Vì Anh Thương Em)', N'Phan Duy Anh', N'Võ Hoài Phúc', N'https://www.youtube.com/watch?v=iJKV5miglAg', 0, N'vocung.webp', 6)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (8, N'Đổi Thay - Hồ Quang Hiếu', N'Hồ Quang Hiếu', N'Hồ Quang Hiếu', N'https://www.youtube.com/watch?v=4HkSeZKkFwg', 0, N'doithay.jpg', 7)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (9, N'Suýt Nữa Thì', N'Andiez', N'Andiez', N'https://www.youtube.com/watch?v=cUmpJ2zwfVU', 0, N'suytnuathi.webp', 5)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (10, N'Anh Ở Đây Mà', N'Ðứcc Phúc', N'Andiez', N'https://www.youtube.com/watch?v=EPpEuUuJZ_w', 0, N'anhodayma.webp', 3.5)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (11, N'1 Phút', N'Andiez', N'Andiez', N'https://www.youtube.com/watch?v=dLQe4qEfVJw', 1, N'1phut.jpg', 4.9)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (12, N'Người Ấy', N'Trịnh Thang Bình', N'Trịnh Thang Bình', N'https://www.youtube.com/watch?v=1Tj1wSfRkZg', 1, N'nguoiay.jpg', 9)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (13, N'Ngỡ Như Giấc Mơ', N'Chu Duyên', N'Chu Duyên', N'https://www.youtube.com/watch?v=9HhpBOn8Tvo', 1, N'ngonhugiacmo.webp', 6)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (14, N'Mộng Thủy Tinh', N'Nguyễn Van Chung', N'Nguyễn Van Chung', N'https://www.youtube.com/watch?v=JLEHFXHAPnw', 1, N'mongthuytinh.jpg', 7.5)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (15, N'Có Những Ngày Bình Yên Đến Lạ', N'Acoustic', N'Acoustic', N'https://www.youtube.com/watch?v=uRgBZ-YuSik', 1, N'conhungngaybinhyendenla.jpg', 6.9)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (16, N'Khi Ta Cùng Nhau Hát Vang', N'Phạm Minh Thành', N'Phạm Minh Thành', N'https://www.youtube.com/watch?v=APzOewt_xQI', 1, N'khitacungnhauhatvang.jpg', 8.5)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (17, N'Ba Kể Con Nghe', N'Búp Bênh Team', N'Nguyễn Hải Phong', N'https://www.youtube.com/watch?v=5mYA4WswGdw', 1, N'bakeconnge.webp', 5.8)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (18, N'Người Tình Mùa Đông', N'Hà Anh Tuấn', N'Hà Anh Tuấn', N'https://www.youtube.com/watch?v=dns2WLu8Su8', 1, N'nguoitinhmuadong.webp', 9.5)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (19, N'Thành Phố Sương', N'Hà Anh Tuấn', N'Hà Anh Tuấn', N'https://www.youtube.com/watch?v=AtBNDsPkq40', 1, N'thanhphosuong.webp', 5.8)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (20, N'Lại Gần Hôn Anh', N'Lân Nhã', N'Lân Nhã', N'https://www.youtube.com/watch?v=vZrPHRmemlo', 1, N'laiganhonanh.webp', 6.5)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (21, N'Những Điều Nhỏ Nhoi ', N'Vy Oanh', N'Nguyễn Hồng Thuận', N'https://www.youtube.com/watch?v=wuD-VmnxlqM', 2, N'nhungdieunhonhoi.jpg', 8.8)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (22, N'Em Vẫn Yêu Đời', N'Hoàng Yến Chibi', N'Bùi Công Nam', N'https://www.youtube.com/watch?v=brSkdsrqPAg', 2, N'emvanyeudoi.webp', 6.9)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (23, N'Một Ngày Mới', N'Van Mai Huong', N'Van Mai Huong', N'https://www.youtube.com/watch?v=j17VDMFB8IU', 2, N'motngaymoi.jpg', 5.8)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (24, N'Bài Ca Tuổi Trẻ', N'TamKa PKL', N'Nguyễn Trung Dung', N'https://www.youtube.com/watch?v=ghUh0NPHXy8', 2, N'baicatuoitre.webp', 9.5)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (25, N'Anh Là Của Em', N'Karik', N'Karik', N'https://www.youtube.com/watch?v=qsVcij8Pk6k', 2, N'anhlacuaem.jpg', 5.8)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (26, N'Cô Gái M52', N'Huy ft. Tùng Viu ', N'Huy ft. Tùng Viu ', N'https://www.youtube.com/watch?v=Yp-sVNTXSB0', 2, N'cogaim52.webp', 6.9)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (27, N'Cùng Anh', N'Ngọc Dolil, NIB', N'Ngọc Dolil,NIB', N'https://www.youtube.com/watch?v=QyhFzyGH-4w', 2, N'cunganh.webp', 8.5)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (28, N'Làm Vợ Anh Nhé', N'Chi Dân', N'Chi Dân', N'https://www.youtube.com/watch?v=3sxk_GgpJpc', 2, N'lamvoanhnhe.webp', 9)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (29, N'Mình Cưới Nhau Đi', N'Pjnboys,Huỳnh James', N'Pjnboys,Huỳnh James', N'https://www.youtube.com/watch?v=BBRCKcGPmhI', 2, N'minhcuoinhaudi.webp', 8.6)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (30, N'Yêu Một Người Có Lẽ', N'Lou Hoàng,Miu Lê', N'Lou Hoàng,Miu Lê', N'https://www.youtube.com/watch?v=_-KiD98d3_o', 2, N'yeumotnguoicole.webp', 8.9)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (31, N'Anh sẽ ổn thôi', N'Vuong Anh Tú', N'Vuong Anh Tú', N'https://www.youtube.com/watch?v=uk7xxK0g-wo', 0, N'anhseonthoi.webp', 7)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (32, N'Lời xin lỗi vụng về', N'Quân AP', N'Vu Hà Anh', N'https://www.youtube.com/watch?v=LhTwcqI71n0', 0, N'loixinloivungve.webp', 6)
INSERT [dbo].[MUSIC] ([id], [name_music], [name_singer], [name_author], [url], [flag], [url_image], [rated]) VALUES (33, N'Em không sai chúng ta sai', N'Erik', N'Nguyễn Phúc Thiện', N'https://www.youtube.com/watch?v=LhTwcqI71n0', 0, N'emkhongsaichungtasai.webp', 5.5)
SET IDENTITY_INSERT [dbo].[MUSIC] OFF
GO
