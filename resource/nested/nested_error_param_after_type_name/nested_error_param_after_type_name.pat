$Pattern Pattern_1: operation trace
$Relevant_resources
        _Parent : Parent_1 Keep NoChange
$Time = 20
$Body
_Parent:
        Choice from Param_1.Param_2.Param_1 != 100
        Convert_begin
                Nested_level_1.Param_2.Param_1 = 100;
$End
