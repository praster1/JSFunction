### Color List
getColorList = function(n = NULL)
{
	require(RColorBrewer)
	colorNames = rownames(brewer.pal.info)
	findColorList = function(i)	{	return(brewer.pal(n=8, name=colorNames[i]))	}
	matColorList = list_to_matrix(lapply(1:length(colorNames), findColorList), colNum=8)
	resColorList = NULL
	for (i in 8:1)	{	resColorList = c(resColorList, matColorList[,i])	}
	
	if (is.null(n)) {
		n = length(resColorList)
	} else {
		while(length(resColorList) < n)	{	resColorList = c(resColorList, resColorList)	}
	}
	
	return(resColorList[1:n])
}