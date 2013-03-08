$Pattern pat: operation
$Relevant_resources
	robot   : resource  Keep     Keep
	Транзакт: Транзакты NonExist Create
$Time = 40
$Body
robot
	Choice from robot.Состояние == Свободен
	Convert_begin
		Состояние = Занят;
	Convert_end
		Состояние = Свободен;
Транзакт
	Convert_end
		Время_создания = time_now;
		proc.ProcessStart(Транзакт);
$End
