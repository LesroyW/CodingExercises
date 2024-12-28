SET NOCOUNT ON

Use WorldEvents
Go

Select TOP 2 dbo.tblEvent.EventName as What, dbo.tblEvent.EventDate as [When] from dbo.tblEvent order by EventDate asc
Select TOP 2 dbo.tblEvent.EventName as What, dbo.tblEvent.EventDate as [When] from dbo.tblEvent order by EventDate desc
