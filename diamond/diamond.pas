program diamond;
var
	i, j, k: integer;
	ln: integer = 7;
begin
	k := ln div 2;
	for i := 1 to ln do
		begin
			for j := 1 to ln do
				begin
					if (k + i = j) or (k + 2 - i = j) or ((i > k + 1 ) and ((i - k = j) or (ln - i + k + 1 = j))) then 
						write('*')
					else
						write(' ');
				end;
		writeln
		end;
end.
