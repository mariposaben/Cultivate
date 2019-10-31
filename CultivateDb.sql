-- Model Cultivate
-- Updated 8/12/2019 6:15:03 AM
-- DDL Generated 10/21/2019 4:30:47 PM

--**********************************************************************
--	Tables
--**********************************************************************

-- Table dbo.Announcements
create table
	[dbo].[Announcements]
(
	[Id] int identity(1,1) not null
,
constraint [Pk_Announcements_Id] primary key clustered
(

	[Id] asc
)
);

-- Table dbo.CommonName
create table
	[dbo].[CommonName]
(
	[Id] int identity(1,1) not null,
	[Name] varchar(128) not null,
	[Description] text null,
	[CreatedById] int not null,
	[CreateDateTime] datetime not null,
	[LastChangedById] int not null,
	[LastChangedDateTime] datetime not null
,
constraint [Pk_CommonName_Id] primary key clustered
(

	[Id] asc
)
);

--Default [ckdefCommonName_CreateDateTime]
alter table [dbo].[CommonName] add constraint [ckdefCommonName_CreateDateTime] default (SYSUTCDATETIME()) for [CreateDateTime];

--Default [ckdefCommonName_LastChangedDateTime]
alter table [dbo].[CommonName] add constraint [ckdefCommonName_LastChangedDateTime] default (SYSUTCDATETIME()) for [LastChangedDateTime];

-- Table dbo.Cultivar
create table
	[dbo].[Cultivar]
(
	[Id] int identity(1,1) not null,
	[Name] varchar(128) not null,
	[Description] text null,
	[SeedId] int not null,
	[CreatedById] int not null,
	[CreateDateTime] datetime not null,
	[LastChangedById] int not null,
	[LastChangedDateTime] datetime not null
,
constraint [Pk_Cultivar_Id] primary key clustered
(

	[Id] asc
)
);

--Default [ckdefCultivar_CreateDateTime]
alter table [dbo].[Cultivar] add constraint [ckdefCultivar_CreateDateTime] default (SYSUTCDATETIME()) for [CreateDateTime];

--Default [ckdefCultivar_LastChangedDateTime]
alter table [dbo].[Cultivar] add constraint [ckdefCultivar_LastChangedDateTime] default (SYSUTCDATETIME()) for [LastChangedDateTime];

-- Table dbo.Exchange
create table
	[dbo].[Exchange]
(
	[Id] int identity(1,1) not null,
	[SeedId] int not null,
	[MemberId] int not null,
	[Description] text null,
	[Quantity] int not null,
	[ExchangeTypeId] int not null,
	[UnitsId] int not null,
	[ExchangeExpirationDate] datetime null,
	[MustReoffer] bit not null,
	[SourceId] int not null,
	[SeedExpirationDate] int not null,
	[StatusId] int not null,
	[PricePerUnit] money not null,
	[TransactionFee] money not null,
	[ShippingHandling] money not null,
	[CreatedById] int not null,
	[CreateDateTime] datetime not null,
	[LastChangedById] int not null,
	[LastChangedDateTime] datetime not null
,
constraint [Pk_Exchange_Id] primary key clustered
(

	[Id] asc
)
);

--Default [ckdefExchange_CreateDateTime]
alter table [dbo].[Exchange] add constraint [ckdefExchange_CreateDateTime] default (SYSUTCDATETIME()) for [CreateDateTime];

--Default [ckdefExchange_LastChangedDateTime]
alter table [dbo].[Exchange] add constraint [ckdefExchange_LastChangedDateTime] default (SYSUTCDATETIME()) for [LastChangedDateTime];

-- Table dbo.ExchangeType
create table
	[dbo].[ExchangeType]
(
	[Id] int identity(1,1) not null
,
constraint [Pk_ExchangeType_Id] primary key clustered
(

	[Id] asc
)
);

-- Table dbo.Family
create table
	[dbo].[Family]
(
	[Id] int identity(1,1) not null,
	[Name] varchar(128) not null,
	[Description] text null,
	[CreatedById] int not null,
	[CreateDateTime] datetime not null,
	[LastChangedById] int not null,
	[LastChangedDateTime] datetime not null
,
constraint [Pk_Family_Id] primary key clustered
(

	[Id] asc
)
);

--Default [ckdefFamily_CreateDateTime]
alter table [dbo].[Family] add constraint [ckdefFamily_CreateDateTime] default (SYSUTCDATETIME()) for [CreateDateTime];

--Default [ckdefFamily_LastChangedDateTime]
alter table [dbo].[Family] add constraint [ckdefFamily_LastChangedDateTime] default (SYSUTCDATETIME()) for [LastChangedDateTime];

-- Table dbo.Genus
create table
	[dbo].[Genus]
(
	[Id] int identity(1,1) not null,
	[Name] varchar(128) not null,
	[Description] text null,
	[FamilyId] int not null,
	[CreatedById] int not null,
	[CreateDateTime] datetime not null,
	[LastChangedById] int not null,
	[LastChangedDateTime] datetime not null
,
constraint [Pk_Genus_Id] primary key clustered
(

	[Id] asc
)
);

--Default [ckdefGenus_CreateDateTime]
alter table [dbo].[Genus] add constraint [ckdefGenus_CreateDateTime] default (SYSUTCDATETIME()) for [CreateDateTime];

--Default [ckdefGenus_LastChangedDateTime]
alter table [dbo].[Genus] add constraint [ckdefGenus_LastChangedDateTime] default (SYSUTCDATETIME()) for [LastChangedDateTime];

-- Table dbo.ScientificName
create table
	[dbo].[ScientificName]
(
	[Id] int identity(1,1) not null,
	[Name] varchar(256) not null,
	[GenusId] int not null,
	[SpeciesId] int not null,
	[CreatedById] int not null,
	[CreateDateTime] datetime not null,
	[LastChangedById] int not null,
	[LastChangedDateTime] datetime not null
,
constraint [Pk_ScientificName_Id] primary key clustered
(

	[Id] asc
)
);

--Default [ckdefScientificName_CreateDateTime]
alter table [dbo].[ScientificName] add constraint [ckdefScientificName_CreateDateTime] default (SYSUTCDATETIME()) for [CreateDateTime];

--Default [ckdefScientificName_LastChangedDateTime]
alter table [dbo].[ScientificName] add constraint [ckdefScientificName_LastChangedDateTime] default (SYSUTCDATETIME()) for [LastChangedDateTime];

-- Table dbo.Seed
create table
	[dbo].[Seed]
(
	[Id] int identity(1,1) not null,
	[Name] varchar(128) not null,
	[Description] text null,
	[CommonNameId] int not null,
	[ScientificNameId] int not null,
	[CultivarId] int null,
	[CreatedById] int not null,
	[CreateDateTime] datetime not null,
	[LastChangedById] int not null,
	[LastChangedDateTime] datetime not null
,
constraint [Pk_Seed_Id] primary key clustered
(

	[Id] asc
)
);

--Default [ckdefSeed_CreateDateTime]
alter table [dbo].[Seed] add constraint [ckdefSeed_CreateDateTime] default (SYSUTCDATETIME()) for [CreateDateTime];

--Default [ckdefSeed_LastChangedDateTime]
alter table [dbo].[Seed] add constraint [ckdefSeed_LastChangedDateTime] default (SYSUTCDATETIME()) for [LastChangedDateTime];

-- Table dbo.Species
create table
	[dbo].[Species]
(
	[Id] int identity(1,1) not null,
	[Name] varchar(128) not null,
	[Description] text null,
	[GenusId] int not null,
	[CreatedById] int not null,
	[CreateDateTime] datetime not null,
	[LastChangedById] int not null,
	[LastChangedDateTime] datetime not null
,
constraint [Pk_Species_Id] primary key clustered
(

	[Id] asc
)
);

--Default [ckdefSpecies_CreateDateTime]
alter table [dbo].[Species] add constraint [ckdefSpecies_CreateDateTime] default (SYSUTCDATETIME()) for [CreateDateTime];

--Default [ckdefSpecies_LastChangedDateTime]
alter table [dbo].[Species] add constraint [ckdefSpecies_LastChangedDateTime] default (SYSUTCDATETIME()) for [LastChangedDateTime];

-- Table dbo.Status
create table
	[dbo].[Status]
(
	[Id] int not null
,
constraint [Pk_Status_Id] primary key clustered
(

	[Id] asc
)
);

-- Table dbo.SystemValues
create table
	[dbo].[SystemValues]
(
	[Id] int identity(1,1) not null,
	[Area] varchar(64) not null,
	[Name] varchar(64) not null,
	[Value] text not null,
	[Description] text null,
	[DataType] varchar(64) not null,
	[CreatedById] int not null,
	[CreateDateTime] datetime not null,
	[LastChangedById] int not null,
	[LastChangedDateTime] datetime not null
,
constraint [Pk_SystemValues_Id] primary key clustered
(

	[Id] asc
)
);

--Default [ckdefSystemValues_CreateDateTime]
alter table [dbo].[SystemValues] add constraint [ckdefSystemValues_CreateDateTime] default (SYSUTCDATETIME()) for [CreateDateTime];

--Default [ckdefSystemValues_LastChangedDateTime]
alter table [dbo].[SystemValues] add constraint [ckdefSystemValues_LastChangedDateTime] default (SYSUTCDATETIME()) for [LastChangedDateTime];

-- Table dbo.Units
create table
	[dbo].[Units]
(
	[Id] int identity(1,1) not null
,
constraint [Pk_Units_Id] primary key clustered
(

	[Id] asc
)
);
--**********************************************************************
--	Data
--**********************************************************************
--**********************************************************************
--	Relationships
--**********************************************************************

-- Relationship Fk_Seed_Cultivar_SeedId
alter table [dbo].[Cultivar]
add constraint [Fk_Seed_Cultivar_SeedId] foreign key ([SeedId]) references [dbo].[Seed] ([Id]);


-- Relationship Fk_Family_Genus_FamilyId
alter table [dbo].[Genus]
add constraint [Fk_Family_Genus_FamilyId] foreign key ([FamilyId]) references [dbo].[Family] ([Id]);


-- Relationship Fk_Genus_ScientificName_GenusId
alter table [dbo].[ScientificName]
add constraint [Fk_Genus_ScientificName_GenusId] foreign key ([GenusId]) references [dbo].[Genus] ([Id]);


-- Relationship Fk_Species_ScientificName_SpeciesId
alter table [dbo].[ScientificName]
add constraint [Fk_Species_ScientificName_SpeciesId] foreign key ([SpeciesId]) references [dbo].[Species] ([Id]);


-- Relationship Fk_CommonName_Seed_CommonNameId
alter table [dbo].[Seed]
add constraint [Fk_CommonName_Seed_CommonNameId] foreign key ([CommonNameId]) references [dbo].[CommonName] ([Id]);


-- Relationship Fk_ScientificName_Seed_ScientificNameId
alter table [dbo].[Seed]
add constraint [Fk_ScientificName_Seed_ScientificNameId] foreign key ([ScientificNameId]) references [dbo].[ScientificName] ([Id]);


-- Relationship Fk_Genus_Species_GenusId
alter table [dbo].[Species]
add constraint [Fk_Genus_Species_GenusId] foreign key ([GenusId]) references [dbo].[Genus] ([Id]);


