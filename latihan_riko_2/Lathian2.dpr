program Lathian2;

uses
  Vcl.Forms,
  ULatihan2 in 'ULatihan2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
