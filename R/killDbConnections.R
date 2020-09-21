killDbConnections = function () 
{
	all_cons = dbListConnections(MySQL())
	for(con in all_cons)	{	dbDisconnect(con)	}
}
