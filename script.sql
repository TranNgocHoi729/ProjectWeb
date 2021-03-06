USE [master]
GO
/****** Object:  Database [Web]    Script Date: 11/14/2019 11:36:40 AM ******/
CREATE DATABASE [Web]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Web', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Web.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Web_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Web_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Web] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Web] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Web] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Web] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Web] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Web] SET ARITHABORT OFF 
GO
ALTER DATABASE [Web] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Web] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Web] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Web] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Web] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Web] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Web] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Web] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Web] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Web] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Web] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Web] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Web] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Web] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Web] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Web] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Web] SET RECOVERY FULL 
GO
ALTER DATABASE [Web] SET  MULTI_USER 
GO
ALTER DATABASE [Web] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Web] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Web] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Web] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Web] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Web', N'ON'
GO
ALTER DATABASE [Web] SET QUERY_STORE = OFF
GO
USE [Web]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 11/14/2019 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[brand_id] [char](15) NOT NULL,
	[brand_name] [nvarchar](100) NULL,
	[distributor] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[car]    Script Date: 11/14/2019 11:36:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[car](
	[car_code] [char](10) NOT NULL,
	[car_name] [varchar](50) NULL,
	[brand_id] [char](15) NULL,
	[price] [float] NULL,
	[car_height] [float] NULL,
	[car_weight] [float] NULL,
	[car_engine] [varchar](50) NULL,
	[car_capacity] [int] NULL,
	[acceleration] [float] NULL,
	[maximum_speed] [int] NULL,
	[fuel_type] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[car_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 11/14/2019 11:36:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[img_id] [int] IDENTITY(1,1) NOT NULL,
	[car_code] [char](10) NULL,
	[img] [nvarchar](600) NULL,
PRIMARY KEY CLUSTERED 
(
	[img_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 11/14/2019 11:36:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[bill_id] [int] IDENTITY(1,1) NOT NULL,
	[bill_date] [date] NULL,
	[car_code] [char](10) NULL,
	[ustomer_name] [nvarchar](60) NULL,
	[customer_address] [nvarchar](1000) NULL,
	[customer_phone] [char](12) NULL,
	[customer_email] [varchar](50) NULL,
	[VAT] [float] NULL,
	[is_bought] [bit] NULL,
	[total_cost] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[brand] ([brand_id], [brand_name], [distributor]) VALUES (N'BG             ', N'Bugatti', N'Bugatti France')
INSERT [dbo].[brand] ([brand_id], [brand_name], [distributor]) VALUES (N'BMW            ', N'BMW', N'BMW Việt Nam')
INSERT [dbo].[brand] ([brand_id], [brand_name], [distributor]) VALUES (N'FR             ', N'Ferrari', N'Ferrari Italy')
INSERT [dbo].[brand] ([brand_id], [brand_name], [distributor]) VALUES (N'KR             ', N'KOENIGSEGG REGERA', N'Koenigsegg company')
INSERT [dbo].[brand] ([brand_id], [brand_name], [distributor]) VALUES (N'LB             ', N'Lamborghini', N'Lamborghini ASV')
INSERT [dbo].[brand] ([brand_id], [brand_name], [distributor]) VALUES (N'MD             ', N'Mercedes', N'Mercedes Benz Việt Nam')
INSERT [dbo].[brand] ([brand_id], [brand_name], [distributor]) VALUES (N'PS             ', N'Porsche', N'Porsche Italy')
INSERT [dbo].[brand] ([brand_id], [brand_name], [distributor]) VALUES (N'RR             ', N'Rolls-Royce', N'Rolls-Royce Taiwan')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'BG123     ', N'Bugatti123', N'BG             ', 56, 99, 99, N'99', 99, 99, 99, N'b5')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'BG16GC    ', N'Bugatti 16C Galibier Concept', N'BG             ', 795242, 2882, 1580, N'G4', 1982, 4.9, 289, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'BGCR23    ', N'Bugatti Chiron', N'BG             ', 99999, 170, 567, N'C34', 33, 99, 800, N'Diezen')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'BGE18VC   ', N'Bugatti EB 18.4 Veyron Concept', N'BG             ', 758134, 2868, 1580, N'G4', 1982, 4.7, 292, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'BGMLV     ', N'Bugatti Veyron Mansory Linea Vincero', N'BG             ', 792013, 2842, 1583, N'G4', 1958, 4.8, 290, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'BGV14SS   ', N'Bugatti Veyron 16.4 Super Sport', N'BG             ', 724729, 2826, 1582, N'G4', 1943, 4.8, 289, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'BGVGSV    ', N'Bugatti Veyron Grand Sport Vitesse', N'BG             ', 748173, 2882, 1594, N'G4', 1956, 4.9, 283, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'BMW118i   ', N'BMW 118i 2019', N'BMW            ', 73853.64, 2635, 1853, N'I4', 1936, 5.7, 229, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'BMW218i   ', N'BMW 218i 2019', N'BMW            ', 72942.34, 2839, 1924, N'I4', 1993, 5.9, 245, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'BMW320    ', N'BMW 320i', N'BMW            ', 72489.24, 2845, 1592, N'I4', 1935, 5.9, 250, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'BMW320G   ', N'BMW 320i GT', N'BMW            ', 73392.45, 2824, 1595, N'I4', 1991, 5.9, 250, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'FF458S    ', N'Ferrari 458 Speciale', N'FR             ', 2017497, 2881, 1587, N'F4', 1985, 3.5, 329, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'FF488G    ', N'Ferrari Ferrari 488 GTB', N'FR             ', 1628678, 2874, 1586, N'F4', 1983, 4, 319, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'FF488S    ', N'Ferrari 488 Spider', N'FR             ', 1729423, 2882, 1582, N'F4', 1982, 3.7, 329, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'FFF       ', N'Ferrari FF', N'FR             ', 1638465, 2883, 1585, N'F4', 1975, 4.3, 299, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'FRF12     ', N'Ferrari F12berlinetta', N'FR             ', 1638464, 2886, 1589, N'F4', 1985, 4.2, 309, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'KR212     ', N'KOENIGSEGG REGERA 212RS', N'KR             ', 2837378, 2724, 1783, N'F4', 1991, 3.5, 369, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'KRAR      ', N'KOENIGSEGG AGERA R', N'KR             ', 5784357, 2845, 1757, N'F4', 1996, 3.1, 379, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'KRARS     ', N'KOENIGSEGG AGERA RS', N'KR             ', 5965345, 2867, 1756, N'F4', 1995, 3.2, 389, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'LBL610    ', N'Lamborghini LP 610-4', N'LB             ', 592452, 2845, 1592, N'G4', 1992, 4.9, 292, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'LBL610S   ', N'Lamborghini LP 610-4 SPYDER', N'LB             ', 582749, 2844, 1629, N'G4', 1975, 4.8, 279, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'LBL620ST  ', N'Lamborghini LP 620-2 SUPER TROFEO', N'LB             ', 595673, 2840, 1580, N'G4', 1979, 4.9, 287, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'LBL750S   ', N'Lamborghini Aventador LP 750-4 Superveloce', N'LB             ', 582942, 2724, 1628, N'G4', 1945, 4.9, 278, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'LBSR      ', N'Lamborghini LP 750-4 SUPERVELOCE ROADSTER', N'LB             ', 592572, 2827, 1535, N'G4', 1986, 4.7, 289, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBC200    ', N'Mercedes-Benz C 200', N'MD             ', 83564.33, 2825, 1567, N'I4', 1945, 5.6, 252, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBC200E   ', N'Mercedes-Benz C 200 Exclusive', N'MD             ', 85332.35, 2930, 1567, N'I4', 1978, 5.5, 255, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBC300    ', N'Mercedes-Benz C 300', N'MD             ', 82478.26, 2840, 1580, N'I4', 1991, 5.9, 250, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBE200    ', N'Mercedes-Benz E 200', N'MD             ', 84743.45, 2580, 1495, N'I4', 1991, 5, 230, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBE200S   ', N'Mercedes-Benz E 200 Sport', N'MD             ', 83453.45, 2475, 1374, N'I4', 1995, 5.9, 230, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBE350A   ', N'Mercedes-Benz E 350 AMG', N'MD             ', 83425.34, 2834, 1542, N'I4', 1956, 5.3, 250, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBG200    ', N'Mercedes-Benz GLC 200', N'MD             ', 84853.56, 2845, 1585, N'I4', 1967, 5.4, 264, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBG250    ', N'Mercedes-Benz GLC 250', N'MD             ', 83856.35, 2674, 1643, N'I4', 1957, 5.3, 263, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBG300A   ', N'Mercedes-Benz GLC 300 AMG', N'MD             ', 86935.67, 2367, 1593, N'I4', 1935, 5.5, 250, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBG45     ', N'Mercedes-Benz GLA 45', N'MD             ', 83654.67, 2846, 1536, N'I4', 1936, 5.3, 240, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBGLA200  ', N'Mercedes-Benz GLA 200', N'MD             ', 84973.65, 2853, 1885, N'I4', 1939, 5.3, 258, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBGLA250  ', N'Mercedes-Benz GLA 250', N'MD             ', 83486.45, 2563, 1697, N'I4', 1996, 5.3, 277, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBGLC300C ', N'Mercedes-Benz GLC 300 Couple', N'MD             ', 85839.53, 2680, 1532, N'I4', 1960, 5.3, 240, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBGLS500  ', N'Mercedes-Benz GLS 500', N'MD             ', 83593.36, 2836, 1743, N'I4', 1934, 5.3, 289, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBMS450   ', N'Mercedes-Benz Maybach S450', N'MD             ', 85967.75, 2464, 1742, N'I4', 1983, 5.5, 270, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBMS560   ', N'Mercedes-Benz Maybach S560', N'MD             ', 86364.45, 2743, 1642, N'I4', 1974, 5.6, 246, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBMS650   ', N'Mercedes-Benz Maybach S650', N'MD             ', 89847.75, 2832, 1963, N'I4', 1945, 5.3, 260, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBS450    ', N'Mercedes-Benz S 450L', N'MD             ', 84636.24, 2840, 1570, N'I4', 1930, 5.4, 235, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'MBS450L   ', N'Mercedes-Benz S 450L Luxury', N'MD             ', 83758.24, 2840, 1560, N'I4', 1980, 5.3, 250, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'PS718B    ', N'Porsche 718 Boxster', N'PS             ', 3658865, 2860, 1753, N'G4', 1991, 4.6, 309, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'PS718C    ', N'Porsche 718 Cayman', N'PS             ', 3537786, 2879, 1754, N'G4', 1957, 4.3, 319, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'PSM123    ', N'Porsche Macan V123', N'PS             ', 3729473, 2828, 1580, N'G4', 1972, 4.5, 315, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'PSP345    ', N'Porsche Panamera V345', N'PS             ', 3849274, 2883, 1582, N'G4', 1974, 4.4, 312, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'RRG       ', N'Rolls-Royce Ghost', N'RR             ', 5920839, 2881, 1581, N'F4', 1956, 3.7, 379, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'RRGE      ', N'Rolls-Royce Ghost EWB', N'RR             ', 5975346, 2886, 1578, N'F4', 1975, 3.5, 379, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'RRP       ', N'Rolls-Royce Phantom', N'RR             ', 5937384, 2854, 1595, N'F4', 1983, 3.6, 369, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'RRPE      ', N'Rolls-Royce Phantom EWB', N'RR             ', 5932719, 2887, 1597, N'F4', 1986, 3.7, 375, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
INSERT [dbo].[car] ([car_code], [car_name], [brand_id], [price], [car_height], [car_weight], [car_engine], [car_capacity], [acceleration], [maximum_speed], [fuel_type]) VALUES (N'RRW       ', N'Rolls-Royce Wraith', N'RR             ', 5748976, 2885, 1586, N'F4', 1959, 3.4, 359, N'Xăng không chì có trị số octan 95 hoặc cao hơn')
SET IDENTITY_INSERT [dbo].[image] ON 

INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (1, N'MBC300    ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-Benz C 300.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (2, N'MBC200E   ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-Benz E 200 Sport.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (3, N'MBC200    ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-Benz C 200.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (4, N'MBE350A   ', N'file:///C|/Users/dell/Desktop/xe/mercedes benz 350.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (5, N'MBE200S   ', N'file:///C|/Users/dell/Desktop/xe/mercedes benz 200 S.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (6, N'MBE200    ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-Benz E 200.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (7, N'MBS450L   ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-Benz S 450 L Luxury.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (8, N'MBS450    ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-Benz S 450 L.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (9, N'MBGLC300C ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-Benz GLC 300.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (10, N'MBG250    ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-Benz GLC 250 4MATIC.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (11, N'MBG200    ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-Benz GLA 200.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (12, N'MBG45     ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-AMG GLA 45 4MATIC.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (13, N'MBGLA250  ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-Benz GLC 250 4MATIC.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (14, N'MBGLA200  ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-Benz GLA 200.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (15, N'MBMS560   ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-Maybach S 560 4Matic.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (16, N'MBMS650   ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-Maybach S 650 4Matic.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (17, N'MBMS450   ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-Benz S 450 L Luxury.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (18, N'MBGLS500  ', N'file:///C|/Users/dell/Desktop/xe/mercedes benz glc 500.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (19, N'BMW118i   ', N'file:///C|/Users/dell/Desktop/xe/BMW 118i.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (20, N'BMW218i   ', N'file:///C|/Users/dell/Desktop/xe/BMW 218i.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (21, N'BMW320    ', N'file:///C|/Users/dell/Desktop/xe/BMW 320i GT.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (22, N'BMW320G   ', N'file:///C|/Users/dell/Desktop/xe/BMW 320GT.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (23, N'KR212     ', N'file:///C|/Users/dell/Desktop/xe/Koenigsegg regera.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (24, N'KRAR      ', N'file:///C|/Users/dell/Desktop/xe/Koenigsegg Agera R.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (25, N'KRARS     ', N'file:///C|/Users/dell/Desktop/xe/Koenigsegg Agera RS.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (26, N'PS718B    ', N'file:///C|/Users/dell/Desktop/xe/Porsche 718 Boxster.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (27, N'PS718C    ', N'file:///C|/Users/dell/Desktop/xe/porsche 718 cayman.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (28, N'PSP345    ', N'file:///C|/Users/dell/Desktop/xe/porsche 718 panamera.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (29, N'RRG       ', N'file:///C|/Users/dell/Desktop/xe/rolls royce ghost.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (30, N'RRGE      ', N'file:///C|/Users/dell/Desktop/xe/rolls royce ghost ewb.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (31, N'RRW       ', N'file:///C|/Users/dell/Desktop/xe/rolls royce wraith.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (32, N'RRP       ', N'file:///C|/Users/dell/Desktop/xe/rolls royce phantom.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (33, N'RRPE      ', N'file:///C|/Users/dell/Desktop/xe/rolls royce phantom ewb.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (34, N'FRF12     ', N'file:///C|/Users/dell/Desktop/xe/ferrari f12.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (35, N'FFF       ', N'file:///C|/Users/dell/Desktop/xe/ferrari ff.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (36, N'FF488G    ', N'file:///C|/Users/dell/Desktop/xe/ferrari f488.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (37, N'FF488S    ', N'file:///C|/Users/dell/Desktop/xe/ferrari f488s.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (38, N'FF458S    ', N'file:///C|/Users/dell/Desktop/xe/ferrari f458 black.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (39, N'BGV14SS   ', N'file:///C|/Users/dell/Desktop/xe/bugatti Super Sport.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (40, N'BGVGSV    ', N'file:///C|/Users/dell/Desktop/xe/bugatti veyron grand sport.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (41, N'BGE18VC   ', N'file:///C|/Users/dell/Desktop/xe/bugatti eb 218 concept.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (42, N'BGMLV     ', N'file:///C|/Users/dell/Desktop/xe/bugatti veyron mansory.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (43, N'BG16GC    ', N'file:///C|/Users/dell/Desktop/xe/bugatti 16c galibiers.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (44, N'LBL750S   ', N'file:///C|/Users/dell/Desktop/xe/lamborghini aventador l700.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (45, N'LBL610S   ', N'file:///C|/Users/dell/Desktop/xe/Lamborghini LP 610-4 SPYDER.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (46, N'LBL610    ', N'file:///C|/Users/dell/Desktop/xe/Lamborghini LP 610.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (47, N'LBL620ST  ', N'file:///C|/Users/dell/Desktop/xe/lamborghini huracan lp 620-2 super trofeo.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (48, N'LBSR      ', N'file:///C|/Users/dell/Desktop/xe/Lamborghini LP 750-4 SUPERVELOCE ROADSTER.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (49, N'PSM123    ', N'file:///C|/Users/dell/Desktop/xe/Porsche Macan V123.jpg')
INSERT [dbo].[image] ([img_id], [car_code], [img]) VALUES (50, N'MBG300A   ', N'file:///C|/Users/dell/Desktop/xe/Mercedes-Benz GLC 300 AMG.jpg')
SET IDENTITY_INSERT [dbo].[image] OFF
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([bill_id], [bill_date], [car_code], [ustomer_name], [customer_address], [customer_phone], [customer_email], [VAT], [is_bought], [total_cost]) VALUES (1, CAST(N'2019-04-04' AS Date), N'FFF       ', N'Tran Ngoc Hoi', N'Ha Noi - Viet Nam', N'098765432   ', N'hoitn@gmail.com', 30, 1, 9999999)
INSERT [dbo].[orders] ([bill_id], [bill_date], [car_code], [ustomer_name], [customer_address], [customer_phone], [customer_email], [VAT], [is_bought], [total_cost]) VALUES (2, CAST(N'2019-04-07' AS Date), N'FFF       ', N'Vi Duck Ngkia', N'Ha Noi - Viet Nam', N'0987654999  ', N'Nghiatn@gmail.com', 30, 1, 9999999)
INSERT [dbo].[orders] ([bill_id], [bill_date], [car_code], [ustomer_name], [customer_address], [customer_phone], [customer_email], [VAT], [is_bought], [total_cost]) VALUES (11, CAST(N'2019-11-14' AS Date), N'RRG       ', N'Hoi 1234', N'Ha Noi', N'12345678    ', N'hoi1999@gmail.com', 45, 0, 8585216.55)
INSERT [dbo].[orders] ([bill_id], [bill_date], [car_code], [ustomer_name], [customer_address], [customer_phone], [customer_email], [VAT], [is_bought], [total_cost]) VALUES (12, CAST(N'2019-11-14' AS Date), N'BG16GC    ', N'Vi Duck Ngkia', N'Dong Da', N'999999999   ', N'NghiaOcchos@gmail.com', 45, 0, 1153100.9)
INSERT [dbo].[orders] ([bill_id], [bill_date], [car_code], [ustomer_name], [customer_address], [customer_phone], [customer_email], [VAT], [is_bought], [total_cost]) VALUES (13, CAST(N'2019-11-14' AS Date), N'RRPE      ', N'Khanh duy', N'ha noi', N'5555555555  ', N'duy@gmail.com', 45, 1, 8602442.55)
INSERT [dbo].[orders] ([bill_id], [bill_date], [car_code], [ustomer_name], [customer_address], [customer_phone], [customer_email], [VAT], [is_bought], [total_cost]) VALUES (14, CAST(N'2019-11-14' AS Date), N'PSP345    ', N'', N'', N'            ', N'', 45, 0, 5581447.3)
INSERT [dbo].[orders] ([bill_id], [bill_date], [car_code], [ustomer_name], [customer_address], [customer_phone], [customer_email], [VAT], [is_bought], [total_cost]) VALUES (15, CAST(N'2019-11-14' AS Date), N'MBC200    ', N'duy', N'hanoi', N'1235678     ', N'duydt@gmail.com', 0.4, 0, 121168.2785)
SET IDENTITY_INSERT [dbo].[orders] OFF
ALTER TABLE [dbo].[car]  WITH CHECK ADD FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([brand_id])
GO
ALTER TABLE [dbo].[image]  WITH CHECK ADD FOREIGN KEY([car_code])
REFERENCES [dbo].[car] ([car_code])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([car_code])
REFERENCES [dbo].[car] ([car_code])
GO
/****** Object:  StoredProcedure [dbo].[GetProductsByBrand]    Script Date: 11/14/2019 11:36:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetProductsByBrand]
@u int,
@v int,
@id char(10)
as
begin
 SELECT * FROM ( SELECT *, ROW_NUMBER() OVER (ORDER BY car_code) as row 
  FROM (
	select * from car where brand_id = @id
  ) a )a
  where  a.row >= @u and a.row <= @v 
  end
GO
/****** Object:  StoredProcedure [dbo].[getSize]    Script Date: 11/14/2019 11:36:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getSize]
@id char(10)
as
begin
select count(*) from (
	SELECT *, ROW_NUMBER() OVER (ORDER BY car_code) as row 
  FROM (
	select * from car where brand_id = @id
  ) a)a 
end
GO
USE [master]
GO
ALTER DATABASE [Web] SET  READ_WRITE 
GO
