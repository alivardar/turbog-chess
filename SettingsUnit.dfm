object SettingsForm: TSettingsForm
  Left = 923
  Top = 147
  BorderStyle = bsDialog
  Caption = 'Settings'
  ClientHeight = 261
  ClientWidth = 427
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
  object Button1: TButton
    Left = 80
    Top = 227
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
  end
  object Button2: TButton
    Left = 272
    Top = 227
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 417
    Height = 209
    TabOrder = 2
    object Label3: TLabel
      Left = 26
      Top = 108
      Width = 57
      Height = 13
      Caption = 'Think depth'
    end
    object Label1: TLabel
      Left = 229
      Top = 108
      Width = 47
      Height = 13
      Caption = 'Piece set:'
    end
    object RadioGroup2: TRadioGroup
      Left = 223
      Top = 28
      Width = 178
      Height = 45
      Caption = 'Player2'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Human'
        'Computer')
      TabOrder = 0
    end
    object RadioGroup1: TRadioGroup
      Left = 23
      Top = 28
      Width = 178
      Height = 45
      Caption = 'Player 1'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Human'
        'Computer')
      TabOrder = 1
    end
    object SpinEdit1: TSpinEdit
      Left = 99
      Top = 99
      Width = 46
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 5
    end
    object ComboBox1: TComboBox
      Left = 296
      Top = 100
      Width = 105
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'Regular'
        'Classic'
        'Soft')
    end
    object CheckBoxWhiteOnTop: TCheckBox
      Left = 32
      Top = 160
      Width = 97
      Height = 17
      Caption = 'White on Top'
      TabOrder = 4
    end
    object CheckBoxLines: TCheckBox
      Left = 229
      Top = 160
      Width = 124
      Height = 17
      Caption = 'Show Board Lines'
      TabOrder = 5
    end
  end
end
