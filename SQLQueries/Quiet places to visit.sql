select dbo.tblContinent.ContinentName, dbo.tblEvent.EventName from dbo.tblEvent INNER JOIN dbo.tblCountry 
on dbo.tblEvent.CountryID = dbo.tblCountry.CountryID 
INNER JOIN dbo.tblContinent 
on dbo.tblCountry.ContinentID = dbo.tblContinent.ContinentID where dbo.tblContinent.ContinentName IN
(Select TOP 3 dbo.tblContinent.ContinentName
from dbo.tblEvent INNER JOIN dbo.tblCountry 
on dbo.tblEvent.CountryID = dbo.tblCountry.CountryID 
INNER JOIN dbo.tblContinent 
on dbo.tblCountry.ContinentID = dbo.tblContinent.ContinentID group by dbo.tblContinent.ContinentName ORDER BY COUNT(dbo.tblEvent.EventName)
)