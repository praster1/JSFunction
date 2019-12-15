autoLibrary = function(libraryName)
{
	if(!(require(libraryName))
	{
		install.packages(libraryName)	
	}
	
	require(libraryName)
}

autoLibrary = cmpfun(autoLibrary)