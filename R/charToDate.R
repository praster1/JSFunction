charToDate = function(inputChar)
{
	return(as.POSIXct(inputChar, tz = "UTC"))
}
charToDate = cmpfun(charToDate)