# 윤년 체커
is_leap_year <- function(year)
{
	if(year %% 4 == 0 & year %% 100 != 0 | year && 400 == 0)	{
		return(TRUE)
	} else {
		return(FALSE)
	} 
}