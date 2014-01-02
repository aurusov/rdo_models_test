$Function fun_test3 : array <array <integer> >
$Type = algorithmic
$Body
	array <array <integer> > A;
	for (integer i = 0; i < 3; i++)
	{
		array<integer> p;
		for (integer j = 0; j < 2; j++)
		{
		 p[j] = j+i;
		 A[i] = p;
		}
	}
	return A;
$End
$Function fun_test2 : array <integer>
$Type = algorithmic
$Parameters
Iterator : integer
$Body
	array <array <integer> > A = fun_test3();
	array<integer> p = A [Iterator];
	return p;
$End

/*$Function fun_test : such_as Тестовый_тип.Param_1
$Type = algorithmic
$Parameters
RES : Тестовый_тип
$Body
	array<array<integer>> A = fun_test3();
	such_as Тестовый_тип.Param_1 i = RES.Param_1;
	for (integer j = 0; j < i.size; j++)
	{
		such_as Тестовый_тип.Param_2 p = i[j];
		for (integer k = 0; k < p.size; k++)
		p[k] = fun_test2(k,i[j]);
	}
	return i;
$End*/
	
