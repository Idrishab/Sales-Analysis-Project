-- Cleansed DIM_Date Table --
USE AdventureWorksDW2019
SELECT 
	DateKey,
	FullDateAlternateKey AS Date,
	EnglishDayNameOfWeek AS Day,
	EnglishMonthName AS Month,
	LEFT(EnglishMonthName, 3) AS MonthCode, -- Useful for interface date navigation and graph
	MonthNumberOfYear AS MonthNo,
	CalendarQuarter AS Quarter,
	CalendarYear AS Year
FROM AdventureWorksDW2019.dbo.DimDate
WHERE CalendarYear >= 2020

