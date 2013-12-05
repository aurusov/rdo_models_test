$Pattern Образец_обслуживания_клиента : keyboard
$Relevant_resources
	_Парикмахерская: Парикмахерская Keep Keep
	_Клиент        : Клиенты        Keep Erase
	_Парикмахер    : Парикмахеры    Keep Keep
$Time = Длительность_обслуживания( _Парикмахер.длительность_min, _Парикмахер.длительность_max )
$Body
_Парикмахерская:
	Choice from _Парикмахерская.количество_в_очереди > 0
	Convert_begin
		количество_в_очереди--;
	Convert_end
		количество_обслуженных++;

_Клиент:
	Choice from _Клиент.состояние == Пришел
	Convert_begin
		состояние = Начал_стрижку;

_Парикмахер:
	Choice from _Парикмахер.состояние_парикмахера == Свободен and _Парикмахер.тип_клиента == _Клиент.тип
	with_min( _Парикмахер.количество_обслуженных )
	Convert_begin
		состояние_парикмахера  = Занят;
	Convert_end
		состояние_парикмахера  = Свободен;
		количество_обслуженных++;
$End
