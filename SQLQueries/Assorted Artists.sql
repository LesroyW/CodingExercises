USE Music_01
Go


select 
Artist_ID as Artist_ID, 
Artist as "Artist Name",
Artist_type as "Type of Artist",
Year_formed as "Year Formed"
from dbo.Artist order by Year_formed DESC, Artist ASC