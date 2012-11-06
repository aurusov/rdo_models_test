$Process proc trans
	GENERATE  100

	QUEUE     tran
	
	ADVANCE   10

	DEPART    tran
	
	TERMINATE 1
$End
