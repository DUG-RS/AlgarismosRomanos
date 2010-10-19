unit UConverteRomanoDecimal;

interface

uses Classes;

type
  TConverteRomanoDecimal = class
  public
    function Converte(Romano: char): integer; overload;
    function Converte(Romano: string): integer; overload;

end;

implementation

{ TConverteRomanoDecimal }

function TConverteRomanoDecimal.Converte(Romano: string): integer;
var
  i, Numero: integer;
begin
  Numero := 0;

  for i:= 1 to Length(Romano) do
  begin
    if Converte(Romano[i]) >= Converte(Romano[i+1]) then
      Numero := Numero + Converte(Romano[i])
    else
      Numero := Numero - Converte(Romano[i]);
  end;
  
  Result := Numero;
end;

function TConverteRomanoDecimal.Converte(Romano: char): integer;
var
  Numero: integer;
begin
  Numero := 0;
  
  if Romano = 'I' then
    Numero := 1
  else
    if Romano = 'V' then
      Numero := 5
    else
      if Romano = 'X' then
        Numero := 10;

  Result := Numero;        
end;

end.
 