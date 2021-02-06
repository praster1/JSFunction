# 버림
ceiling_dec = function(x, level=1)
{
	return(round(x + 5*10^(-level-1), level))
} 
ceiling_dec = cmpfun(ceiling_dec)