seqDatetime = function(startDate = "2000-01-01", byMin = 15, length=100)
{
	year = substr(startDate, 1, 4)
	month = substr(startDate, 6, 7)
	day = substr(startDate, 9, 10)
	
	startDate = strptime(paste(year, month, day, "000000", sep=""), format='%Y%m%d%H%M%S')			# YYYY-MM-DD HH:MM:SS 타입으로 전환

	return(startDate + seq(0, by=(60*byMin), length=length))
}
