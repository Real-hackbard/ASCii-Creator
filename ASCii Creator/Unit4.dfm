object Form4: TForm4
  Left = 1873
  Top = 156
  Caption = 'ASCii Image View'
  ClientHeight = 382
  ClientWidth = 463
  Color = clBtnFace
  Constraints.MinWidth = 479
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnActivate = FormActivate
  OnClose = FormClose
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 463
    Height = 306
    HorzScrollBar.Tracking = True
    VertScrollBar.Tracking = True
    Align = alClient
    TabOrder = 0
    OnResize = ScrollBox1Resize
    object Image1: TImage
      Left = 8
      Top = 8
      Width = 57
      Height = 41
      AutoSize = True
    end
    object Label2: TLabel
      Left = 216
      Top = 152
      Width = 29
      Height = 13
      Caption = 'Image'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 306
    Width = 463
    Height = 57
    Align = alBottom
    BevelInner = bvRaised
    TabOrder = 1
    DesignSize = (
      463
      57)
    object Shape1: TShape
      Left = 288
      Top = 32
      Width = 25
      Height = 17
      Cursor = crArrow
    end
    object Label1: TLabel
      Left = 192
      Top = 34
      Width = 90
      Height = 13
      Caption = 'Tranzparent Color :'
    end
    object BitBtn1: TBitBtn
      Left = 360
      Top = 22
      Width = 91
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '      Save'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFCF9F3
        C29760A5640F9F5A009F5A009F5A009F5A009F5A009F5A009F5A009F5A009F5A
        009F5A009F5A009F5A00FDFBF8AE72259F5A00DCB474DCB474A35B03A35B03EE
        D19BEBCC94EBCC94EBCC94ECCD97EBCC94C37F0BBC76029F5A00C9A06A9F5A00
        C58005EBCD9AEBCD9AA95E00A95E00FFEDCAFAE7C0FAE7C0FAE7C0FCE9C4FCE9
        C4C48009C480099F5A00AB6B14BD790ACC8910ECD0A1ECD0A1B06200A95E00FD
        F0D7FAEACCFAEACCFAEACCFBECD1FBECD1CC8910C78411A45F009F5A00C78618
        CA8A18F2DEBAF2DEBAC78829C78829FEF6E6FCF2DDFCF2DDFCF2DDFDF3E2FDF3
        E2CA8A18CA8A18A45F009F5A00C98B1EC98B1EFCF2DFFCF2DFFCF2DFFCF2DFFC
        F2DFFCF2DFFCF2DFFCF2DFFCF2DFFCF2DFCD8E20CD8E20AB6500AB6500CD8F25
        C98B1EFFFEF8FFFEF8FFFEF8FFFEF8FFFEF8FFFEF8FFFEF8FFFEF8FFFEF8FFFE
        F8D19429D19429AB6500AB6500D0942DD0942DD0942DD0942DD0942DD0942DD0
        942DD0942DD0942DD0942DD0942DD0942DD0942DD0942DAB6500B36D00D39833
        D39833D39833D39833D39833D39833D39833D39833D39833D39833D39833D398
        33D39833D39833B36D00B36D00DAA039DAA039DAA039DAA039DAA039DAA039DA
        A039DAA039DAA039DAA039DAA039DAA039DAA039DAA039B36D00B36D00D8A13E
        D8A13ED8A13EFAE6C0F9E5BEF9E5BEF9E5BEF9E5BEF9E5BEF9E5BEF9E6C0DDA7
        46DDA746DDA746B36D00BA7300DBA443DBA443F9E6C4F9E8C6F9E7C5F9E7C5F9
        E7C5F9E7C5F9E7C5F9E7C5F9E7C5FBE9CAE0AB4BE0AB4BBA7300BA7300DEA94A
        DEA94AFAEBCEFAEED4FAEDD2FAEDD2FAEDD2FAEDD2FAEDD2FAEDD2FAEDD2FBEE
        D5E3B053E3B053BA7300C07900E3B054E3B054FCF0DBFCF3E1FCF2DFFCF2DFFC
        F2DFFCF2DFFCF2DFFCF2DFFCF2DFFCF3E2E8B85EE8B85EC07900C07900F2CC83
        F2CC83FDF5E7FEF9EEFEF8ECFEF8ECFEF8ECFEF8ECFEF8ECFEF8ECFEF8ECFEF9
        F0EDC782EDC782C07900C07900C07900C07900C07900C07900C07900C07900C0
        7900C07900C07900C07900C07900C07900C07900C07900C07900}
      TabOrder = 0
      TabStop = False
      OnClick = BitBtn1Click
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 8
      Width = 49
      Height = 17
      TabStop = False
      Caption = ' Invert'
      TabOrder = 1
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 96
      Top = 32
      Width = 65
      Height = 17
      TabStop = False
      Caption = ' Mirror (Y)'
      TabOrder = 2
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 96
      Top = 8
      Width = 65
      Height = 17
      TabStop = False
      Caption = ' Mirror (X)'
      TabOrder = 3
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 192
      Top = 8
      Width = 158
      Height = 17
      TabStop = False
      Caption = ' Tranzparent (PNG GIF BMP)'
      TabOrder = 4
      OnClick = CheckBox4Click
    end
    object CheckBox5: TCheckBox
      Left = 16
      Top = 32
      Width = 67
      Height = 17
      TabStop = False
      Caption = 'Compress'
      TabOrder = 5
      OnClick = CheckBox5Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 363
    Width = 463
    Height = 19
    Panels = <
      item
        Text = 'Dimensions :'
        Width = 75
      end
      item
        Width = 120
      end
      item
        Text = 'Bit :'
        Width = 30
      end
      item
        Text = '24'
        Width = 25
      end
      item
        Width = 50
      end>
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Bitmap (*.BMP)|*.bmp|Jpeg (*.JPG; *.JPEG)|*.jpg|Portable Network' +
      ' Graphic (*.PNG)|*.png|Graphics Interchange Format (*.GIF)|*.gif'
    Left = 408
    Top = 16
  end
  object ColorDialog1: TColorDialog
    Left = 376
    Top = 16
  end
end
