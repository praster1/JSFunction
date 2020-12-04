# 버림
floor_dec = function(x, level=1)
{
	return(round(x - 5*10^(-level-1), level))
} 
floor_dec = cmpfun(floor_dec)