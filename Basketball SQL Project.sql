SELECT Team, AVG(Seed) as Average_Seed, Count(Seed) as Tourney_Appearances
FROM Project .. NCAA_Final_Stats$
WHERE Team LIKE '%Big 12%'
AND Placement IS NOT NULL
GROUP BY Team
ORDER BY Count(Seed) 

SELECT Team, AVG(Seed) as Average_Seed, Count(Seed) as Tourney_Appearances
FROM Project .. NCAA_Final_Stats$
WHERE [Power 5 School] = 1
OR Team LIKE '%Big East%'
AND Placement IS NOT NULL
GROUP BY Team
ORDER BY Count(Seed) DESC

SELECT Team, AVG(Seed) as Average_Seed, Count(Seed) as Tourney_Appearances
From Project .. NCAA_Final_Stats$
Where [Power 5 School] =0
AND TEAM NOT LIKE '%Big East%'
Group By Team
Having Count(Seed) >=5
ORDER BY Count(Seed)

Select YEAR, AVG([SCR MAR]) as Avg_Scr_Mar
From Project .. NCAA_Final_Stats$
WHERE Placement IS NOT NULL
Group By Year
Order By AVG([SCR MAR]) DESC

Select Team,Year, Placement, Seed, [FG%], [OPP FG%], ([FG%]-[OPP FG%]) as [FG% Differential]
From Project .. NCAA_Final_Stats$
Where Placement IS NOT NULL 
Order by [FG% Differential] DESC

Select Team, AVG([FT%]) as [AverageFT%]
From Project .. NCAA_Final_Stats$ 
Group By Team
Having COUNT(Team) >= 5
Order by [AverageFT%] Desc

Select Team, COUNT(Team)
From Project .. NCAA_Final_Stats$
Group By Team
Order by Count(Team) Desc

Select YEAR,[Power 5 School], COUNT([Placement]) as TotalTourneyTeams, AVG(Placement) as AveragePlacement,  AVG([Seed]) as AverageSeed
	 From Project .. NCAA_Final_Stats$
Group by Year,[Power 5 School]
Order by Year ASC

