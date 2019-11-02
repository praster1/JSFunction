require(compiler)

formatDigit = function(vec, digits = 3)
{
	return(format(vec, digits=digits))
}
formatDigit = cmpfun(formatDigit)