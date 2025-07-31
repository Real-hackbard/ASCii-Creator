object Form1: TForm1
  Left = 1751
  Top = 240
  Caption = 'ASCii Creator 1.0'
  ClientHeight = 333
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Fond: TImage
    Left = 0
    Top = 89
    Width = 209
    Height = 225
    Align = alLeft
  end
  object Splitter1: TSplitter
    Left = 209
    Top = 89
    Width = 9
    Height = 225
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 241
      Top = 6
      Width = 45
      Height = 13
      Caption = 'Kontrast :'
    end
    object Label2: TLabel
      Left = 238
      Top = 38
      Width = 49
      Height = 13
      Caption = 'Helligkeit :'
    end
    object Button1: TButton
      Left = 8
      Top = 1
      Width = 97
      Height = 25
      Caption = 'Image'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 56
      Width = 97
      Height = 25
      Caption = 'Rechne'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object TBCon: TTrackBar
      Left = 292
      Top = 4
      Width = 189
      Height = 21
      Max = 255
      Min = 1
      Frequency = 16
      Position = 128
      TabOrder = 2
      ThumbLength = 10
    end
    object Police: TComboBox
      Left = 112
      Top = 4
      Width = 105
      Height = 21
      TabOrder = 3
      Text = 'Courier New'
    end
    object TBLum: TTrackBar
      Left = 292
      Top = 32
      Width = 189
      Height = 21
      Max = 255
      Min = 1
      Frequency = 16
      Position = 128
      TabOrder = 4
      ThumbLength = 10
    end
    object CB2x: TCheckBox
      Left = 112
      Top = 59
      Width = 53
      Height = 21
      Caption = 'x2'
      TabOrder = 5
    end
    object Button3: TButton
      Left = 484
      Top = 9
      Width = 85
      Height = 29
      Caption = 'Initialisiere'
      TabOrder = 6
      OnClick = Button3Click
    end
    object PB1: TProgressBar
      Left = 10
      Top = 31
      Width = 205
      Height = 21
      TabOrder = 7
    end
    object CBNeg: TCheckBox
      Left = 156
      Top = 59
      Width = 61
      Height = 21
      Caption = 'Negativ'
      TabOrder = 8
    end
  end
  object Memo1: TMemo
    Left = 218
    Top = 89
    Width = 366
    Height = 225
    Align = alClient
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    WantReturns = False
    WordWrap = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 314
    Width = 584
    Height = 19
    Panels = <>
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 12
    Top = 100
  end
end
