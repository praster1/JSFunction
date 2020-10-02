##### 날짜를 character YYYY-MM-DD HH:mm:ss 에서 numeric YYYYMMDD로 변환
getYearDates = function(yearDateVec, limit="month")	
{
	res = colName = NULL;
	if			(limit == "year")		{		res = substr(yearDateVec, 1, 4);	colName = "Years"}
	else if	(limit == "month")		{		res = substr(yearDateVec, 1, 7);	colName = "YearMonth"}
	else									{		res = substr(yearDateVec, 1, 10);	colName = "YearDates"}

	res = gsub("-", "", res);
	res = data.table(res);
	colnames(res) = colName

	return(res)	
}
getYearDates = cmpfun(getYearDates)