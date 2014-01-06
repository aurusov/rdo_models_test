$Constant
  Место_дырки: (справа, слева, сверху, снизу, дырки_рядом_нет) = дырки_рядом_нет
$End

$Function Где_дырка : such_as Место_дырки
$Type = algorithmic
$Parameters
	_Фишка:	Фишка
$Body
	integer Место = _Фишка;
	return  дырки_рядом_нет;
$End

$Function Фишка_на_месте : integer
$Type = algorithmic
$Parameters
	_Фишка:	Фишка
$Body
	if (_Фишка.Номер == _Фишка.Местоположение	) return 1;
	return 0;
$End

$Function Кол_во_фишек_не_на_месте : integer
$Type = algorithmic
$Body
	return		5-(Фишка_на_месте(Фишка1) + Фишка_на_месте(Фишка2)
				+ Фишка_на_месте(Фишка3) + Фишка_на_месте(Фишка4)
				+ Фишка_на_месте(Фишка5));
$End

$Function Ряд: integer
$Type = algorithmic
$Parameters
  Местоположение: integer
$Body
  if (Местоположение >= 1 and Местоположение <= 3) return 1;
  if (Местоположение >= 4 and Местоположение <= 6) return 2;
  if (Местоположение >= 7 and Местоположение <= 9) return 3;
$End

$Function Строка: integer
$Type = algorithmic
$Parameters
  Местоположение: integer
$Body
  if (Местоположение == 1 or Местоположение == 4 or Местоположение == 7) return 1;
  if (Местоположение == 2 or Местоположение == 5 or Местоположение == 8) return 2;
  if (Местоположение == 3 or Местоположение == 6 or Местоположение == 9) return 3;
$End

$Function Расстояние_фишки_до_места : integer
$Type = algorithmic
$Parameters
  _Фишка : Фишка
$Body
  if (_Фишка.Номер ==_Фишка.Местоположение)	return 0;
  return Abs(Ряд(_Фишка.Номер)-Ряд(_Фишка.Номер)) + Abs(Строка(_Фишка.Номер)-Строка(_Фишка.Номер));
$End

$Function Расстояния_фишек_до_мест : integer
$Type = algorithmic
$Body
return			Расстояние_фишки_до_места(Фишка1)+
				Расстояние_фишки_до_места(Фишка2)+
				Расстояние_фишки_до_места(Фишка3)+
				Расстояние_фишки_до_места(Фишка4)+
				Расстояние_фишки_до_места(Фишка5);
$End