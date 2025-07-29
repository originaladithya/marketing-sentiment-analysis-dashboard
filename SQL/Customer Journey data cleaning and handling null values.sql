Select 
	JourneyID,
	CustomerID,
	ProductID,
	VisitDate,
	Stage,
	Action,
	Coalesce(Duration, avg_duration) as Duration
From (
	Select
		JourneyID,
		CustomerID,
		ProductID,
		VisitDate,
		Upper(Stage) as Stage,
		Action,
		Duration,
		avg(duration) over (partition by visitdate) as avg_duration,
		Row_number() over(
			Partition by CustomerID, ProductID, VisitDate, Upper(Stage), Action
			order by JourneyID
		) as row_num
	from dbo.customer_journey
) as subquery
where row_num = 1



