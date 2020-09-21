##### Scale 0 to 1
scale01 = function (x, xrange, ...)
{
	if (missing(xrange))	{	minx <- min(x);	ranx <- max(x) - minx;	}
	else						{	minx <- xrange[1];	ranx <- diff(xrange);	}

	return((x - minx)/ranx)
}

scale01 = cmpfun(scale01)