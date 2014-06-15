$Pattern Pattern_1: operation trace
$Relevant_resources
	_Parent : Parent Keep Erase
$Time = 40
$Body
_Parent:
	Choice from status == Ready
	Convert_begin
		status = Done;
$End