
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/12/2015 23:17:38
-- Generated from EDMX file: C:\Users\Michiel\Dropbox\Projecten\Tutorials\AspWebshop - 6\GarageManager - 6 - Source\App_Code\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Garage];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Cart_Product1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [FK_Cart_Product1];
GO
IF OBJECT_ID(N'[dbo].[FK_Product_ProductTypes1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_ProductTypes1];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Cart]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cart];
GO
IF OBJECT_ID(N'[dbo].[Product]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Product];
GO
IF OBJECT_ID(N'[dbo].[ProductType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductType];
GO
IF OBJECT_ID(N'[dbo].[UserDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserDetails];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Carts'
CREATE TABLE [dbo].[Carts] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ClientID] nvarchar(255)  NOT NULL,
    [ProductID] int  NOT NULL,
    [Amount] int  NOT NULL,
    [DatePurchased] datetime  NULL,
    [IsInCart] bit  NOT NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [TypeID] int  NOT NULL,
    [Name] nvarchar(255)  NOT NULL,
    [Price] float  NOT NULL,
    [Description] varchar(max)  NULL,
    [Image] nvarchar(255)  NULL
);
GO

-- Creating table 'ProductTypes'
CREATE TABLE [dbo].[ProductTypes] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'UserDetails'
CREATE TABLE [dbo].[UserDetails] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Guid] nvarchar(50)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [PostalCode] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'Carts'
ALTER TABLE [dbo].[Carts]
ADD CONSTRAINT [PK_Carts]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ProductTypes'
ALTER TABLE [dbo].[ProductTypes]
ADD CONSTRAINT [PK_ProductTypes]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Id] in table 'UserDetails'
ALTER TABLE [dbo].[UserDetails]
ADD CONSTRAINT [PK_UserDetails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ProductID] in table 'Carts'
ALTER TABLE [dbo].[Carts]
ADD CONSTRAINT [FK_Cart_Product1]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Cart_Product1'
CREATE INDEX [IX_FK_Cart_Product1]
ON [dbo].[Carts]
    ([ProductID]);
GO

-- Creating foreign key on [TypeID] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_Product_ProductTypes1]
    FOREIGN KEY ([TypeID])
    REFERENCES [dbo].[ProductTypes]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_ProductTypes1'
CREATE INDEX [IX_FK_Product_ProductTypes1]
ON [dbo].[Products]
    ([TypeID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------