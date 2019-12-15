require(compiler)
require(pbapply)

big_letters = function(len) 
{
	res = list(); counter = 0
	pasteFunc = function(j, i) { if (i == 1) { return(letters[j]); } else { return(paste(letters[i-1], letters[j], sep="")) } }
	loopFunc = function(i) { 	res = lapply(1:26, pasteFunc, i); 	return(res) }
	
	res = unlist(pblapply(1:ceiling(len/26), loopFunc))
	return(res[1:len])
}

big_letters = cmpfun(big_letters)