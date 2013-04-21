$Pattern Образец_обслуживания_клиента : operation
$Parameters
	count: integer
$Relevant_resources
	_Парикмахерская: Парикмахерская Keep Keep
$Time = 1
$Body
_Парикмахерская
	Choice from _Парикмахерская.состояние_парикмахера == Свободен and _Парикмахерская.количество_в_очереди >= count
	Convert_begin
		количество_в_очереди -= count;
		состояние_парикмахера = Занят;
	Convert_end
		состояние_парикмахера = Свободен;
		количество_обслуженных += count;
$End
