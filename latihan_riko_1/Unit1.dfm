object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 31
    Height = 19
    Caption = 'NIM'
  end
  object edtnim: TEdit
    Left = 32
    Top = 56
    Width = 121
    Height = 27
    TabOrder = 0
  end
  object btnproses: TButton
    Left = 32
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 1
    OnClick = btnprosesClick
  end
end
