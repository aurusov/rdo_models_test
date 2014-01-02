$Function fun_test : integer
$Type = algorithmic
$Parameters
	RES: Тестовый_тип
$Body
	array <integer> i = RES.Param_1;
	return i.size;
$End

$Function fun_test2 : integer
$Type = algorithmic
$Body
	array <integer> k = [1,0,1,1,1];
	k[4] = 8;
	integer i = k[4]; 
	return i;
$End
