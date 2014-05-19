$Constant
	Место_дырки: (справа, слева, сверху, снизу, дырки_рядом_нет) = дырки_рядом_нет
	Длина_поля : integer = 3
$End

$Function Ряд: integer
$Type = algorithmic
$Parameters
	Местоположение: integer
$Body
	return (Местоположение - 1)/Длина_поля + 1;
$End

$Function Остаток_от_деления : integer
$Type = algorithmic
$Parameters
	Делимое   : integer
	Делитель  : integer
$Body
	integer Целая_часть  = Делимое/Делитель;
	integer Макс_делимое = Делитель * int(Целая_часть);
	return Делимое -  Макс_делимое;
$End

$Function Столбец: integer
$Type = algorithmic
$Parameters
	Местоположение: integer
$Body
	return Остаток_от_деления(Местоположение - 1,Длина_поля) + 1;
$End

$Function Где_дырка : such_as Место_дырки
$Type = algorithmic
$Parameters
	_Место: such_as Фишка.Местоположение
$Body
	if (Столбец(_Место) == Столбец(Дырка.Место) and Ряд(_Место) == Ряд(Дырка.Место)+ 1) return сверху;
	if (Столбец(_Место) == Столбец(Дырка.Место) and Ряд(_Место) == Ряд(Дырка.Место)- 1) return снизу;
	if (Ряд(_Место) == Ряд(Дырка.Место) and Столбец(_Место) == Столбец(Дырка.Место)- 1) return справа;
	if (Ряд(_Место) == Ряд(Дырка.Место) and Столбец(_Место) == Столбец(Дырка.Место)+ 1) return слева;
	return дырки_рядом_нет;
$End

$Function Фишка_на_месте : integer
$Type = algorithmic
$Parameters
	_Номер: such_as Фишка.Номер
	_Место: such_as Фишка.Местоположение
$Body
	if (_Номер == _Место) return 1;
	else                  return 0;
$End

$Function Кол_во_фишек_не_на_месте : integer
$Type = algorithmic
$Parameters
$Body
	return 5 - (Фишка_на_месте(Фишка1.Номер, Фишка1.Местоположение)+
	            Фишка_на_месте(Фишка2.Номер, Фишка2.Местоположение)+
	            Фишка_на_месте(Фишка3.Номер, Фишка3.Местоположение)+
	            Фишка_на_месте(Фишка4.Номер, Фишка4.Местоположение)+
	            Фишка_на_месте(Фишка5.Номер, Фишка5.Местоположение));
$End

$Function Расстояние_фишки_до_места : integer
$Type = algorithmic
$Parameters
	Откуда: integer
	Куда  : integer
$Body
	return Abs(Ряд(Откуда)-Ряд(Куда)) + Abs(Столбец(Откуда)-Столбец(Куда));
$End

$Function Расстояния_фишек_до_мест : integer
$Type = algorithmic
$Parameters
$Body
	return Расстояние_фишки_до_места(Фишка1.Номер, Фишка1.Местоположение)+
	       Расстояние_фишки_до_места(Фишка2.Номер, Фишка2.Местоположение)+
	       Расстояние_фишки_до_места(Фишка3.Номер, Фишка3.Местоположение)+
	       Расстояние_фишки_до_места(Фишка4.Номер, Фишка4.Местоположение)+
	       Расстояние_фишки_до_места(Фишка5.Номер, Фишка5.Местоположение);
$End