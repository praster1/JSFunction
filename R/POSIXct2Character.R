POSIXct2Character = function(x, fmt="%Y-%m-%d %H:%M:%OS3") 
{
	checkmate::assertClass(x, "POSIXt")
	checkmate::assertString(fmt)

	pos = gregexpr("%OS[[:digit:]]+", fmt)[[1]]
	if (pos > 0)
	{
		pos = pos + c(3, attr(pos, "match.length"))
		dec.digits = as.integer(substr(fmt, pos[1], pos[2]))
		x = as.POSIXlt(x)
		x$sec = round(x$sec, dec.digits) + 10^(-dec.digits - 1)
	}
	
	return(format(x, format=fmt))
}