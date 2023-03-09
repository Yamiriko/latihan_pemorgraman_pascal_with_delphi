unit ULatihan2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    cbb1: TComboBox;
    ListBox1: TListBox;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i : Integer;
begin
  cbb1.Clear;
  cbb1.Items.Clear;
  ListBox1.Clear;
  ListBox1.Items.Clear;

  i := 1;
  for i := i to 10 do begin
    cbb1.Items.Add(IntToStr(i));
    ListBox1.Items.Add(IntToStr(i));
  end;
end;

end.
