$Pattern Образец_прихода_клиента : irregular_event
$Parameters
	test_integer: integer
	test_real   : real
	test_enum   : such_as Парикмахерские.состояние_парикмахера
	test_bool   : bool
	test_string : string
$Relevant_resources
	_Парикмахерская: Парикмахерская Keep
$Time = Интервал_прихода( 60 )
$Body
_Парикмахерская
	Convert_event
		количество_в_очереди set _Парикмахерская.количество_в_очереди + test_integer
$End

$Pattern Образец_обслуживания_клиента : operation
$Relevant_resources
	_Парикмахерская: Парикмахерская Keep Keep
$Time = Длительность_обслуживания( 20, 40 )
$Body
_Парикмахерская
	Choice from _Парикмахерская.состояние_парикмахера = Свободен and _Парикмахерская.количество_в_очереди > 0
	Convert_begin
		количество_в_очереди  set _Парикмахерская.количество_в_очереди - 1
		состояние_парикмахера set Занят
	Convert_end
		состояние_парикмахера  set Свободен
		количество_обслуженных set _Парикмахерская.количество_обслуженных + 1
$End
