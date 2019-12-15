require(compiler)

mcsapply = function (X, FUN, ..., simplify = TRUE, USE.NAMES = TRUE) 
{
	FUN <- match.fun(FUN)
	answer <- mclapply(X = X, FUN = FUN, ...)
	if (USE.NAMES && is.character(X) && is.null(names(answer))) 
		names(answer) <- X
	if (!identical(simplify, FALSE) && length(answer)) 
		simplify2array(answer, higher = (simplify == "array"))
	else answer
}
mcsapply = cmpfun(mcsapply)

