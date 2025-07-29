select ReviewID,
	CustomerID,
	ProductID,
	ReviewDate,
	Rating,
	Replace(Reviewtext,'  ',' ') as ReviewText
	
from dbo.customer_reviews 