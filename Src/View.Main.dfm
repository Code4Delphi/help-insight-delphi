object ViewMain: TViewMain
  Left = 0
  Top = 0
  Caption = 'Code4Delphi - Help Insight'
  ClientHeight = 226
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel9: TPanel
    Left = 0
    Top = 0
    Width = 582
    Height = 226
    Align = alClient
    BevelKind = bkTile
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object btnMultiplicar: TButton
      Left = 16
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Multiplicar'
      TabOrder = 0
      OnClick = btnMultiplicarClick
    end
    object btnUsandoEmEnums: TButton
      Left = 97
      Top = 32
      Width = 152
      Height = 25
      Caption = 'Usando em enums'
      TabOrder = 1
      OnClick = btnUsandoEmEnumsClick
    end
  end
end
