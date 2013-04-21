$Sequence Интервал_прихода : real
$Type = exponential 123456789
$End

$Sequence Длительность_обслуживания : real
$Type = uniform 123456789
$End

$Function fun_test : such_as Тестовый_тип_СМО.состояние_канала
$Type = algorithmic
$Parameters
СМО	:	Тестовый_тип_СМО
$Body
	if(СМО.состояние_канала == Свободен )
		return Занят;
	else
		return Свободен;
$End