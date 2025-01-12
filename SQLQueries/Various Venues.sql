select Venue, Capacity, Opening_date, Closing_date, Demolition_date, Construction_cost_$m, Address from dbo.Venue

Select top 5 * from dbo.Venue order by Capacity desc

Select top 6 * from dbo.Venue where Opening_date < GETDATE() order by Opening_date desc

Select top 21 * from dbo.Venue where Closing_date < GETDATE() order by Closing_date desc

select top 15 * from dbo.Venue where Demolition_date < GETDATE() order by Demolition_date desc

select top 5 * from dbo.Venue order by Construction_cost_$m desc