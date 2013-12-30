$Pattern patCreate: operation
$Relevant_resources
	robot   : resource  Keep     Keep
	Транзакт: Транзакты NonExist Create
$Time = 40
$Body
robot:
	Choice from robot.Состояние == Свободен
	Convert_begin
		Состояние = Занят;
	Convert_end
		Состояние = Свободен;
Транзакт:
	Convert_end trace
		Время_создания = time_now;
$End

$Pattern patErase: rule
$Relevant_resources
	Транзакт: Транзакты Erase
$Body
Транзакт:
	Convert_rule
$End
