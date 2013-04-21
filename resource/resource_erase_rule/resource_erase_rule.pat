$Pattern образец_удаления_парикмахера: rule trace
$Relevant_resources
	_Парикмахер: Парикмахеры Erase
$Body
_Парикмахер
	Choice from _Парикмахер.состояние == Свободен
	Convert_rule
$End

