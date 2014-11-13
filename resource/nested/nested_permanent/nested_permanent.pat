$Pattern Pattern_1: operation trace
$Relevant_resources
	_Parent : Parent Keep Keep
$Time = 20
$Body
_Parent:
	Choice from Param_1.Param_1 > 0
		and Param_1.Param_2.Param_1 < Param_3
		and Param_1.Param_2.Param_2 > Param_1.Param_2.Param_1 + 10
	Convert_begin
		Param_1.Param_1 -= 3.2;
		Param_1.Param_2.Param_2 -= 5;
		Param_3 *= 0.2;
	Convert_end
		Param_1.Param_1 += 3.1;
		Param_1.Param_2.Param_1 -= 4;
		Param_3 *= 4.5;
$End