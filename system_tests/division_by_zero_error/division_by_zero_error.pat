

$Pattern �������_������������_������� : operation
$Relevant_resources
	_��������������: �������������� Keep Keep
$Time = ������������_������������( 20, 40 )
$Body
_��������������
	Choice from _��������������.���������_����������� == �������� and _��������������.����������_�_������� / 2 == 1
	Convert_begin
		����������_�_�������  = _��������������.����������_�_������� - 1;
		���������_����������� = �����;
	Convert_end
		���������_�����������  = ��������;
		����������_����������� = _��������������.����������_����������� + 1;
$End
