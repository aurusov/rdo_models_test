$Pattern Образец :  operation
$Relevant_resources
	ресурс_: ресурсы Keep NoChange
$Time = 100
$Body
ресурс_
	Choice from 1 > 0
	first
	Convert_begin
		текущее_количество = накопитель_.текущее_количество - 1;
$End
