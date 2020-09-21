##### 요일 구하기
getWeekdays = function(inputDate)	{		inputDate = as.IDate(inputDate);		return(weekdays(inputDate))		}
getWeekdays = cmpfun(getWeekdays)