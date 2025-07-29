select EngagementID,
	ContentID,
	CampaignID,
	ProductID,
	Upper(replace(contenttype,'Socialmedia','Social Media')) as ContentType,
	left(viewsclickscombined, charindex('-',viewsclickscombined) -1) as Views,
	right(viewsclickscombined, len(viewsclickscombined) - charindex('-',viewsclickscombined)) as Clicks,
	Likes,
	format(convert(date,engagementdate), 'dd/MM/yyyy') as EngagementDate


from dbo.engagement_data
where contenttype != 'newsletter'

