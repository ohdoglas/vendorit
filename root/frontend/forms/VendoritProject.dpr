program VendoritProject;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Slate Classico');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
