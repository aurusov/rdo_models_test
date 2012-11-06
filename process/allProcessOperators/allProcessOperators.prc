$Process Обработка_изделий заготовки
	GENERATE  7

	QUEUE     FMS_IN
	SEIZE     ROBOT
	DEPART    FMS_IN

	ADVANCE   10

	RELEASE   ROBOT

	TERMINATE 1
$End
