unit latihanStringGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edt_kd_barang: TEdit;
    edt_nm_barang: TEdit;
    Label3: TLabel;
    edt_harga: TEdit;
    Label4: TLabel;
    edt_byk_barang: TEdit;
    btn_tambah: TButton;
    sg1: TStringGrid;
    btn_reset: TButton;
    Label5: TLabel;
    Panel1: TPanel;
    procedure btn_resetClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_tambahClick(Sender: TObject);
  private
    { Private declarations }
    procedure resetform;
    procedure desain_tabel;
    procedure hapus_data_tabel;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  total: Integer;

implementation

{$R *.dfm}

procedure TForm1.hapus_data_tabel;
var
i : Integer;
begin
  with sg1 do begin
    //Mengosongkan data di tabel otomatis
    for i := 0 to RowCount do
    Rows[i].Clear;
    RowCount:=1;
  end;
  desain_tabel;
end;

procedure TForm1.btn_tambahClick(Sender: TObject);
var
i : Integer;
jumlah_bayar : string;
begin
  with sg1 do begin
    //Coding Menambahkan Data Ke StringGrid
    RowCount := RowCount + 1;
    FixedRows:=1;
    Cells[0,RowCount - 1] := IntToStr(RowCount - 1);
    Cells[1,RowCount - 1] := edt_kd_barang.Text;
    Cells[2,RowCount - 1] := edt_nm_barang.Text;
    Cells[3,RowCount - 1] := edt_harga.Text;
    Cells[4,RowCount - 1] := edt_byk_barang.Text;

    //Rumus Jumlah Bayar
    jumlah_bayar :=
    IntToStr(StrToInt(edt_harga.Text) *
    StrToInt(edt_byk_barang.Text));

    Cells[5,RowCount - 1] := jumlah_bayar;

    //Perulangan Menghitung Total
    total:=0;
    for i := 1 to RowCount - 1 do
    total := total + StrToInt(jumlah_bayar);
  end;

  //Tampilkan totalnya ke Panel1
  Panel1.Caption:=IntToStr(total);
end;

procedure TForm1.desain_tabel;
begin
  //Desain Tabel
  with sg1 do begin
    RowCount:=1;
    ColCount:=6;
    FixedCols := 1;
    FixedRows := 0;
    ScrollBars := ssBoth;

    Cells[0,0]:='No.';
    Cells[1,0]:='Kode Barang';
    Cells[2,0]:='Nama Barang';
    Cells[3,0]:='Harga';
    Cells[4,0]:='Banyak Barang';
    Cells[5,0]:='Jumlah Bayar';

    ColWidths[0]:=50;
    ColWidths[1]:=110;
    ColWidths[2]:=160;
    ColWidths[3]:=80;
    ColWidths[4]:=120;
    ColWidths[5]:=120;
  end;
end;

procedure TForm1.btn_resetClick(Sender: TObject);
begin
  resetform;
  hapus_data_tabel;
  edt_kd_barang.SetFocus;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
 resetform;
 edt_kd_barang.SetFocus;
 desain_tabel;
end;

procedure TForm1.resetform;
begin
  edt_kd_barang.Clear;
  edt_nm_barang.Clear;
  edt_harga.Clear;
  edt_byk_barang.Clear;
  Panel1.Caption:='0';
end;

end.
