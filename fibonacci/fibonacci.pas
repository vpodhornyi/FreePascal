program Fibonacci;

uses crt;

function FibonacciRecursive(n: integer): integer;
begin
    if (n = 0) then
        FibonacciRecursive := 0
    else if (n = 1) then
        FibonacciRecursive := 1
    else
        FibonacciRecursive := FibonacciRecursive(n - 1) + FibonacciRecursive(n - 2);
end;

function FibonacciIterative(n: integer): integer;
var
    a, b, temp, i: integer;
begin
    if (n = 0) then
        FibonacciIterative := 0
    else if (n = 1) then
        FibonacciIterative := 1
    else
    begin
        a := 0;
        b := 1;
        for i := 2 to n do
        begin
            temp := a + b;
            a := b;
            b := temp;
        end;
        FibonacciIterative := b;
    end;
end;

procedure PrintFibonacci(n: integer; i: integer);
begin
    if i < n then
    begin
        write(FibonacciRecursive(i), ' ');
        PrintFibonacci(n, i + 1);
    end
    else
        writeln;
end;

procedure PrintFibonacci(n: integer; a: integer; b: integer);
begin
    if n > 0 then
    begin
        write(a, ' ');
        PrintFibonacci(n - 1, b, a + b);
    end
    else
        writeln;
end;

var
    n: integer;
begin
    clrscr;
    writeln('Введите номер числа Фибоначчи: ');
    readln(n);
    writeln('Рекурсивный метод: ', FibonacciRecursive(n));
    writeln('Итерационный метод: ', FibonacciIterative(n));
    readln;

    writeln('Введите количество чисел Фибоначчи: ');
    readln(n);
    writeln('Числа Фибоначчи:');
    PrintFibonacci(n, 0);
    readln;

    writeln('Введите количество чисел Фибоначчи: ');
    readln(n);
    writeln('Числа Фибоначчи:');
    PrintFibonacci(n, 0, 1);
    readln;
end.
