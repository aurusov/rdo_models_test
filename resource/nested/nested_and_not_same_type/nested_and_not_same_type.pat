$Pattern Pattern_1: rule trace
$Relevant_resources
	_Parent : Parent Erase
$Body
_Parent:
	Choice from Param_3 == 0		
$End

$Pattern Pattern_2: rule trace
$Relevant_resources
	_Independent : Nested_level_1 Erase
$Body
_Independent:
	Choice from Param_1 == 6		
$End