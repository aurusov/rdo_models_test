$Sequence Интервал_прихода : real
$Type = exponential 123456789
$End

$Sequence Длительность_обслуживания : real
$Type = uniform 123456789
$End

$Sequence Dummy_seq : integer
$Type = enumerative
$Body
10 20 30 10
$End

$Constant
	Dummy_const : integer = 100
$End