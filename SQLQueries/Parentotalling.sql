select IsNUll(dbo.Parent_Company.Parent_company, 'GRAND') as Parent_company, 
IsNUll(dbo.Record_Label.Record_label,'TOTAL') as Record_label, 
count(*) as Count_of_albums, ROUND(AVG(dbo.Album.[US_sales_(m)]),2) as [Avg_sales_(m)] 
from dbo.Parent_Company inner join dbo.Record_Label on dbo.Parent_Company.Parent_company_ID = dbo.Record_Label.Parent_company_ID
inner join dbo.Album on dbo.Record_Label.Record_label_ID= dbo.Album.Record_label_ID
group by  dbo.Parent_Company.Parent_company, dbo.Record_Label.Record_label WITH ROLLUP
