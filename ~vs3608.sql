Select *
FROM [Portfolio Project]..India_Injury_Road_Accident_Fata$
ORDER BY 1,2


--Looking at total cases vs. total death
SELECT State, [Road Accidents  during 2018], [ Road Accidents  during 2019], [Road Accidents  during 2020], [Persons Killed 2018], [Persons Killed 2019], [Persons Killed 2020]
FROM [Portfolio Project]..India_Injury_Road_Accident_Fata$
GROUP BY State, [Road Accidents  during 2018], [ Road Accidents  during 2019], [Road Accidents  during 2020], [Persons Killed 2018], [Persons Killed 2019], [Persons Killed 2020]
ORDER BY 1

--Looking at death/accident ratio 2018

SELECT State, [Road Accidents  during 2018], [Persons Killed 2018], ([Persons Killed 2018]/[Road Accidents  during 2018])*100 As accdeathration
FROM [Portfolio Project]..India_Injury_Road_Accident_Fata$
GROUP BY State, [Road Accidents  during 2018], [Persons Killed 2018]
ORDER BY accdeathration DESC

--Mizoram has the highest death/accident ratio in 2018 with 85% where Goa has 7%


--Looking at injury/accident ratio 2018
SELECT State, [Road Accidents  during 2018], [Persons Injured - 2018], ([Persons Injured - 2018]/[Road Accidents  during 2018])*100 As accinjuryratio
FROM [Portfolio Project]..India_Injury_Road_Accident_Fata$
GROUP BY State, [Road Accidents  during 2018], [Persons Injured - 2018]
ORDER BY accinjuryratio DESC

--Creating view for later
CREATE VIEW [Accident Injury Ratio above 50 percent] as
Select State, [Road Accidents  during 2018], [Persons Injured - 2018], ([Persons Injured - 2018]/[Road Accidents  during 2018])*100 As accinjuryratio
FROM [Portfolio Project]..India_Injury_Road_Accident_Fata$
WHERE ([Persons Injured - 2018]/[Road Accidents  during 2018])*100 > 50
GROUP BY State, [Road Accidents  during 2018], [Persons Injured - 2018]
--ORDER BY accinjuryratio DESC

