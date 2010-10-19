// Uncomment the following directive to create a console application
// or leave commented to create a GUI application... 
// {$APPTYPE CONSOLE}

program ProjetoTests;

uses
  TestFramework,
  Forms,
  GUITestRunner,
  UConverteRomanoDecimal in '..\UConverteRomanoDecimal.pas',
  UTestConverteRomanoDecimal in 'UTestConverteRomanoDecimal.pas';

{$R *.RES}

begin
  Application.Initialize;
  GUITestRunner.RunRegisteredTests;
end.

 