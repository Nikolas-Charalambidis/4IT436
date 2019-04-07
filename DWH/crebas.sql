/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     07/04/19 15:35:54                            */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('D_OKRES') and o.name = 'FK_D_OKRES_OKRES_LEZ_D_KRAJ')
alter table D_OKRES
   drop constraint FK_D_OKRES_OKRES_LEZ_D_KRAJ
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('D_POBOCKA') and o.name = 'FK_D_POBOCK_POBOCKA_S_D_PSC')
alter table D_POBOCKA
   drop constraint FK_D_POBOCK_POBOCKA_S_D_PSC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('D_PSC') and o.name = 'FK_D_PSC_PSC_NALEZ_D_OKRES')
alter table D_PSC
   drop constraint FK_D_PSC_PSC_NALEZ_D_OKRES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('D_ZAKAZNIK') and o.name = 'FK_D_ZAKAZN_ZAKAZNIK__D_KATEGO')
alter table D_ZAKAZNIK
   drop constraint FK_D_ZAKAZN_ZAKAZNIK__D_KATEGO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('D_ZAKAZNIK') and o.name = 'FK_D_ZAKAZN_ZAKAZNIK__D_PSC')
alter table D_ZAKAZNIK
   drop constraint FK_D_ZAKAZN_ZAKAZNIK__D_PSC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('D_ZAKAZNIK') and o.name = 'FK_D_ZAKAZN_ZAMESTNAN_D_ZAMEST')
alter table D_ZAKAZNIK
   drop constraint FK_D_ZAKAZN_ZAMESTNAN_D_ZAMEST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('D_ZAMESTNANEC') and o.name = 'FK_D_ZAMEST_ZAMESTNAN_D_POBOCK')
alter table D_ZAMESTNANEC
   drop constraint FK_D_ZAMEST_ZAMESTNAN_D_POBOCK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('D_ZAMESTNANEC') and o.name = 'FK_D_ZAMEST_ZAMESTNAN_D_FUNKCE')
alter table D_ZAMESTNANEC
   drop constraint FK_D_ZAMEST_ZAMESTNAN_D_FUNKCE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('D_ZDROJ') and o.name = 'FK_D_ZDROJ_ZDROJ_JE__D_TYP_ZD')
alter table D_ZDROJ
   drop constraint FK_D_ZDROJ_ZDROJ_JE__D_TYP_ZD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('F_KONTRAKT') and o.name = 'FK_F_KONTRA_KONTRAKT__D_ZDROJ')
alter table F_KONTRAKT
   drop constraint FK_F_KONTRA_KONTRAKT__D_ZDROJ
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('F_KONTRAKT') and o.name = 'FK_F_KONTRA_KONTRAKT__D_ZAKAZN')
alter table F_KONTRAKT
   drop constraint FK_F_KONTRA_KONTRAKT__D_ZAKAZN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('F_UCETNI_OPERACE') and o.name = 'FK_F_UCETNI_UCETNI_OP_D_DRUH_U')
alter table F_UCETNI_OPERACE
   drop constraint FK_F_UCETNI_UCETNI_OP_D_DRUH_U
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('F_UCETNI_OPERACE') and o.name = 'FK_F_UCETNI_UCETNI_OP_D_FINANC')
alter table F_UCETNI_OPERACE
   drop constraint FK_F_UCETNI_UCETNI_OP_D_FINANC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('F_UCETNI_OPERACE') and o.name = 'FK_F_UCETNI_UCETNI_OP_D_TYP_UC')
alter table F_UCETNI_OPERACE
   drop constraint FK_F_UCETNI_UCETNI_OP_D_TYP_UC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('F_UCETNI_OPERACE') and o.name = 'FK_F_UCETNI_UCETNI_OP_D_DATUM')
alter table F_UCETNI_OPERACE
   drop constraint FK_F_UCETNI_UCETNI_OP_D_DATUM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('F_UCETNI_OPERACE') and o.name = 'FK_F_UCETNI_UCETNI_OP_F_KONTRA')
alter table F_UCETNI_OPERACE
   drop constraint FK_F_UCETNI_UCETNI_OP_F_KONTRA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('F_UCETNI_OPERACE') and o.name = 'FK_F_UCETNI_UCETNI_OP_D_POBOCK')
alter table F_UCETNI_OPERACE
   drop constraint FK_F_UCETNI_UCETNI_OP_D_POBOCK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('F_UCETNI_OPERACE') and o.name = 'FK_F_UCETNI_UCETNI_OP_D_ZAMEST')
alter table F_UCETNI_OPERACE
   drop constraint FK_F_UCETNI_UCETNI_OP_D_ZAMEST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('F_UCETNI_OPERACE') and o.name = 'FK_F_UCETNI_UCETNI_OP_D_ZDROJ')
alter table F_UCETNI_OPERACE
   drop constraint FK_F_UCETNI_UCETNI_OP_D_ZDROJ
go

if exists (select 1
            from  sysobjects
           where  id = object_id('D_DATUM')
            and   type = 'U')
   drop table D_DATUM
go

if exists (select 1
            from  sysobjects
           where  id = object_id('D_DRUH_UCETNI_OPERACE')
            and   type = 'U')
   drop table D_DRUH_UCETNI_OPERACE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('D_FINANCNI_REALIZACE')
            and   type = 'U')
   drop table D_FINANCNI_REALIZACE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('D_FUNKCE_ZAMESTNANEC')
            and   type = 'U')
   drop table D_FUNKCE_ZAMESTNANEC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('D_KATEGORIE_ZAKAZNIK')
            and   type = 'U')
   drop table D_KATEGORIE_ZAKAZNIK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('D_KRAJ')
            and   type = 'U')
   drop table D_KRAJ
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('D_OKRES')
            and   name  = 'OKRES_LEZI_V_KRAJI_FK'
            and   indid > 0
            and   indid < 255)
   drop index D_OKRES.OKRES_LEZI_V_KRAJI_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('D_OKRES')
            and   type = 'U')
   drop table D_OKRES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('D_POBOCKA')
            and   name  = 'POBOCKA_SIDLI_NA_PSC_FK'
            and   indid > 0
            and   indid < 255)
   drop index D_POBOCKA.POBOCKA_SIDLI_NA_PSC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('D_POBOCKA')
            and   type = 'U')
   drop table D_POBOCKA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('D_PSC')
            and   name  = 'PSC_NALEZI_OKRESU_FK'
            and   indid > 0
            and   indid < 255)
   drop index D_PSC.PSC_NALEZI_OKRESU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('D_PSC')
            and   type = 'U')
   drop table D_PSC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('D_TYP_UCETNI_OPERACE')
            and   type = 'U')
   drop table D_TYP_UCETNI_OPERACE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('D_TYP_ZDROJ')
            and   type = 'U')
   drop table D_TYP_ZDROJ
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('D_ZAKAZNIK')
            and   name  = 'ZAKAZNIK_SIDLI_NA_PSC_FK'
            and   indid > 0
            and   indid < 255)
   drop index D_ZAKAZNIK.ZAKAZNIK_SIDLI_NA_PSC_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('D_ZAKAZNIK')
            and   name  = 'ZAKAZNIK_JE_ZARAZEN_DO_KATEGORIE_FK'
            and   indid > 0
            and   indid < 255)
   drop index D_ZAKAZNIK.ZAKAZNIK_JE_ZARAZEN_DO_KATEGORIE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('D_ZAKAZNIK')
            and   name  = 'ZAMESTNANEC_SE_STARA_O_ZAKAZNIKA_FK'
            and   indid > 0
            and   indid < 255)
   drop index D_ZAKAZNIK.ZAMESTNANEC_SE_STARA_O_ZAKAZNIKA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('D_ZAKAZNIK')
            and   type = 'U')
   drop table D_ZAKAZNIK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('D_ZAMESTNANEC')
            and   name  = 'ZAMESTNANEC_MA_FUNKCI_FK'
            and   indid > 0
            and   indid < 255)
   drop index D_ZAMESTNANEC.ZAMESTNANEC_MA_FUNKCI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('D_ZAMESTNANEC')
            and   name  = 'ZAMESTNANCI_PRACUJI_NA_POBOCCE_FK'
            and   indid > 0
            and   indid < 255)
   drop index D_ZAMESTNANEC.ZAMESTNANCI_PRACUJI_NA_POBOCCE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('D_ZAMESTNANEC')
            and   type = 'U')
   drop table D_ZAMESTNANEC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('D_ZDROJ')
            and   name  = 'ZDROJ_JE_TYPU_FK'
            and   indid > 0
            and   indid < 255)
   drop index D_ZDROJ.ZDROJ_JE_TYPU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('D_ZDROJ')
            and   type = 'U')
   drop table D_ZDROJ
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('F_KONTRAKT')
            and   name  = 'KONTRAKT_SE_ZAKAZNIKEM_FK'
            and   indid > 0
            and   indid < 255)
   drop index F_KONTRAKT.KONTRAKT_SE_ZAKAZNIKEM_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('F_KONTRAKT')
            and   name  = 'KONTRAKT_NA_ZDROJ_FK'
            and   indid > 0
            and   indid < 255)
   drop index F_KONTRAKT.KONTRAKT_NA_ZDROJ_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('F_KONTRAKT')
            and   type = 'U')
   drop table F_KONTRAKT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('F_UCETNI_OPERACE')
            and   name  = 'UCETNI_OPERACE_ZA_KONTRAKT_FK'
            and   indid > 0
            and   indid < 255)
   drop index F_UCETNI_OPERACE.UCETNI_OPERACE_ZA_KONTRAKT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('F_UCETNI_OPERACE')
            and   name  = 'UCETNI_OPERACE_ZA_ZDROJ_FK'
            and   indid > 0
            and   indid < 255)
   drop index F_UCETNI_OPERACE.UCETNI_OPERACE_ZA_ZDROJ_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('F_UCETNI_OPERACE')
            and   name  = 'UCETNI_OPERACE_ZA_ZAMESTNANCE_FK'
            and   indid > 0
            and   indid < 255)
   drop index F_UCETNI_OPERACE.UCETNI_OPERACE_ZA_ZAMESTNANCE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('F_UCETNI_OPERACE')
            and   name  = 'UCETNI_OPERACE_SE_USKUTECNI_FK'
            and   indid > 0
            and   indid < 255)
   drop index F_UCETNI_OPERACE.UCETNI_OPERACE_SE_USKUTECNI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('F_UCETNI_OPERACE')
            and   name  = 'UCETNI_OPERACE_NA_POBOCCE_FK'
            and   indid > 0
            and   indid < 255)
   drop index F_UCETNI_OPERACE.UCETNI_OPERACE_NA_POBOCCE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('F_UCETNI_OPERACE')
            and   name  = 'UCETNI_OPERACE_JE_TYPU_FK'
            and   indid > 0
            and   indid < 255)
   drop index F_UCETNI_OPERACE.UCETNI_OPERACE_JE_TYPU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('F_UCETNI_OPERACE')
            and   name  = 'UCETNI_OPERACE_JE_DRUHU_FK'
            and   indid > 0
            and   indid < 255)
   drop index F_UCETNI_OPERACE.UCETNI_OPERACE_JE_DRUHU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('F_UCETNI_OPERACE')
            and   name  = 'UCETNI_OPERACE_JE_REALIZACI_FK'
            and   indid > 0
            and   indid < 255)
   drop index F_UCETNI_OPERACE.UCETNI_OPERACE_JE_REALIZACI_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('F_UCETNI_OPERACE')
            and   type = 'U')
   drop table F_UCETNI_OPERACE
go

/*==============================================================*/
/* Table: D_DATUM                                               */
/*==============================================================*/
create table D_DATUM (
   DATUM                datetime             not null,
   constraint PK_D_DATUM primary key nonclustered (DATUM)
)
go

/*==============================================================*/
/* Table: D_DRUH_UCETNI_OPERACE                                 */
/*==============================================================*/
create table D_DRUH_UCETNI_OPERACE (
   ID_DRUH_UCETNI_OPERACE int                  not null,
   NAZEV_DRUH_UCETNI_OPERACE nvarchar(255)        not null,
   constraint PK_D_DRUH_UCETNI_OPERACE primary key nonclustered (ID_DRUH_UCETNI_OPERACE)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('D_DRUH_UCETNI_OPERACE') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'D_DRUH_UCETNI_OPERACE' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Zdroje
   Mzdy
   Osoby
   Nájem
   Reije', 
   'user', @CurrentUser, 'table', 'D_DRUH_UCETNI_OPERACE'
go

/*==============================================================*/
/* Table: D_FINANCNI_REALIZACE                                  */
/*==============================================================*/
create table D_FINANCNI_REALIZACE (
   ID_FINANCNI_REALIZACE int                  not null,
   NAZEV_FINANCNI_REALIZACE nvarchar(255)        not null,
   constraint PK_D_FINANCNI_REALIZACE primary key nonclustered (ID_FINANCNI_REALIZACE)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('D_FINANCNI_REALIZACE') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'D_FINANCNI_REALIZACE' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Plán
   Skutecnost', 
   'user', @CurrentUser, 'table', 'D_FINANCNI_REALIZACE'
go

/*==============================================================*/
/* Table: D_FUNKCE_ZAMESTNANEC                                  */
/*==============================================================*/
create table D_FUNKCE_ZAMESTNANEC (
   ID_FUNKCE_ZAMESTNANEC int                  not null,
   NAZEV_FUNKCE_ZAMESTNANEC nvarchar(255)        not null,
   constraint PK_D_FUNKCE_ZAMESTNANEC primary key nonclustered (ID_FUNKCE_ZAMESTNANEC)
)
go

/*==============================================================*/
/* Table: D_KATEGORIE_ZAKAZNIK                                  */
/*==============================================================*/
create table D_KATEGORIE_ZAKAZNIK (
   ID_KATEGORIE_ZAKAZNIK int                  not null,
   NAZEV_KATEGORIE_ZAKAZNIK nvarchar(255)        not null,
   SLEVA_KATEGORIE_ZAKAZNIK float                not null,
   constraint PK_D_KATEGORIE_ZAKAZNIK primary key nonclustered (ID_KATEGORIE_ZAKAZNIK)
)
go

/*==============================================================*/
/* Table: D_KRAJ                                                */
/*==============================================================*/
create table D_KRAJ (
   ID_KRAJ              nvarchar(255)        not null,
   NAZEV_KRAJ           nvarchar(255)        not null,
   constraint PK_D_KRAJ primary key nonclustered (ID_KRAJ)
)
go

/*==============================================================*/
/* Table: D_OKRES                                               */
/*==============================================================*/
create table D_OKRES (
   ID_OKRES             nvarchar(255)        not null,
   ID_KRAJ              nvarchar(255)        not null,
   NAZEV_OKRES          nvarchar(255)        not null,
   constraint PK_D_OKRES primary key nonclustered (ID_OKRES)
)
go

/*==============================================================*/
/* Index: OKRES_LEZI_V_KRAJI_FK                                 */
/*==============================================================*/
create index OKRES_LEZI_V_KRAJI_FK on D_OKRES (
ID_KRAJ ASC
)
go

/*==============================================================*/
/* Table: D_POBOCKA                                             */
/*==============================================================*/
create table D_POBOCKA (
   ID_POBOCKA           int                  not null,
   ID_PSC               numeric(5)           not null,
   NAZEV_POBOCKA        nvarchar(255)        not null,
   constraint PK_D_POBOCKA primary key nonclustered (ID_POBOCKA)
)
go

/*==============================================================*/
/* Index: POBOCKA_SIDLI_NA_PSC_FK                               */
/*==============================================================*/
create index POBOCKA_SIDLI_NA_PSC_FK on D_POBOCKA (
ID_PSC ASC
)
go

/*==============================================================*/
/* Table: D_PSC                                                 */
/*==============================================================*/
create table D_PSC (
   ID_PSC               numeric(5)           not null,
   ID_OKRES             nvarchar(255)        not null,
   OBEC                 nvarchar(255)        not null,
   constraint PK_D_PSC primary key nonclustered (ID_PSC)
)
go

/*==============================================================*/
/* Index: PSC_NALEZI_OKRESU_FK                                  */
/*==============================================================*/
create index PSC_NALEZI_OKRESU_FK on D_PSC (
ID_OKRES ASC
)
go

/*==============================================================*/
/* Table: D_TYP_UCETNI_OPERACE                                  */
/*==============================================================*/
create table D_TYP_UCETNI_OPERACE (
   ID_TYP_UCETNI_OPERACE int                  not null,
   NAZEV_TYP_UCETNI_OPERACE nvarchar(255)        not null,
   constraint PK_D_TYP_UCETNI_OPERACE primary key nonclustered (ID_TYP_UCETNI_OPERACE)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('D_TYP_UCETNI_OPERACE') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'D_TYP_UCETNI_OPERACE' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Príjem
   Vıdaj', 
   'user', @CurrentUser, 'table', 'D_TYP_UCETNI_OPERACE'
go

/*==============================================================*/
/* Table: D_TYP_ZDROJ                                           */
/*==============================================================*/
create table D_TYP_ZDROJ (
   ID_TYP_ZDROJ         int                  not null,
   NAZEV_TYP_ZDROJ      nvarchar(255)        not null,
   constraint PK_D_TYP_ZDROJ primary key nonclustered (ID_TYP_ZDROJ)
)
go

/*==============================================================*/
/* Table: D_ZAKAZNIK                                            */
/*==============================================================*/
create table D_ZAKAZNIK (
   ID_ZAKAZNIK          int                  not null,
   ID_PSC               numeric(5)           not null,
   ID_KATEGORIE_ZAKAZNIK int                  not null,
   ID_ZAMESTNANEC       int                  not null,
   ICO_ZAKAZNIK         int                  not null,
   NAZEV_ZAKAZNIK       nvarchar(255)        not null,
   constraint PK_D_ZAKAZNIK primary key nonclustered (ID_ZAKAZNIK)
)
go

/*==============================================================*/
/* Index: ZAMESTNANEC_SE_STARA_O_ZAKAZNIKA_FK                   */
/*==============================================================*/
create index ZAMESTNANEC_SE_STARA_O_ZAKAZNIKA_FK on D_ZAKAZNIK (
ID_ZAMESTNANEC ASC
)
go

/*==============================================================*/
/* Index: ZAKAZNIK_JE_ZARAZEN_DO_KATEGORIE_FK                   */
/*==============================================================*/
create index ZAKAZNIK_JE_ZARAZEN_DO_KATEGORIE_FK on D_ZAKAZNIK (
ID_KATEGORIE_ZAKAZNIK ASC
)
go

/*==============================================================*/
/* Index: ZAKAZNIK_SIDLI_NA_PSC_FK                              */
/*==============================================================*/
create index ZAKAZNIK_SIDLI_NA_PSC_FK on D_ZAKAZNIK (
ID_PSC ASC
)
go

/*==============================================================*/
/* Table: D_ZAMESTNANEC                                         */
/*==============================================================*/
create table D_ZAMESTNANEC (
   ID_ZAMESTNANEC       int                  not null,
   ID_POBOCKA           int                  not null,
   ID_FUNKCE_ZAMESTNANEC int                  not null,
   JMENO_ZAMESTNANEC    nvarchar(255)        not null,
   PRIJMENI_ZAMESTNANEC nvarchar(255)        not null,
   constraint PK_D_ZAMESTNANEC primary key nonclustered (ID_ZAMESTNANEC)
)
go

/*==============================================================*/
/* Index: ZAMESTNANCI_PRACUJI_NA_POBOCCE_FK                     */
/*==============================================================*/
create index ZAMESTNANCI_PRACUJI_NA_POBOCCE_FK on D_ZAMESTNANEC (
ID_POBOCKA ASC
)
go

/*==============================================================*/
/* Index: ZAMESTNANEC_MA_FUNKCI_FK                              */
/*==============================================================*/
create index ZAMESTNANEC_MA_FUNKCI_FK on D_ZAMESTNANEC (
ID_FUNKCE_ZAMESTNANEC ASC
)
go

/*==============================================================*/
/* Table: D_ZDROJ                                               */
/*==============================================================*/
create table D_ZDROJ (
   ID_ZDROJ             int                  not null,
   ID_TYP_ZDROJ         int                  not null,
   NAZEV_ZDROJ          nvarchar(255)        not null,
   constraint PK_D_ZDROJ primary key nonclustered (ID_ZDROJ)
)
go

/*==============================================================*/
/* Index: ZDROJ_JE_TYPU_FK                                      */
/*==============================================================*/
create index ZDROJ_JE_TYPU_FK on D_ZDROJ (
ID_TYP_ZDROJ ASC
)
go

/*==============================================================*/
/* Table: F_KONTRAKT                                            */
/*==============================================================*/
create table F_KONTRAKT (
   ID_KONTRAKT          int                  not null,
   CENA_KONTRAKT        money                not null,
   NAKLAD_KONTRAKT      money                not null,
   VYNOS_KONTRAKT       money                not null,
   OD_KONTRAKT          datetime             not null,
   DO_KONTRAKT          datetime             not null,
   POCET_DNI_KONTRAKT   int                  not null,
   ID_ZAKAZNIK          int                  not null,
   ID_ZDROJ             int                  not null,
   constraint PK_F_KONTRAKT primary key nonclustered (ID_KONTRAKT)
)
go

/*==============================================================*/
/* Index: KONTRAKT_NA_ZDROJ_FK                                  */
/*==============================================================*/
create index KONTRAKT_NA_ZDROJ_FK on F_KONTRAKT (
ID_ZDROJ ASC
)
go

/*==============================================================*/
/* Index: KONTRAKT_SE_ZAKAZNIKEM_FK                             */
/*==============================================================*/
create index KONTRAKT_SE_ZAKAZNIKEM_FK on F_KONTRAKT (
ID_ZAKAZNIK ASC
)
go

/*==============================================================*/
/* Table: F_UCETNI_OPERACE                                      */
/*==============================================================*/
create table F_UCETNI_OPERACE (
   ID_UCETNI_OPERACE    int                  not null,
   DATUM                datetime             not null,
   CASTKA               money                not null,
   ID_FINANCNI_REALIZACE int                  not null,
   ID_TYP_UCETNI_OPERACE int                  not null,
   ID_DRUH_UCETNI_OPERACE int                  not null,
   ID_KONTRAKT          int                  null,
   ID_ZDROJ             int                  null,
   ID_ZAMESTNANEC       int                  null,
   ID_POBOCKA           int                  null,
   constraint PK_F_UCETNI_OPERACE primary key nonclustered (ID_UCETNI_OPERACE)
)
go

/*==============================================================*/
/* Index: UCETNI_OPERACE_JE_REALIZACI_FK                        */
/*==============================================================*/
create index UCETNI_OPERACE_JE_REALIZACI_FK on F_UCETNI_OPERACE (
ID_FINANCNI_REALIZACE ASC
)
go

/*==============================================================*/
/* Index: UCETNI_OPERACE_JE_DRUHU_FK                            */
/*==============================================================*/
create index UCETNI_OPERACE_JE_DRUHU_FK on F_UCETNI_OPERACE (
ID_DRUH_UCETNI_OPERACE ASC
)
go

/*==============================================================*/
/* Index: UCETNI_OPERACE_JE_TYPU_FK                             */
/*==============================================================*/
create index UCETNI_OPERACE_JE_TYPU_FK on F_UCETNI_OPERACE (
ID_TYP_UCETNI_OPERACE ASC
)
go

/*==============================================================*/
/* Index: UCETNI_OPERACE_NA_POBOCCE_FK                          */
/*==============================================================*/
create index UCETNI_OPERACE_NA_POBOCCE_FK on F_UCETNI_OPERACE (
ID_POBOCKA ASC
)
go

/*==============================================================*/
/* Index: UCETNI_OPERACE_SE_USKUTECNI_FK                        */
/*==============================================================*/
create index UCETNI_OPERACE_SE_USKUTECNI_FK on F_UCETNI_OPERACE (
DATUM ASC
)
go

/*==============================================================*/
/* Index: UCETNI_OPERACE_ZA_ZAMESTNANCE_FK                      */
/*==============================================================*/
create index UCETNI_OPERACE_ZA_ZAMESTNANCE_FK on F_UCETNI_OPERACE (
ID_ZAMESTNANEC ASC
)
go

/*==============================================================*/
/* Index: UCETNI_OPERACE_ZA_ZDROJ_FK                            */
/*==============================================================*/
create index UCETNI_OPERACE_ZA_ZDROJ_FK on F_UCETNI_OPERACE (
ID_ZDROJ ASC
)
go

/*==============================================================*/
/* Index: UCETNI_OPERACE_ZA_KONTRAKT_FK                         */
/*==============================================================*/
create index UCETNI_OPERACE_ZA_KONTRAKT_FK on F_UCETNI_OPERACE (
ID_KONTRAKT ASC
)
go

alter table D_OKRES
   add constraint FK_D_OKRES_OKRES_LEZ_D_KRAJ foreign key (ID_KRAJ)
      references D_KRAJ (ID_KRAJ)
go

alter table D_POBOCKA
   add constraint FK_D_POBOCK_POBOCKA_S_D_PSC foreign key (ID_PSC)
      references D_PSC (ID_PSC)
go

alter table D_PSC
   add constraint FK_D_PSC_PSC_NALEZ_D_OKRES foreign key (ID_OKRES)
      references D_OKRES (ID_OKRES)
go

alter table D_ZAKAZNIK
   add constraint FK_D_ZAKAZN_ZAKAZNIK__D_KATEGO foreign key (ID_KATEGORIE_ZAKAZNIK)
      references D_KATEGORIE_ZAKAZNIK (ID_KATEGORIE_ZAKAZNIK)
go

alter table D_ZAKAZNIK
   add constraint FK_D_ZAKAZN_ZAKAZNIK__D_PSC foreign key (ID_PSC)
      references D_PSC (ID_PSC)
go

alter table D_ZAKAZNIK
   add constraint FK_D_ZAKAZN_ZAMESTNAN_D_ZAMEST foreign key (ID_ZAMESTNANEC)
      references D_ZAMESTNANEC (ID_ZAMESTNANEC)
go

alter table D_ZAMESTNANEC
   add constraint FK_D_ZAMEST_ZAMESTNAN_D_POBOCK foreign key (ID_POBOCKA)
      references D_POBOCKA (ID_POBOCKA)
go

alter table D_ZAMESTNANEC
   add constraint FK_D_ZAMEST_ZAMESTNAN_D_FUNKCE foreign key (ID_FUNKCE_ZAMESTNANEC)
      references D_FUNKCE_ZAMESTNANEC (ID_FUNKCE_ZAMESTNANEC)
go

alter table D_ZDROJ
   add constraint FK_D_ZDROJ_ZDROJ_JE__D_TYP_ZD foreign key (ID_TYP_ZDROJ)
      references D_TYP_ZDROJ (ID_TYP_ZDROJ)
go

alter table F_KONTRAKT
   add constraint FK_F_KONTRA_KONTRAKT__D_ZDROJ foreign key (ID_ZDROJ)
      references D_ZDROJ (ID_ZDROJ)
go

alter table F_KONTRAKT
   add constraint FK_F_KONTRA_KONTRAKT__D_ZAKAZN foreign key (ID_ZAKAZNIK)
      references D_ZAKAZNIK (ID_ZAKAZNIK)
go

alter table F_UCETNI_OPERACE
   add constraint FK_F_UCETNI_UCETNI_OP_D_DRUH_U foreign key (ID_DRUH_UCETNI_OPERACE)
      references D_DRUH_UCETNI_OPERACE (ID_DRUH_UCETNI_OPERACE)
go

alter table F_UCETNI_OPERACE
   add constraint FK_F_UCETNI_UCETNI_OP_D_FINANC foreign key (ID_FINANCNI_REALIZACE)
      references D_FINANCNI_REALIZACE (ID_FINANCNI_REALIZACE)
go

alter table F_UCETNI_OPERACE
   add constraint FK_F_UCETNI_UCETNI_OP_D_TYP_UC foreign key (ID_TYP_UCETNI_OPERACE)
      references D_TYP_UCETNI_OPERACE (ID_TYP_UCETNI_OPERACE)
go

alter table F_UCETNI_OPERACE
   add constraint FK_F_UCETNI_UCETNI_OP_D_DATUM foreign key (DATUM)
      references D_DATUM (DATUM)
go

alter table F_UCETNI_OPERACE
   add constraint FK_F_UCETNI_UCETNI_OP_F_KONTRA foreign key (ID_KONTRAKT)
      references F_KONTRAKT (ID_KONTRAKT)
go

alter table F_UCETNI_OPERACE
   add constraint FK_F_UCETNI_UCETNI_OP_D_POBOCK foreign key (ID_POBOCKA)
      references D_POBOCKA (ID_POBOCKA)
go

alter table F_UCETNI_OPERACE
   add constraint FK_F_UCETNI_UCETNI_OP_D_ZAMEST foreign key (ID_ZAMESTNANEC)
      references D_ZAMESTNANEC (ID_ZAMESTNANEC)
go

alter table F_UCETNI_OPERACE
   add constraint FK_F_UCETNI_UCETNI_OP_D_ZDROJ foreign key (ID_ZDROJ)
      references D_ZDROJ (ID_ZDROJ)
go

