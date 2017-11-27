object Form4: TForm4
  Left = 303
  Top = 266
  Width = 314
  Height = 156
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object sLabelFX1: TsLabelFX
    Left = 8
    Top = 8
    Width = 91
    Height = 21
    Caption = 'Change status for'
  end
  object sLabelFX2: TsLabelFX
    Left = 96
    Top = 8
    Width = 58
    Height = 21
    Caption = 'sLabelFX2'
  end
  object sButton1: TsButton
    Left = 8
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Master'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = sButton1Click
    SkinData.CustomFont = True
    SkinData.SkinSection = 'BUTTON'
  end
  object sButton2: TsButton
    Left = 8
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Admin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = sButton2Click
    SkinData.CustomFont = True
    SkinData.SkinSection = 'BUTTON'
  end
  object sButton3: TsButton
    Left = 8
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Player'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = sButton3Click
    SkinData.CustomFont = True
    SkinData.SkinSection = 'BUTTON'
  end
  object sSkinProvider1: TsSkinProvider
    SkinData.SkinSection = 'FORM'
    ShowAppIcon = False
    TitleButtons = <>
    Left = 200
    Top = 32
  end
end
