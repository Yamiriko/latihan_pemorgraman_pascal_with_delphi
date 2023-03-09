object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Input Data Barang Ke StringGrid'
  ClientHeight = 460
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    753
    460)
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 93
    Height = 18
    Caption = 'Kode Barang'
  end
  object Label2: TLabel
    Left = 23
    Top = 56
    Width = 97
    Height = 18
    Caption = 'Nama Barang'
  end
  object Label3: TLabel
    Left = 24
    Top = 88
    Width = 43
    Height = 18
    Caption = 'Harga'
  end
  object Label4: TLabel
    Left = 24
    Top = 120
    Width = 107
    Height = 18
    Caption = 'Banyak Barang'
  end
  object Label5: TLabel
    Left = 464
    Top = 32
    Width = 125
    Height = 18
    Caption = 'Total Pembayaran'
  end
  object edt_kd_barang: TEdit
    Left = 144
    Top = 21
    Width = 289
    Height = 26
    TabOrder = 0
    Text = 'edt_kd_barang'
  end
  object edt_nm_barang: TEdit
    Left = 144
    Top = 53
    Width = 289
    Height = 26
    TabOrder = 1
    Text = 'edt_nm_barang'
  end
  object edt_harga: TEdit
    Left = 144
    Top = 85
    Width = 289
    Height = 26
    NumbersOnly = True
    TabOrder = 2
    Text = 'edt_harga'
  end
  object edt_byk_barang: TEdit
    Left = 144
    Top = 120
    Width = 289
    Height = 26
    NumbersOnly = True
    TabOrder = 3
    Text = 'edt_byk_barang'
  end
  object btn_tambah: TButton
    Left = 24
    Top = 152
    Width = 93
    Height = 33
    Caption = 'Tambah'
    TabOrder = 4
    OnClick = btn_tambahClick
  end
  object sg1: TStringGrid
    Left = 23
    Top = 200
    Width = 714
    Height = 241
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
  end
  object btn_reset: TButton
    Left = 123
    Top = 152
    Width = 89
    Height = 33
    Caption = 'Reset'
    TabOrder = 6
    OnClick = btn_resetClick
  end
  object Panel1: TPanel
    Left = 464
    Top = 56
    Width = 273
    Height = 90
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
end
