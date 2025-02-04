program modulo;
var
	x : integer;
begin
	read(x);
	if x < 0 then
		x := -x;
	writeln(x);
end.
