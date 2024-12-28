USE WorldEvents
GO

Select TOP 5 dbo.tblEvent.EventName as What, dbo.tblEvent.EventDetails as Details from dbo.tblEvent order by dbo.tblEvent.EventDate asc;