object Form3: TForm3
  Left = 2279
  Top = 582
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Modified RGB'
  ClientHeight = 315
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 121
    Height = 217
    Caption = ' Round Contrast '
    TabOrder = 0
    object Label1: TLabel
      Left = 27
      Top = 29
      Width = 33
      Height = 13
      Caption = 'Div R :'
    end
    object Label2: TLabel
      Left = 27
      Top = 53
      Width = 33
      Height = 13
      Caption = 'Div G :'
    end
    object Label3: TLabel
      Left = 27
      Top = 77
      Width = 32
      Height = 13
      Caption = 'Div B :'
    end
    object Label10: TLabel
      Left = 11
      Top = 141
      Width = 49
      Height = 13
      Caption = 'Round R :'
    end
    object Label11: TLabel
      Left = 11
      Top = 165
      Width = 49
      Height = 13
      Caption = 'Round G :'
    end
    object Label12: TLabel
      Left = 11
      Top = 189
      Width = 48
      Height = 13
      Caption = 'Round B :'
    end
    object SpinEdit1: TSpinEdit
      Left = 64
      Top = 24
      Width = 49
      Height = 22
      MaxLength = 3
      MaxValue = 255
      MinValue = 0
      TabOrder = 0
      Value = 100
      OnChange = SpinEdit1Change
    end
    object SpinEdit2: TSpinEdit
      Left = 64
      Top = 48
      Width = 49
      Height = 22
      MaxLength = 3
      MaxValue = 255
      MinValue = 0
      TabOrder = 1
      Value = 100
      OnChange = SpinEdit2Change
    end
    object SpinEdit3: TSpinEdit
      Left = 64
      Top = 72
      Width = 49
      Height = 22
      MaxLength = 3
      MaxValue = 255
      MinValue = 0
      TabOrder = 2
      Value = 100
      OnChange = SpinEdit3Change
    end
    object SpinEdit10: TSpinEdit
      Left = 64
      Top = 136
      Width = 49
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 127
      OnChange = SpinEdit10Change
    end
    object SpinEdit11: TSpinEdit
      Left = 64
      Top = 160
      Width = 49
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 127
      OnChange = SpinEdit11Change
    end
    object SpinEdit12: TSpinEdit
      Left = 64
      Top = 184
      Width = 49
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 5
      Value = 127
      OnChange = SpinEdit12Change
    end
  end
  object GroupBox2: TGroupBox
    Left = 136
    Top = 120
    Width = 105
    Height = 105
    Caption = ' Round Brightness '
    TabOrder = 1
    object Label7: TLabel
      Left = 31
      Top = 28
      Width = 14
      Height = 13
      Caption = 'R :'
    end
    object Label8: TLabel
      Left = 31
      Top = 52
      Width = 14
      Height = 13
      Caption = 'G :'
    end
    object Label9: TLabel
      Left = 32
      Top = 76
      Width = 13
      Height = 13
      Caption = 'B :'
    end
    object SpinEdit7: TSpinEdit
      Left = 48
      Top = 24
      Width = 49
      Height = 22
      MaxLength = 3
      MaxValue = 255
      MinValue = 0
      TabOrder = 0
      Value = 100
      OnChange = SpinEdit7Change
    end
    object SpinEdit8: TSpinEdit
      Left = 48
      Top = 48
      Width = 49
      Height = 22
      MaxLength = 3
      MaxValue = 255
      MinValue = 0
      TabOrder = 1
      Value = 100
      OnChange = SpinEdit8Change
    end
    object SpinEdit9: TSpinEdit
      Left = 48
      Top = 72
      Width = 49
      Height = 22
      MaxLength = 3
      MaxValue = 255
      MinValue = 0
      TabOrder = 2
      Value = 100
      OnChange = SpinEdit9Change
    end
  end
  object GroupBox3: TGroupBox
    Left = 136
    Top = 8
    Width = 105
    Height = 105
    Caption = ' Round RGB '
    TabOrder = 2
    object Label4: TLabel
      Left = 30
      Top = 28
      Width = 14
      Height = 13
      Caption = 'R :'
    end
    object Label5: TLabel
      Left = 30
      Top = 52
      Width = 14
      Height = 13
      Caption = 'G :'
    end
    object Label6: TLabel
      Left = 31
      Top = 76
      Width = 13
      Height = 13
      Caption = 'B :'
    end
    object SpinEdit4: TSpinEdit
      Left = 48
      Top = 24
      Width = 49
      Height = 22
      MaxLength = 3
      MaxValue = 255
      MinValue = 0
      TabOrder = 0
      Value = 152
      OnChange = SpinEdit4Change
    end
    object SpinEdit5: TSpinEdit
      Left = 48
      Top = 48
      Width = 49
      Height = 22
      MaxLength = 3
      MaxValue = 255
      MinValue = 0
      TabOrder = 1
      Value = 152
      OnChange = SpinEdit5Change
    end
    object SpinEdit6: TSpinEdit
      Left = 48
      Top = 72
      Width = 49
      Height = 22
      MaxLength = 3
      MaxValue = 255
      MinValue = 0
      TabOrder = 2
      Value = 152
      OnChange = SpinEdit6Change
    end
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Accept'
    TabOrder = 3
    OnClick = BitBtn2Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF4EB1456DC066FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF56B24F1CC63218
      B9218ECB8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF65B96019C33828E95829E34615B1139CD299FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77BF7117C54025EB6A1FDD4C20
      DC3F29E03613A709B8DFB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      70BD6A16C74823EF791AE05B33E86532E4531FD92E2ADE2C0FA004CEE9CCFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF75BF7015CA5220F3891CE56C27EC6B46D15776
      E88333E4491FD7222AD8211FA415E0F1DEFFFFFFFFFFFFFFFFFF6FC06916CF5D
      1CF99B17E87A26F07D43D36060B46036A92E87F59425DB2C23DA1D27D31F2EA7
      24FAFDF9FFFFFFFFFFFF4FB14829D66A1AF99E2EFA9845D7696FBD6AFFFFFFE0
      F1E02AAA2784F98A26D82325DC1E26CF1D2BA221FFFFFFFFFFFFFFFFFF54B04F
      30D76C4ADD7A77C072FFFFFFFFFFFFFFFFFFBFE2BF40BA3E85FC821BD21228DC
      2021C8194AAF42FFFFFFFFFFFFFFFFFF63BA584DB044FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFADD9AD49C24783FF7E1BD2122AE0231FC41860B959FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF98CF985ACB5281FF
      7C23DC1D1CBF1454B44CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF6FBC6F6CDC663AC63566BA66FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60BB
      5E8ECE89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 296
    Width = 249
    Height = 19
    Panels = <>
    SimpleText = 'ready..'
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 234
    Width = 66
    Height = 17
    Caption = 'Stay Top'
    TabOrder = 5
    OnClick = CheckBox1Click
  end
  object BitBtn3: TBitBtn
    Left = 8
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Default'
    TabOrder = 6
    OnClick = BitBtn3Click
    Glyph.Data = {
      06030000424D060300000000000036000000280000000F0000000F0000000100
      180000000000D0020000C30E0000C30E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFF9ECE9EFD3CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFDFCFDF0D5CEF1B9A0E1A58BE2
      E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      F2E5E3ECBDAAF7C09FFFE0C1E9B99EC1A29AF7F6F6FEFCFCFEFEFEFFFFFFFFFF
      FFFFFFFFFFFFFF000000FAF5F5F0CABDF1B797FCCDA9FFDBBAFFDBBEFCD8BFF2
      CBB5F5CEBBEDC1B2E2C9C1F0DDD8F9FAFAFFFFFFFFFFFF000000EEB59FFBC69F
      FFD3AEFFD4B3FFD7B9FFDABFFFE1C8FFE7D4FFECDBFFF5EAFFF4EDF0D4CCE0BC
      B2F1EAE9FFFFFF000000E19376FEC59EFFD8B3FFD6B3FFD8B8FFDBC0FFE1C9FF
      E7D5FFEEDEFFF3E9FFFBF7FFFFFFFBDFCBDAAA95F0EEEE000000D59E90DF5D37
      F7A985FFD5B3FFDCBEFFDDC2FED9C0FDD5BBFEDECBFEE9DCFEF6F2FFFFFDFFEB
      D3F0AD86D3B3A9000000F2F0EFCB9283D26241F1906AFDC8A8FFE3CAFDCEB2F9
      B48BF7AD85FAAE89FDB99BFDCEB9FED9BDF8AC83C89E91000000FFFFFFF9FEFF
      DACAC5CE856FE78762FEBE9CF6BB9DB88B7BBFAEA7C69D8FDB9277F2946FFCA8
      83F4956EC59C8F000000FFFFFFFFFFFFFFFFFFEFF2F3D2B0A6DD9273E8A27BC2
      A59CFEFFFFFDFFFFD8CCCBD46948F28760F68B65C69E93000000FFFFFFFFFFFF
      FFFFFFFFFFFFFDFFFFE4DDDBC3A196D0C9C6FFFFFFF8E4DEE8A289DE6742E46C
      48F68E68C8A297000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFF
      FFFFF3F2F3E6AD93EE8F66E2724EF9916ADB7F5FC0B0AB000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF0E3A488F9976FF99B75D880
      61AF8F86EDF1F2000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF9FDFEE3AE9BD4886AB7897ABEB3B1F0F4F5FFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEAEAD2D1D2EFF4F5FFFF
      FFFFFFFFFFFFFF000000}
  end
  object CheckBox2: TCheckBox
    Left = 88
    Top = 234
    Width = 41
    Height = 17
    Caption = 'Trz'
    TabOrder = 7
    OnClick = CheckBox2Click
  end
  object ComboBox1: TComboBox
    Left = 136
    Top = 232
    Width = 105
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 3
    TabOrder = 8
    Text = 'Set'
    OnChange = ComboBox1Change
    Items.Strings = (
      'RGB Colored'
      'Gray'
      'Uni Color'
      'Set')
  end
end
