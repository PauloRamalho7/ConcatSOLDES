object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 354
  ClientWidth = 1174
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblSOL: TLabel
    Left = 228
    Top = 13
    Width = 29
    Height = 13
    Caption = 'lblSOL'
  end
  object lblDES: TLabel
    Left = 372
    Top = 13
    Width = 29
    Height = 13
    Caption = 'lblDES'
  end
  object lblAMBOS: TLabel
    Left = 564
    Top = 13
    Width = 45
    Height = 13
    Caption = 'lblAMBOS'
  end
  object lblSaida: TLabel
    Left = 856
    Top = 13
    Width = 36
    Height = 13
    Caption = 'lblSaida'
  end
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 40
    Height = 13
    Caption = 'Vers'#227'o: '
  end
  object Button1: TButton
    Left = 147
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Ler &SOL.txt'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 291
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Ler &DES.txt'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 483
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Ler &Ambos'
    TabOrder = 2
  end
  object mmLinhas: TMemo
    Left = 8
    Top = 39
    Width = 1161
    Height = 306
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object Button4: TButton
    Left = 758
    Top = 8
    Width = 75
    Height = 25
    Margins.Left = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Caption = '&Salvar'
    TabOrder = 4
    OnClick = Button4Click
  end
  object edtVersao: TEdit
    Left = 54
    Top = 10
    Width = 87
    Height = 21
    TabOrder = 5
  end
end
