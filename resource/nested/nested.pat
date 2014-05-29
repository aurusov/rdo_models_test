$Pattern Choosing_laptop_pattern : operation trace
$Relevant_resources
	_Client : Clients Keep Erase
	_Chosen_laptop : Laptop Keep NoChange
$Time = 10
$Body
_Client:
	Choice from status == Ready
	Convert_begin
		status = Done;
_Chosen_laptop:
	Choice from _Client.money_available >= price
			and _Client.laptop_weight >= weight
			and _Client.screen_size <= screen_size
			and _Client.RAM.memory_size <= RAM.memory_size
			and _Client.RAM.clock_rate <= RAM.clock_rate
			and _Client.Graphic_Card.memory_size <= Graphic_Card.memory_size
			and _Client.Graphic_Card.memory_clock <= Graphic_Card.memory_clock
			and _Client.CPU.clock_rate <= CPU.clock_rate
			and _Client.CPU.number_of_cores <= CPU.number_of_cores
			and _Client.HDD.memory_size <= HDD.memory_size
			and _Client.HDD.rotational_frequency <= HDD.rotational_frequency
			and amount > 0
			with_min price
	Convert_begin
		amount--;
		sold++;
$End

$Pattern Client_leaving_pattern : operation trace
$Relevant_resources
	_Client: Clients Keep Erase
$Time = 0
$Body
_Client:
	Choice from status == Ready
	Convert_begin
		status = Left;
$End
