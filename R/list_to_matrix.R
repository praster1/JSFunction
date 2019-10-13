require(compiler)

list_to_matrix = function(data, colNum = 10, transpose = FALSE)
{
	if (transpose)	{	return(t(do.call(rbind,lapply(data,matrix,ncol=colNum,byrow=TRUE))))	}
	else					{	return(do.call(rbind,lapply(data,matrix,ncol=colNum,byrow=TRUE)))		}
}

list_to_matrix = cmpfun(list_to_matrix)