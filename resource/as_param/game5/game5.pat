$Pattern Перемещение_фишки : rule
$Parameters
	Куда_перемещать: such_as Место_дырки
	На_сколько_перемещать: integer
$Relevant_resources
	_Фишка: Фишка   Keep
	_Дырка: Дырка_t Keep
$Body
	_Фишка
	 Choice from Где_дырка(_Фишка) == Куда_перемещать
	 first
	 Convert_rule Местоположение set _Фишка.Местоположение + На_сколько_перемещать;
	_Дырка
	 Choice NoCheck
	 first
	 Convert_rule Место set _Дырка.Место - На_сколько_перемещать;
$End
