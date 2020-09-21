##### 해당 주의 IDX를 출력해주는 함수 (IDX는 해당 주의 토요일 날짜로 출력된다)
getWeeksIDX = function(inputData)
{
	yearDateTable = as_tibble(data.table(YearDates = inputData$YearDates, weeks = inputData$weeks))
	yearDateTable = distinct(yearDateTable)
	yearDateTable = yearDateTable[order(yearDateTable$YearDates),]
	
	if (length(which(yearDateTable$weeks == "월요일")) > 0)
	{
		yearDateTable$weeks[which(yearDateTable$weeks == "일요일")] = "Sunday"
		yearDateTable$weeks[which(yearDateTable$weeks == "월요일")] = "Monday"
		yearDateTable$weeks[which(yearDateTable$weeks == "화요일")] = "Tuesday"
		yearDateTable$weeks[which(yearDateTable$weeks == "수요일")] = "Wednesday"
		yearDateTable$weeks[which(yearDateTable$weeks == "목요일")] = "Thursday"
		yearDateTable$weeks[which(yearDateTable$weeks == "금요일")] = "Friday"
		yearDateTable$weeks[which(yearDateTable$weeks == "토요일")] = "Saturday"
	}

	weeksVec = yearDateTable$weeks;
	

	weeksIDX = NULL;	weeksCounter = 1
	for (i in 1:length(weeksVec))
	{
		weeksIDX = c(weeksIDX, weeksCounter)
		if (weeksVec[i] == "Saturday")	{	weeksCounter = weeksCounter + 1;		}
	}

	res = data.table(yearDateTable, weeksIDX = weeksIDX)
	res = left_join(res, res[weeks=="Saturday", c(3,1)], by="weeksIDX")
	res = data.table(YearDates = res$YearDates.x, weeks = res$weeks, lastDayOfWeeks = res$YearDates.y)

	return(res)
}

getWeeksIDX = cmpfun(getWeeksIDX)