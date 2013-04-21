$Constant
Количество_шпинделей_станка : integer = 2
$End

$Sequence Интервал_прихода : real
$Type = exponential 123456789
$End

$Sequence Длительность_обслуживания : real
$Type = uniform 123456789
$End

$Sequence Среднее_число_одновременно_поступающих_заявок : integer
$Type = normal 123456789
$End
