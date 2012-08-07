object Splash: TSplash
  Left = 385
  Top = 244
  Width = 516
  Height = 208
  Caption = 'Carregando'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object R: TSpeedButton
    Left = 192
    Top = 176
    Width = 49
    Height = 25
    Caption = 'reinicia'
    Visible = False
    OnClick = RClick
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 489
    Height = 137
    TabOrder = 0
    object Gauge1: TGauge
      Left = 89
      Top = 88
      Width = 336
      Height = 25
      BackColor = clBtnShadow
      Color = clBlue
      ForeColor = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Progress = 0
    end
    object Label3: TLabel
      Left = 167
      Top = 61
      Width = 50
      Height = 23
      Caption = 'Label3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 155
    Width = 508
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
  object s: TSpinEdit
    Left = 104
    Top = 176
    Width = 73
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 100
    Visible = False
    OnChange = sChange
  end
  object e: TEdit
    Left = 104
    Top = 152
    Width = 185
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    Text = 'GEEK SISTEMAS'
    Visible = False
  end
  object W1: TSpinEdit
    Left = 104
    Top = 200
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = -11
    Visible = False
    OnChange = W1Change
  end
  object W2: TSpinEdit
    Left = 128
    Top = 200
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = -10
    Visible = False
    OnChange = W2Change
  end
  object W3: TSpinEdit
    Left = 152
    Top = 200
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 6
    Value = -9
    Visible = False
    OnChange = W3Change
  end
  object W4: TSpinEdit
    Left = 176
    Top = 200
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 7
    Value = -8
    Visible = False
    OnChange = W4Change
  end
  object W5: TSpinEdit
    Left = 200
    Top = 200
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 8
    Value = -7
    Visible = False
    OnChange = W5Change
  end
  object W6: TSpinEdit
    Left = 224
    Top = 200
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 9
    Value = -6
    Visible = False
    OnChange = W6Change
  end
  object W7: TSpinEdit
    Left = 248
    Top = 200
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 10
    Value = -5
    Visible = False
    OnChange = W7Change
  end
  object W8: TSpinEdit
    Left = 272
    Top = 200
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 11
    Value = -4
    Visible = False
    OnChange = W8Change
  end
  object w9: TSpinEdit
    Left = 296
    Top = 200
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 12
    Value = -3
    Visible = False
    OnChange = w9Change
  end
  object w10: TSpinEdit
    Left = 320
    Top = 200
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 13
    Value = -2
    Visible = False
    OnChange = w10Change
  end
  object w11: TSpinEdit
    Left = 344
    Top = 200
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 14
    Value = -1
    Visible = False
    OnChange = w11Change
  end
  object w12: TSpinEdit
    Left = 368
    Top = 200
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 15
    Value = 0
    Visible = False
    OnChange = w12Change
  end
  object Panel2: TPanel
    Left = 177
    Top = 36
    Width = 184
    Height = 29
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = clSilver
    TabOrder = 16
    object Q8: TLabel
      Left = 107
      Top = 2
      Width = 15
      Height = 25
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Color = 4194304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Q7: TLabel
      Left = 92
      Top = 2
      Width = 15
      Height = 25
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Color = 4194304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Q6: TLabel
      Left = 77
      Top = 2
      Width = 15
      Height = 25
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Color = 4194304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Q5: TLabel
      Left = 62
      Top = 2
      Width = 15
      Height = 25
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Color = 4194304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Q4: TLabel
      Left = 47
      Top = 2
      Width = 15
      Height = 25
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Color = 4194304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Q3: TLabel
      Left = 32
      Top = 2
      Width = 15
      Height = 25
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Color = 4194304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Q2: TLabel
      Left = 17
      Top = 2
      Width = 15
      Height = 25
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Color = 4194304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Q1: TLabel
      Left = 2
      Top = 2
      Width = 15
      Height = 25
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Color = 4194304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object q12: TLabel
      Left = 167
      Top = 2
      Width = 15
      Height = 25
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Color = 4194304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object q11: TLabel
      Left = 152
      Top = 2
      Width = 15
      Height = 25
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Color = 4194304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object q10: TLabel
      Left = 137
      Top = 2
      Width = 15
      Height = 25
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Color = 4194304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object q9: TLabel
      Left = 122
      Top = 2
      Width = 15
      Height = 25
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Color = 4194304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 8
    Top = 8
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 8
    Top = 40
  end
  object t: TTimer
    Interval = 500
    OnTimer = tTimer
    Left = 344
    Top = 160
  end
  object Timer3: TTimer
    Interval = 1
    Left = 312
    Top = 160
  end
end
