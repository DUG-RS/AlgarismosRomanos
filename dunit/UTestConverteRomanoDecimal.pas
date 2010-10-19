{
  PROBLEMA A SER RESOLVIDO:

  Converter os algarismo romanos de I a X para números decimais.


  CRITERIOS DE ACEITACAO:

  DADO QUE digito o algarismo romano I
  QUANDO solicitar conversão para inteiro
  ENTAO devo receber como retorno o número 1

  DADO QUE digito o algarismo romano II
  QUANDO solicitar conversão para inteiro
  ENTAO devo receber como retorno o número 2

  DADO QUE digito o algarismo romano III
  QUANDO solicitar conversão para inteiro
  ENTAO devo receber como retorno o número 3

  DADO QUE digito o algarismo romano IV
  QUANDO solicitar conversão para inteiro
  ENTAO devo receber como retorno o número 4

  DADO QUE digito o algarismo romano V
  QUANDO solicitar conversão para inteiro
  ENTAO devo receber como retorno o número 5

  DADO QUE digito o algarismo romano VI
  QUANDO solicitar conversão para inteiro
  ENTAO devo receber como retorno o número 6

  DADO QUE digito o algarismo romano VII
  QUANDO solicitar conversão para inteiro
  ENTAO devo receber como retorno o número 7

  DADO QUE digito o algarismo romano VIII
  QUANDO solicitar conversão para inteiro
  ENTAO devo receber como retorno o número 8

  DADO QUE digito o algarismo romano IX
  QUANDO solicitar conversão para inteiro
  ENTAO devo receber como retorno o número 9

  DADO QUE digito o algarismo romano X
  QUANDO solicitar conversão para inteiro
  ENTAO devo receber como retorno o número 10
}

unit UTestConverteRomanoDecimal;

interface

uses
  UConverteRomanoDecimal,
  TestFrameWork,
  SysUtils;

type
  TTestConverteRomanoDecimal = class(TTestCase)
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestConversaoDeIPara1;
    procedure TestConversaoDeIIPara2;
    procedure TestConversaoDeIIIPara3;
    procedure TestConversaoDeIVPara4;
    procedure TestConversaoDeVPara5;
    procedure TestConversaoDeVIPara6;
    procedure TestConversaoDeVIIPara7;
    procedure TestConversaoDeVIIIPara8;
    procedure TestConversaoDeIXPara9;
    procedure TestConversaoDeXPara10;
  private
    FConverteRomanoParaInteiro: TConverteRomanoDecimal;
end;

implementation

{ TTestConverteRomanoDecimal }

procedure TTestConverteRomanoDecimal.SetUp;
begin
  inherited;
  FConverteRomanoParaInteiro := TConverteRomanoDecimal.Create;
end;

procedure TTestConverteRomanoDecimal.TearDown;
begin
  inherited;
  FreeAndNil(FConverteRomanoParaInteiro);
end;

procedure TTestConverteRomanoDecimal.TestConversaoDeIIIPara3;
begin
  CheckEquals(FConverteRomanoParaInteiro.Converte('III'), 3, 'Conversao de III para 3 falhou!');
end;

procedure TTestConverteRomanoDecimal.TestConversaoDeIIPara2;
begin
  CheckEquals(FConverteRomanoParaInteiro.Converte('II'), 2, 'Conversao de II para 2 falhou!');
end;

procedure TTestConverteRomanoDecimal.TestConversaoDeIPara1;
begin
  CheckEquals(FConverteRomanoParaInteiro.Converte('I'), 1, 'Conversao de I para 1 falhou!');
end;

procedure TTestConverteRomanoDecimal.TestConversaoDeIVPara4;
begin
  CheckEquals(FConverteRomanoParaInteiro.Converte('IV'), 4, 'Conversao de IV para 4 falhou!');
end;

procedure TTestConverteRomanoDecimal.TestConversaoDeIXPara9;
begin
  CheckEquals(FConverteRomanoParaInteiro.Converte('IX'), 9, 'Conversao de IX para 9 falhou!');
end;

procedure TTestConverteRomanoDecimal.TestConversaoDeVIIIPara8;
begin
  CheckEquals(FConverteRomanoParaInteiro.Converte('VIII'), 8, 'Conversao de VIII para 8 falhou!');
end;

procedure TTestConverteRomanoDecimal.TestConversaoDeVIIPara7;
begin
  CheckEquals(FConverteRomanoParaInteiro.Converte('VII'), 7, 'Conversao de VII para 7 falhou!');
end;

procedure TTestConverteRomanoDecimal.TestConversaoDeVIPara6;
begin
  CheckEquals(FConverteRomanoParaInteiro.Converte('VI'), 6, 'Conversao de VI para 6 falhou!');
end;

procedure TTestConverteRomanoDecimal.TestConversaoDeVPara5;
begin
  CheckEquals(FConverteRomanoParaInteiro.Converte('V'), 5, 'Conversao de V para 5 falhou!');
end;

procedure TTestConverteRomanoDecimal.TestConversaoDeXPara10;
begin
  CheckEquals(FConverteRomanoParaInteiro.Converte('X'), 10, 'Conversao de X para 1 falhou!');
end;

initialization
  TestFramework.RegisterTest('Suite de Testes', TTestConverteRomanoDecimal.Suite);

end.
 