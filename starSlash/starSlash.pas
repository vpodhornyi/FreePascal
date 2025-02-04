program starSlash;
var
	n, m: integer;
begin
	for n := 1 to 24 do
	begin
		for m := 1 to n - 1 do
			write(' ');
		writeln('*')
	end
end.
