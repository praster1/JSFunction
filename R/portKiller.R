##### 포트 열려있는지 확인하고, 열려있으면 죽이기
portKiller = function(portNum, print=FALSE)
{
	portKiller = paste0("fuser -k -n tcp ", portNum)
	if (print)	{	print(portKiller);	};
	system(portKiller)
}
