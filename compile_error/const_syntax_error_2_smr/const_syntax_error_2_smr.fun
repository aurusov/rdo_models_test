$Constant
  test_1 : integer = 10
  test_2 : real = 3.14159
  test_3 : integer [0..1000] = 0
  test_4 : real [0.0..20.0] = 10.0
  test_5 : (Свободен, Занят) = Свободен
  test_6 : such_as Парикмахерские.количество_в_очереди = 20
  test_7 : such_as test_4 = 6.72
  test_8 : such_as Парикмахерские.состояние_парикмахера = Занят
$End

$Sequence Интервал_прихода : real
$Type = exponential 123456789
$End

$Sequence Длительность_обслуживания : real
$Type = uniform 123456789
$End
