object Apresentacao: TApresentacao
  Left = 344
  Top = 112
  Width = 561
  Height = 553
  Caption = 'Apresenta'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 545
    Height = 393
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 496
    Width = 545
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object BitBtn1: TBitBtn
    Left = 80
    Top = 408
    Width = 153
    Height = 73
    Caption = 'Avan'#231'ar'
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 312
    Top = 408
    Width = 153
    Height = 73
    Caption = 'Sair'
    TabOrder = 2
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Top = 472
  end
end
