program countdown;
var
	i: integer;
begin
	for i := 10 downto 1 do
		write(i, '... ');
	writeln('start!')
end.
