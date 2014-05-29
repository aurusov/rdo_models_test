$Sequence exponential_sequence : real
$Type = exponential 12345678
$End

$Sequence uniform_sequence : real
$Type = uniform 12345678
$End

$Function ifRequired : integer
$Type = algorithmic
$Parameters
$Body
	if (uniform_sequence(0,1) < 0.7)
		return 0;
	else
		return 1;
$End

$Function Money_Available : real
$Type = algorithmic
$Parameters
$Body
	return uniform_sequence(300, 2500);
$End

$Function Choose_weight: real
$Type = algorithmic
$Parameters
$Body
	return uniform_sequence(1, 5);
$End

$Function Choose_Screen_Size: real
$Type = algorithmic
$Parameters
$Body
	return uniform_sequence(8, 19);
$End

$Function Choose_RAM_size : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * uniform_sequence(0, 4096);
$End

$Function Choose_RAM_clock_rate : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * uniform_sequence(0, 1600);
$End

$Function Choose_GC_memory_size : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * uniform_sequence(0, 2048);
$End

$Function Choose_GC_clock_rate : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * ifRequired() * uniform_sequence(0, 2400);
$End

$Function Choose_CPU_clock_rate : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * ifRequired() * uniform_sequence(0,3700);
$End

$Function Choose_CPU_number_of_cores : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * ifRequired() * uniform_sequence(0,4);
$End

$Function Choose_HDD_memory_size : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * uniform_sequence(0,500);
$End

$Function Choose_HDD_rotational_frequency : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * uniform_sequence(0,7200);
$End

