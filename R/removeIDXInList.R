##### inputList에서 removeIDX 인덱스의 리스트 삭제
removeIDXInList = function(inputList, removeIDX)
{
	resList = list();		counter = 0
	for(i in 1:length(inputList))
	{
		if (sum(which(removeIDX == i)*1) > 1)	{	# 삭제해야할 문서인 경우
			next;
		} else {												# 삭제하지 말아야할 문서인 경우
			counter = counter + 1;	resList[[counter]] = inputList[[i]]
		}
	}
	return(resList)
}

removeIDXInList = cmpfun(removeIDXInList)