require(compiler)

cox_stuart_test = function(x, type="both") 
{
	if (type=="incresing") {
		method = "Cox-Stuart test for trend analysis"
		leng = length(x);
		apross = round(leng)%%2;
		if (apross == 1)    {   delete = (length(x) + 1)/2;     x = x[-delete]; }
		half = length(x)/2
		x1 = x[1:half];     x2 = x[(half + 1):(length(x))]
		difference = x1 - x2;
		signs = sign(difference);
		signcorr = signs[signs != 0];
		pos = signs[signs > 0];     neg = signs[signs < 0];
		prop = pbinom(length(pos), length(signcorr), 0.5);
		names(prop) = "Increasing trend, p-value";
		rval <- list(method = method, statistic = prop);
		class(rval) = "htest";
		
		return(rval);
	} else if (type=="decresing") {
	    method = "Cox-Stuart test for trend analysis"
		leng = length(x)
		apross = round(leng)%%2
		if (apross == 1)    {   delete = (length(x) + 1)/2;     x = x[-delete]; }
		half = length(x)/2
		x1 = x[1:half];     x2 = x[(half + 1):(length(x))];
		difference = x1 - x2
		signs = sign(difference)
		signcorr = signs[signs != 0]
		pos = signs[signs > 0];     neg = signs[signs < 0];
		prop = pbinom(length(neg), length(signcorr), 0.5)
		names(prop) = "Decreasing trend, p-value"
		rval <- list(method = method, statistic = prop)
		class(rval) = "htest"
		
		return(rval)
	} else {
		method = "Cox-Stuart test for trend analysis";
		leng = length(x);
		apross = round(leng)%%2;
		if (apross == 1)    {   delete = (length(x) + 1)/2;     x = x[-delete]; }
		half = length(x)/2
		x1 = x[1:half];     x2 = x[(half + 1):(length(x))];
		difference = x1 - x2;
		signs = sign(difference);
		signcorr = signs[signs != 0];
		pos = signs[signs > 0];     neg = signs[signs < 0];
		
		if (length(pos) < length(neg)) {
			prop = pbinom(length(pos), length(signcorr), 0.5)
			names(prop) = "Increasing trend, p-value"
			rval <- list(method = method, statistic = prop)
			class(rval) = "htest"
			
			return(rval)
		} else {
			prop = pbinom(length(neg), length(signcorr), 0.5)
			names(prop) = "Decreasing trend, p-value"
			rval <- list(method = method, statistic = prop)
			class(rval) = "htest"
			
			return(rval)
		}
	}
}

cox_stuart_test = cmpfun(cox_stuart_test)