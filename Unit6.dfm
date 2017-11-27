object Form6: TForm6
  Left = 301
  Top = 230
  Width = 423
  Height = 279
  Caption = 'Insert email'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object sLabelFX1: TsLabelFX
    Left = 32
    Top = 32
    Width = 84
    Height = 21
    Caption = 'Insert your email'
  end
  object sButton1: TsButton
    Left = 40
    Top = 88
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'OK'
    TabOrder = 0
    OnClick = sButton1Click
    SkinData.CustomFont = True
    SkinData.SkinSection = 'BUTTON'
  end
  object sEdit1: TsEdit
    Left = 32
    Top = 56
    Width = 225
    Height = 21
    MaxLength = 50
    TabOrder = 1
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
  end
end
