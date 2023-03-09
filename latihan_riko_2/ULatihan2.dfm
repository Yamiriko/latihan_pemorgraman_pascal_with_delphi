object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Latihan Delphi 2'
  ClientHeight = 226
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tempus Sans ITC'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 20
  object cbb1: TComboBox
    Left = 24
    Top = 24
    Width = 145
    Height = 28
    TabOrder = 0
    Text = 'cbb1'
  end
  object ListBox1: TListBox
    Left = 24
    Top = 72
    Width = 145
    Height = 145
    ItemHeight = 20
    TabOrder = 1
  end
  object DateTimePicker1: TDateTimePicker
    Left = 200
    Top = 24
    Width = 186
    Height = 28
    Date = 44966.000000000000000000
    Time = 0.601873182873532600
    TabOrder = 2
  end
  object Button1: TButton
    Left = 200
    Top = 72
    Width = 113
    Height = 49
    Caption = 'Proses'
    TabOrder = 3
    OnClick = Button1Click
  end
end
