object Form1: TForm1
  Left = 30
  Top = 47
  Width = 994
  Height = 691
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel2: TsPanel
    Left = 0
    Top = 0
    Width = 978
    Height = 49
    Align = alTop
    TabOrder = 1
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image2: TImage
      Left = 1
      Top = 1
      Width = 520
      Height = 32
    end
    object Image_arrow1: TImage
      Left = 16
      Top = 8
      Width = 30
      Height = 30
      Cursor = crHandPoint
      Visible = False
    end
    object Image_arrow2: TImage
      Left = 48
      Top = 8
      Width = 30
      Height = 30
      Cursor = crHandPoint
      Visible = False
    end
    object sSpeedButton2: TsSpeedButton
      Left = 104
      Top = 16
      Width = 89
      Height = 22
      Cursor = crHandPoint
      Caption = 'Play'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ButtonStyle = tbsDropDown
      SkinData.CustomFont = True
      SkinData.SkinSection = 'SPEEDBUTTON'
      DropdownMenu = PopupMenu1
    end
    object sSpeedButton3: TsSpeedButton
      Left = 200
      Top = 16
      Width = 89
      Height = 22
      Cursor = crHandPoint
      Caption = 'Stats'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ButtonStyle = tbsDropDown
      SkinData.CustomFont = True
      SkinData.SkinSection = 'SPEEDBUTTON'
      DropdownMenu = PopupMenu2
    end
    object sLabelFX92: TsLabelFX
      Left = 584
      Top = 1
      Width = 131
      Height = 21
      Caption = 'Registered players: 10000'
    end
    object sLabelFX93: TsLabelFX
      Left = 584
      Top = 16
      Width = 64
      Height = 21
      Caption = 'sLabelFX93'
    end
    object sLabelFX94: TsLabelFX
      Left = 584
      Top = 31
      Width = 64
      Height = 21
      Caption = 'sLabelFX94'
    end
    object sSpeedButton1: TsSpeedButton
      Left = 296
      Top = 16
      Width = 89
      Height = 22
      Cursor = crHandPoint
      Caption = 'Misc'
      ButtonStyle = tbsDropDown
      SkinData.CustomFont = True
      SkinData.SkinSection = 'SPEEDBUTTON'
      DropdownMenu = PopupMenu3
    end
    object sEdit2: TsEdit
      Left = 720
      Top = 16
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      TabOrder = 0
      Text = 'Search...'
      OnClick = sEdit2Click
      OnKeyDown = sEdit2KeyDown
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
    object sButton10: TsButton
      Left = 848
      Top = 16
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Adv. Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = sButton10Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton429: TsButton
      Left = 488
      Top = 16
      Width = 89
      Height = 22
      Cursor = crHandPoint
      Caption = 'Buy vip'
      TabOrder = 2
      TabStop = False
      Visible = False
      OnClick = sButton429Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel3: TsPanel
    Left = 0
    Top = 500
    Width = 978
    Height = 153
    Align = alBottom
    TabOrder = 2
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image4: TImage
      Left = 1
      Top = 1
      Width = 904
      Height = 144
    end
    object sEdit1: TsEdit
      Left = 160
      Top = 124
      Width = 737
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 120
      ParentFont = False
      TabOrder = 0
      OnKeyDown = sEdit1KeyDown
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
    object sComboBox2: TsComboBox
      Left = 8
      Top = 124
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 1
      Text = 'sComboBox2'
      Visible = False
    end
    object sComboBox1: TsComboBox
      Left = 8
      Top = 98
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 2
      Text = 'To ownteam'
      OnChange = sComboBox1Change
      Items.Strings = (
        'To person'
        'To ownteam'
        'To team'
        'Public')
    end
    object sButton3: TsButton
      Left = 8
      Top = 70
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Reply'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = sButton3Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sRichEdit1: TsRichEdit
      Left = 160
      Top = 8
      Width = 737
      Height = 113
      ScrollBars = ssVertical
      TabOrder = 4
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
    end
    object sButton11: TsButton
      Left = 8
      Top = 40
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Chat settings'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = False
      OnClick = sButton11Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton32: TsButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Public chat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnClick = sButton32Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel4: TsPanel
    Left = 632
    Top = 392
    Width = 113
    Height = 17
    TabOrder = 3
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image5: TImage
      Left = 0
      Top = 0
      Width = 65
      Height = 17
    end
    object Label2: TLabel
      Left = 0
      Top = 0
      Width = 57
      Height = 13
      Caption = 'player panel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabelFX8: TsLabelFX
      Left = 16
      Top = 16
      Width = 125
      Height = 37
      Caption = 'sLabelFX8'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object career_team11: TsLabelFX
      Left = 296
      Top = 96
      Width = 55
      Height = 21
      Caption = 'Old teams'
    end
    object sLabelFX11: TsLabelFX
      Left = 296
      Top = 64
      Width = 35
      Height = 21
      Caption = 'Team'
    end
    object career_team10: TsLabelFX
      Left = 296
      Top = 112
      Width = 79
      Height = 21
      Cursor = crHandPoint
      Caption = 'career_team10'
      OnClick = career_team10Click
    end
    object career_team9: TsLabelFX
      Left = 296
      Top = 128
      Width = 73
      Height = 21
      Cursor = crHandPoint
      Caption = 'career_team9'
      OnClick = career_team9Click
    end
    object career_team8: TsLabelFX
      Left = 296
      Top = 144
      Width = 73
      Height = 21
      Cursor = crHandPoint
      Caption = 'career_team8'
      OnClick = career_team8Click
    end
    object career_team7: TsLabelFX
      Left = 296
      Top = 160
      Width = 73
      Height = 21
      Cursor = crHandPoint
      Caption = 'career_team7'
      OnClick = career_team7Click
    end
    object career_team6: TsLabelFX
      Left = 296
      Top = 176
      Width = 73
      Height = 21
      Cursor = crHandPoint
      Caption = 'career_team6'
      OnClick = career_team6Click
    end
    object career_team5: TsLabelFX
      Left = 296
      Top = 192
      Width = 73
      Height = 21
      Cursor = crHandPoint
      Caption = 'career_team5'
      OnClick = career_team5Click
    end
    object career_team4: TsLabelFX
      Left = 296
      Top = 208
      Width = 73
      Height = 21
      Cursor = crHandPoint
      Caption = 'career_team4'
      OnClick = career_team4Click
    end
    object career_team3: TsLabelFX
      Left = 296
      Top = 224
      Width = 73
      Height = 21
      Cursor = crHandPoint
      Caption = 'career_team3'
      OnClick = career_team3Click
    end
    object career_team2: TsLabelFX
      Left = 296
      Top = 240
      Width = 73
      Height = 21
      Cursor = crHandPoint
      Caption = 'career_team2'
      OnClick = career_team2Click
    end
    object career_team1: TsLabelFX
      Left = 296
      Top = 256
      Width = 73
      Height = 21
      Cursor = crHandPoint
      Caption = 'career_team1'
      OnClick = career_team1Click
    end
    object sLabelFX142: TsLabelFX
      Left = 296
      Top = 296
      Width = 46
      Height = 21
      Caption = 'Practise'
      Visible = False
    end
    object sLabelFX143: TsLabelFX
      Left = 296
      Top = 328
      Width = 66
      Height = 21
      Caption = 'International'
      Visible = False
    end
    object sLabelFX144: TsLabelFX
      Left = 416
      Top = 64
      Width = 32
      Height = 21
      Caption = 'Apps'
    end
    object sLabelFX145: TsLabelFX
      Left = 456
      Top = 64
      Width = 23
      Height = 21
      Caption = 'Gls'
    end
    object sLabelFX146: TsLabelFX
      Left = 496
      Top = 64
      Width = 28
      Height = 21
      Caption = 'Asts'
    end
    object sLabelFX147: TsLabelFX
      Left = 536
      Top = 64
      Width = 31
      Height = 21
      Caption = 'Pass'
    end
    object sLabelFX148: TsLabelFX
      Left = 568
      Top = 64
      Width = 27
      Height = 21
      Caption = 'Tck'
    end
    object sLabelFX149: TsLabelFX
      Left = 600
      Top = 64
      Width = 34
      Height = 21
      Caption = 'Head'
    end
    object car_ap11: TsLabelFX
      Left = 416
      Top = 96
      Width = 32
      Height = 21
      Caption = '2700'
    end
    object car_ap10: TsLabelFX
      Left = 416
      Top = 112
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_ap9: TsLabelFX
      Left = 416
      Top = 128
      Width = 20
      Height = 21
      Caption = '15'
    end
    object car_ap8: TsLabelFX
      Left = 416
      Top = 144
      Width = 26
      Height = 21
      Caption = '912'
    end
    object car_ap7: TsLabelFX
      Left = 416
      Top = 160
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_ap6: TsLabelFX
      Left = 416
      Top = 176
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_ap5: TsLabelFX
      Left = 416
      Top = 192
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_ap4: TsLabelFX
      Left = 416
      Top = 208
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_ap3: TsLabelFX
      Left = 416
      Top = 224
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_ap2: TsLabelFX
      Left = 416
      Top = 240
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_ap1: TsLabelFX
      Left = 416
      Top = 256
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_sta6: TsLabelFX
      Left = 416
      Top = 328
      Width = 14
      Height = 21
      Caption = '0'
      Visible = False
    end
    object car_gl11: TsLabelFX
      Left = 456
      Top = 96
      Width = 38
      Height = 21
      Caption = '11111'
    end
    object car_gl10: TsLabelFX
      Left = 456
      Top = 112
      Width = 38
      Height = 21
      Caption = '77777'
    end
    object car_gl9: TsLabelFX
      Left = 456
      Top = 128
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_gl8: TsLabelFX
      Left = 456
      Top = 144
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_gl7: TsLabelFX
      Left = 456
      Top = 160
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_gl6: TsLabelFX
      Left = 456
      Top = 176
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_gl5: TsLabelFX
      Left = 456
      Top = 192
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_gl4: TsLabelFX
      Left = 456
      Top = 208
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_gl3: TsLabelFX
      Left = 456
      Top = 224
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_gl2: TsLabelFX
      Left = 456
      Top = 240
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_gl1: TsLabelFX
      Left = 456
      Top = 256
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_sta1: TsLabelFX
      Left = 456
      Top = 296
      Width = 14
      Height = 21
      Caption = '0'
      Visible = False
    end
    object car_sta7: TsLabelFX
      Left = 456
      Top = 328
      Width = 14
      Height = 21
      Caption = '0'
      Visible = False
    end
    object car_as11: TsLabelFX
      Left = 496
      Top = 96
      Width = 38
      Height = 21
      Caption = '77777'
    end
    object car_as10: TsLabelFX
      Left = 496
      Top = 112
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_as9: TsLabelFX
      Left = 496
      Top = 128
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_as8: TsLabelFX
      Left = 496
      Top = 144
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_as7: TsLabelFX
      Left = 496
      Top = 160
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_as6: TsLabelFX
      Left = 496
      Top = 176
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_as5: TsLabelFX
      Left = 496
      Top = 192
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_as4: TsLabelFX
      Left = 496
      Top = 208
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_as3: TsLabelFX
      Left = 496
      Top = 224
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_as2: TsLabelFX
      Left = 496
      Top = 240
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_as1: TsLabelFX
      Left = 496
      Top = 256
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_sta2: TsLabelFX
      Left = 496
      Top = 296
      Width = 14
      Height = 21
      Caption = '0'
      Visible = False
    end
    object car_sta8: TsLabelFX
      Left = 496
      Top = 328
      Width = 14
      Height = 21
      Caption = '0'
      Visible = False
    end
    object car_pa10: TsLabelFX
      Left = 536
      Top = 112
      Width = 20
      Height = 21
      Caption = '77'
    end
    object car_pa9: TsLabelFX
      Left = 536
      Top = 128
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_pa8: TsLabelFX
      Left = 536
      Top = 144
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_pa7: TsLabelFX
      Left = 536
      Top = 160
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_pa6: TsLabelFX
      Left = 536
      Top = 176
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_pa5: TsLabelFX
      Left = 536
      Top = 192
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_pa4: TsLabelFX
      Left = 536
      Top = 208
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_pa3: TsLabelFX
      Left = 536
      Top = 224
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_pa2: TsLabelFX
      Left = 536
      Top = 240
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_pa1: TsLabelFX
      Left = 536
      Top = 256
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_pa11: TsLabelFX
      Left = 536
      Top = 96
      Width = 26
      Height = 21
      Caption = '100'
    end
    object car_sta3: TsLabelFX
      Left = 536
      Top = 296
      Width = 14
      Height = 21
      Caption = '0'
      Visible = False
    end
    object car_sta9: TsLabelFX
      Left = 536
      Top = 328
      Width = 14
      Height = 21
      Caption = '0'
      Visible = False
    end
    object car_tc11: TsLabelFX
      Left = 568
      Top = 96
      Width = 26
      Height = 21
      Caption = '100'
    end
    object car_tc10: TsLabelFX
      Left = 568
      Top = 112
      Width = 20
      Height = 21
      Caption = '77'
    end
    object car_tc9: TsLabelFX
      Left = 568
      Top = 128
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_tc8: TsLabelFX
      Left = 568
      Top = 144
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_tc7: TsLabelFX
      Left = 568
      Top = 160
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_tc6: TsLabelFX
      Left = 568
      Top = 176
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_tc5: TsLabelFX
      Left = 568
      Top = 192
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_tc4: TsLabelFX
      Left = 568
      Top = 208
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_tc3: TsLabelFX
      Left = 568
      Top = 224
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_tc2: TsLabelFX
      Left = 568
      Top = 240
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_tc1: TsLabelFX
      Left = 568
      Top = 256
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_sta4: TsLabelFX
      Left = 568
      Top = 296
      Width = 14
      Height = 21
      Caption = '0'
      Visible = False
    end
    object car_sta10: TsLabelFX
      Left = 568
      Top = 328
      Width = 14
      Height = 21
      Caption = '0'
      Visible = False
    end
    object car_he11: TsLabelFX
      Left = 600
      Top = 96
      Width = 26
      Height = 21
      Caption = '100'
    end
    object car_he10: TsLabelFX
      Left = 600
      Top = 112
      Width = 20
      Height = 21
      Caption = '77'
    end
    object car_he9: TsLabelFX
      Left = 600
      Top = 128
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_he8: TsLabelFX
      Left = 600
      Top = 144
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_he7: TsLabelFX
      Left = 600
      Top = 160
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_he6: TsLabelFX
      Left = 600
      Top = 176
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_he5: TsLabelFX
      Left = 600
      Top = 192
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_he4: TsLabelFX
      Left = 600
      Top = 208
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_he3: TsLabelFX
      Left = 600
      Top = 224
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_he2: TsLabelFX
      Left = 600
      Top = 240
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_he1: TsLabelFX
      Left = 600
      Top = 256
      Width = 14
      Height = 21
      Caption = '0'
    end
    object car_sta5: TsLabelFX
      Left = 600
      Top = 296
      Width = 14
      Height = 21
      Caption = '0'
      Visible = False
    end
    object car_sta11: TsLabelFX
      Left = 600
      Top = 328
      Width = 14
      Height = 21
      Caption = '0'
      Visible = False
    end
    object Image17: TImage
      Left = 8
      Top = 56
      Width = 120
      Height = 120
    end
    object Image18: TImage
      Left = 136
      Top = 58
      Width = 20
      Height = 15
      AutoSize = True
      Transparent = True
    end
    object sLabelFX133: TsLabelFX
      Left = 8
      Top = 192
      Width = 38
      Height = 21
      Caption = 'Status'
    end
    object sLabelFX135: TsLabelFX
      Left = 8
      Top = 208
      Width = 45
      Height = 21
      Caption = 'Position'
    end
    object sLabelFX136: TsLabelFX
      Left = 8
      Top = 224
      Width = 27
      Height = 21
      Caption = 'LFT'
    end
    object sLabelFX137: TsLabelFX
      Left = 8
      Top = 240
      Width = 45
      Height = 21
      Caption = 'Created'
    end
    object sLabelFX138: TsLabelFX
      Left = 8
      Top = 256
      Width = 53
      Height = 21
      Caption = 'Last login'
    end
    object qwa1: TsLabelFX
      Left = 80
      Top = 192
      Width = 34
      Height = 21
      Caption = 'qwa1'
    end
    object qwa2: TsLabelFX
      Left = 80
      Top = 208
      Width = 34
      Height = 21
      Caption = 'qwa2'
    end
    object qwa3: TsLabelFX
      Left = 80
      Top = 224
      Width = 34
      Height = 21
      Caption = 'qwa3'
    end
    object qwa4: TsLabelFX
      Left = 80
      Top = 240
      Width = 34
      Height = 21
      Caption = 'qwa4'
    end
    object qwa5: TsLabelFX
      Left = 80
      Top = 256
      Width = 34
      Height = 21
      Caption = 'qwa5'
    end
    object sLabelFX118: TsLabelFX
      Left = 8
      Top = 272
      Width = 51
      Height = 21
      Caption = 'Vip index'
    end
    object qwa6: TsLabelFX
      Left = 80
      Top = 272
      Width = 34
      Height = 21
      Caption = 'qwa6'
    end
    object sLabelFX179: TsLabelFX
      Left = 344
      Top = 384
      Width = 109
      Height = 21
      Caption = 'Players from same IP:'
    end
    object sLabelFX180: TsLabelFX
      Left = 344
      Top = 400
      Width = 70
      Height = 21
      Caption = 'sLabelFX180'
    end
    object sLabelFX134: TsLabelFX
      Left = 8
      Top = 176
      Width = 70
      Height = 21
      Caption = 'sLabelFX134'
      Kind.KindType = ktCustom
      Kind.Color = clFuchsia
    end
    object sButton12: TsButton
      Left = 256
      Top = 368
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Invite'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = sButton12Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sMemo1: TsMemo
      Left = 16
      Top = 296
      Width = 233
      Height = 137
      TabOrder = 1
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
    end
    object sButton38: TsButton
      Left = 256
      Top = 400
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Send msg'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = sButton38Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel5: TsPanel
    Left = 840
    Top = 248
    Width = 105
    Height = 17
    TabOrder = 4
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image6: TImage
      Left = 0
      Top = 0
      Width = 73
      Height = 17
    end
    object Label3: TLabel
      Left = 0
      Top = 0
      Width = 51
      Height = 13
      Caption = 'login panel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabelFX12: TsLabelFX
      Left = 24
      Top = 22
      Width = 56
      Height = 21
      Caption = 'Username'
    end
    object sLabelFX13: TsLabelFX
      Left = 24
      Top = 62
      Width = 54
      Height = 21
      Caption = 'Password'
    end
    object sLabelFX15: TsLabelFX
      Left = 24
      Top = 102
      Width = 33
      Height = 21
      Caption = 'Email'
    end
    object sEdit3: TsEdit
      Left = 24
      Top = 40
      Width = 169
      Height = 21
      MaxLength = 15
      TabOrder = 0
      OnKeyPress = sEdit3KeyPress
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
    object sEdit4: TsEdit
      Left = 24
      Top = 80
      Width = 169
      Height = 21
      MaxLength = 15
      PasswordChar = '*'
      TabOrder = 1
      OnKeyPress = sEdit4KeyPress
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
    object sEdit5: TsEdit
      Left = 24
      Top = 120
      Width = 169
      Height = 21
      MaxLength = 50
      TabOrder = 2
      OnKeyPress = sEdit5KeyPress
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
    object sButton5: TsButton
      Left = 32
      Top = 152
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'sButton5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = sButton5Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sCheckBox7: TsCheckBox
      Left = 24
      Top = 200
      Width = 93
      Height = 17
      Caption = 'Save password'
      Checked = True
      State = cbChecked
      TabOrder = 4
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
  end
  object sButton1: TsButton
    Left = 24
    Top = 216
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
    OnClick = sButton1Click
    SkinData.CustomFont = True
    SkinData.SkinSection = 'BUTTON'
  end
  object sButton2: TsButton
    Left = 24
    Top = 248
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Register'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TabStop = False
    Visible = False
    OnClick = sButton2Click
    SkinData.CustomFont = True
    SkinData.SkinSection = 'BUTTON'
  end
  object sPanel6: TsPanel
    Left = 640
    Top = 304
    Width = 129
    Height = 17
    TabOrder = 6
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image3: TImage
      Left = 0
      Top = 0
      Width = 97
      Height = 17
    end
    object Label4: TLabel
      Left = 0
      Top = 0
      Width = 85
      Height = 13
      Caption = 'create team panel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabelFX16: TsLabelFX
      Left = 32
      Top = 48
      Width = 64
      Height = 21
      Caption = 'Team name'
    end
    object sEdit6: TsEdit
      Left = 32
      Top = 72
      Width = 121
      Height = 21
      MaxLength = 20
      TabOrder = 0
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
    object sButton6: TsButton
      Left = 32
      Top = 216
      Width = 75
      Height = 25
      Cursor = crArrow
      Caption = 'Create'
      TabOrder = 1
      OnClick = sButton6Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton7: TsButton
      Left = 112
      Top = 216
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = sButton7Click
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel7: TsPanel
    Left = 638
    Top = 360
    Width = 131
    Height = 17
    TabOrder = 7
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image7: TImage
      Left = 0
      Top = 0
      Width = 89
      Height = 17
    end
    object Label5: TLabel
      Left = 0
      Top = 0
      Width = 65
      Height = 13
      Caption = 'settings panel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabelFX103: TsLabelFX
      Left = 24
      Top = 64
      Width = 41
      Height = 21
      Caption = 'Control'
      Visible = False
    end
    object sLabelFX108: TsLabelFX
      Left = 344
      Top = 32
      Width = 89
      Height = 21
      Caption = 'Player movement'
    end
    object sLabelFX114: TsLabelFX
      Left = 288
      Top = 136
      Width = 50
      Height = 21
      Caption = 'Shooting'
    end
    object sLabelFX115: TsLabelFX
      Left = 288
      Top = 168
      Width = 48
      Height = 21
      Caption = 'Crossing'
    end
    object sLabelFX116: TsLabelFX
      Left = 288
      Top = 200
      Width = 60
      Height = 21
      Caption = 'Slidetackle'
    end
    object sLabelFX117: TsLabelFX
      Left = 288
      Top = 232
      Width = 52
      Height = 21
      Caption = 'Autopass'
    end
    object sComboBox3: TsComboBox
      Left = 24
      Top = 88
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 0
      Text = 'Keyboard'
      Visible = False
      OnChange = sComboBox3Change
      Items.Strings = (
        'Keyboard'
        'Mouse')
    end
    object sButton15: TsButton
      Left = 272
      Top = 88
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'A'
      TabOrder = 1
      OnClick = sButton15Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton16: TsButton
      Left = 432
      Top = 88
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'D'
      TabOrder = 2
      OnClick = sButton16Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton17: TsButton
      Left = 352
      Top = 56
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'W'
      TabOrder = 3
      OnClick = sButton17Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton18: TsButton
      Left = 352
      Top = 88
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'S'
      TabOrder = 4
      OnClick = sButton18Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sComboBox16: TsComboBox
      Left = 296
      Top = 312
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 5
      Text = 'Left mouse button'
      Visible = False
      Items.Strings = (
        'Left mouse button'
        'Middle mouse button'
        'Right mouse button'
        'Key')
    end
    object sComboBox17: TsComboBox
      Left = 296
      Top = 336
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 6
      Text = 'Right mouse button'
      Visible = False
      Items.Strings = (
        'Left mouse button'
        'Middle mouse button'
        'Right mouse button'
        'Key')
    end
    object sComboBox18: TsComboBox
      Left = 296
      Top = 360
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 7
      Text = 'Key'
      Visible = False
      Items.Strings = (
        'Left mouse button'
        'Middle mouse button'
        'Right mouse button'
        'Key')
    end
    object sComboBox20: TsComboBox
      Left = 296
      Top = 384
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 8
      Text = 'Key'
      Visible = False
      Items.Strings = (
        'Left mouse button'
        'Middle mouse button'
        'Right mouse button'
        'Key')
    end
    object sButton19: TsButton
      Left = 352
      Top = 136
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'sButton19'
      TabOrder = 9
      OnClick = sButton19Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton20: TsButton
      Left = 352
      Top = 168
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'sButton20'
      TabOrder = 10
      OnClick = sButton20Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton21: TsButton
      Left = 352
      Top = 200
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'sButton21'
      TabOrder = 11
      OnClick = sButton21Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton23: TsButton
      Left = 352
      Top = 232
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'sButton23'
      TabOrder = 12
      OnClick = sButton23Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sCheckBox3: TsCheckBox
      Left = 24
      Top = 128
      Width = 56
      Height = 17
      Caption = 'Sounds'
      Checked = True
      State = cbChecked
      TabOrder = 13
      OnClick = sCheckBox3Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox6: TsCheckBox
      Left = 24
      Top = 152
      Width = 80
      Height = 17
      Caption = 'Slow moving'
      Checked = True
      State = cbChecked
      TabOrder = 14
      OnClick = sCheckBox6Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
  end
  object sPanel8: TsPanel
    Left = 792
    Top = 224
    Width = 121
    Height = 17
    TabOrder = 8
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Label6: TLabel
      Left = 0
      Top = 0
      Width = 82
      Height = 13
      Caption = 'adv search panel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabelFX177: TsLabelFX
      Left = 88
      Top = 24
      Width = 42
      Height = 21
      Caption = 'Players'
    end
    object sLabelFX178: TsLabelFX
      Left = 472
      Top = 24
      Width = 40
      Height = 21
      Caption = 'Teams'
    end
    object sLabelFX184: TsLabelFX
      Left = 24
      Top = 304
      Width = 84
      Height = 21
      Caption = 'Search by index'
    end
    object sLabelFX185: TsLabelFX
      Left = 408
      Top = 304
      Width = 84
      Height = 21
      Caption = 'Search by index'
    end
    object sComboBox6: TsComboBox
      Left = 160
      Top = 56
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 0
      TabStop = False
      Text = 'Afghanistan'
      Items.Strings = (
        'Afghanistan'
        'Albania'
        'Algeria'
        'American samoa'
        'Andorra'
        'Angola'
        'Anguilla'
        'Antarctica'
        'Antigua and barbuda'
        'Argentina'
        'Armenia'
        'Aruba'
        'Australia'
        'Austria'
        'Azerbaijan'
        'Bahamas'
        'Bahrain'
        'Bangladesh'
        'Barbados'
        'Belarus'
        'Belgium'
        'Belize'
        'Benin'
        'Bermuda'
        'Bhutan'
        'Bolivia'
        'Bosnia and herzegovina'
        'Botswana'
        'Brazil'
        'British indian ocean territory'
        'Brunei'
        'Bulgaria'
        'Burkina faso'
        'Burundi'
        'Cambodia'
        'Cameroon'
        'Canada'
        'Cape verde'
        'Cayman islands'
        'Central african republic'
        'Chad'
        'Chile'
        'China'
        'Colombia'
        'Comoros'
        'Congo dem rep'
        'Congo, republic of'
        'Cook islands'
        'Costa rica'
        'Croatia'
        'Cuba'
        'Cyprus'
        'Czech republic'
        'Czechoslovakia'
        'Denmark'
        'Djibouti'
        'Dominica'
        'Dominican republic'
        'Ecuador'
        'Egypt'
        'El salvador'
        'England'
        'Equatorial guinea'
        'Eritrea'
        'Estonia'
        'Ethiopia'
        'Faeroe islands'
        'Falkland islands'
        'Fiji'
        'Finland'
        'France'
        'French guiana'
        'French polynesia'
        'Gabon'
        'Gambia, the'
        'Georgia'
        'Germany'
        'Ghana'
        'Gibraltar'
        'Greece'
        'Greenland'
        'Grenada'
        'Guadeloupe'
        'Guam'
        'Guatemala'
        'Guinea'
        'Guinea-bissau'
        'Guyana'
        'Haiti'
        'Honduras'
        'Hong kong'
        'Hungary'
        'Iceland'
        'India'
        'Indonesia'
        'Iran'
        'Iraq'
        'Ireland'
        'Israel'
        'Italy'
        'Ivory coast'
        'Jamaica'
        'Japan'
        'Jersey'
        'Jordan'
        'Kazakhstan'
        'Kenya'
        'Kiribati'
        'Korea rep'
        'Kuwait'
        'Kyrgyzstan'
        'Lao people'#39's democratic republic'
        'Latvia'
        'Lebanon'
        'Lesotho'
        'Liberia'
        'Libya'
        'Liechtenstein'
        'Lithuania'
        'Luxembourg'
        'Macao'
        'Macedonia'
        'Madagascar'
        'Malawi'
        'Malaysia'
        'Maldives'
        'Mali'
        'Malta'
        'Martinique'
        'Mauritania'
        'Mauritius'
        'Mayotte'
        'Mexico'
        'Micronesia'
        'Moldova'
        'Monaco'
        'Mongolia'
        'Montenegro'
        'Montserrat'
        'Morocco'
        'Mozambique'
        'Myanmar'
        'Namibia'
        'Nauru'
        'Nepal'
        'Netherlands'
        'Netherlands antilles'
        'New caledonia'
        'New zealand'
        'Nicaragua'
        'Niger'
        'Nigeria'
        'Niue'
        'Norfolk island'
        'Northern mariana islands'
        'Norway'
        'Oman'
        'Pakistan'
        'Palau'
        'Palestinian'
        'Panama'
        'Papua new guinea'
        'Paraguay'
        'Peru'
        'Philippines'
        'Poland'
        'Portugal'
        'Puerto rico'
        'Qatar'
        'Reunion'
        'Romania'
        'Russian'
        'Rwanda'
        'Saint kitts and nevis'
        'Saint lucia'
        'Saint vincent and the grenadines'
        'Samoa'
        'San marino'
        'Sao tome and principe'
        'Saudi arabia'
        'Scotland'
        'Senegal'
        'Serbia'
        'Seychelles'
        'Sierra leone'
        'Singapore'
        'Slovakia'
        'Slovenia'
        'Solomon islands'
        'Somalia'
        'South africa'
        'Spain'
        'Sri lanka'
        'Sudan'
        'Suriname'
        'Swaziland'
        'Sweden'
        'Switzerland'
        'Syrian arab republic'
        'Taiwan'
        'Tajikistan'
        'Tanzania'
        'Thailand'
        'Timor-leste'
        'Togo'
        'Tokelau'
        'Tonga'
        'Trinidad and tobago'
        'Tunisia'
        'Turkey'
        'Turkmenistan'
        'Tuvalu'
        'Uganda'
        'Ukraine'
        'United arab emirates'
        'United kingdom'
        'United states'
        'Uruguay'
        'Uzbekistan'
        'Wales'
        'Vanuatu'
        'Vatican city'
        'Venezuela'
        'Viet nam'
        'Virgin islands, british'
        'Virgin islands, u.s.'
        'Yemen'
        'Zambia'
        'Zimbabwe')
    end
    object sCheckBox1: TsCheckBox
      Left = 24
      Top = 56
      Width = 69
      Height = 17
      Cursor = crHandPoint
      Caption = 'Nationality'
      TabOrder = 1
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox2: TsCheckBox
      Left = 24
      Top = 152
      Width = 99
      Height = 17
      Cursor = crHandPoint
      Caption = 'Looking for team'
      TabOrder = 2
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox9: TsCheckBox
      Left = 408
      Top = 56
      Width = 148
      Height = 17
      Cursor = crHandPoint
      Caption = 'Allows joining without invite'
      TabOrder = 3
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox10: TsCheckBox
      Left = 24
      Top = 184
      Width = 133
      Height = 17
      Cursor = crHandPoint
      Caption = 'Have been online today'
      TabOrder = 4
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox11: TsCheckBox
      Left = 24
      Top = 88
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Position'
      TabOrder = 5
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox12: TsCheckBox
      Left = 24
      Top = 120
      Width = 132
      Height = 17
      Cursor = crHandPoint
      Caption = 'Played matches at least'
      TabOrder = 6
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sComboBox9: TsComboBox
      Left = 160
      Top = 88
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 7
      Text = 'Def'
      Items.Strings = (
        'Defending'
        'Attacking')
    end
    object sEdit20: TsEdit
      Left = 160
      Top = 120
      Width = 145
      Height = 21
      TabOrder = 8
      OnKeyPress = sEdit20KeyPress
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
    object sButton49: TsButton
      Left = 24
      Top = 248
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Search'
      TabOrder = 9
      OnClick = sButton49Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton50: TsButton
      Left = 408
      Top = 152
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Search'
      TabOrder = 10
      OnClick = sButton50Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sCheckBox13: TsCheckBox
      Left = 24
      Top = 216
      Width = 91
      Height = 17
      Cursor = crHandPoint
      Caption = 'Is without team'
      TabOrder = 11
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox14: TsCheckBox
      Left = 408
      Top = 88
      Width = 61
      Height = 17
      Cursor = crHandPoint
      Caption = 'Location'
      TabOrder = 12
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sComboBox11: TsComboBox
      Left = 576
      Top = 80
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 13
      Text = 'Europe'
      Items.Strings = (
        'Europe'
        'South america')
    end
    object sCheckBox15: TsCheckBox
      Left = 408
      Top = 120
      Width = 127
      Height = 17
      Cursor = crHandPoint
      Caption = 'Has been active today'
      TabOrder = 14
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sEdit21: TsEdit
      Left = 24
      Top = 328
      Width = 121
      Height = 21
      TabOrder = 15
      OnKeyPress = sEdit21KeyPress
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
    object sButton51: TsButton
      Left = 24
      Top = 360
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Search'
      TabOrder = 16
      OnClick = sButton51Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sEdit22: TsEdit
      Left = 408
      Top = 328
      Width = 121
      Height = 21
      TabOrder = 17
      OnKeyPress = sEdit22KeyPress
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
    object sButton52: TsButton
      Left = 408
      Top = 360
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Search'
      TabOrder = 18
      OnClick = sButton52Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel9: TsPanel
    Left = 816
    Top = 96
    Width = 121
    Height = 17
    TabOrder = 9
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image11: TImage
      Left = 0
      Top = 0
      Width = 89
      Height = 17
    end
    object Label7: TLabel
      Left = 0
      Top = 0
      Width = 70
      Height = 13
      Caption = 'chat sett panel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabelFX19: TsLabelFX
      Left = 24
      Top = 24
      Width = 109
      Height = 21
      Caption = 'Favourite list (players)'
    end
    object sLabelFX21: TsLabelFX
      Left = 160
      Top = 24
      Width = 104
      Height = 21
      Caption = 'Favourite list (teams)'
    end
    object sLabelFX22: TsLabelFX
      Left = 304
      Top = 24
      Width = 53
      Height = 21
      Caption = 'Ignore list'
    end
    object sLabelFX23: TsLabelFX
      Left = 464
      Top = 48
      Width = 109
      Height = 21
      Caption = 'Message from person'
    end
    object sLabelFX20: TsLabelFX
      Left = 464
      Top = 96
      Width = 123
      Height = 21
      Caption = 'Message from own team'
    end
    object sLabelFX24: TsLabelFX
      Left = 464
      Top = 144
      Width = 127
      Height = 21
      Caption = 'Message from other team'
    end
    object sLabelFX25: TsLabelFX
      Left = 464
      Top = 192
      Width = 82
      Height = 21
      Caption = 'Public message'
    end
    object sLabelFX26: TsLabelFX
      Left = 464
      Top = 240
      Width = 71
      Height = 21
      Caption = 'Info message'
    end
    object sEdit7: TsEdit
      Left = 16
      Top = 384
      Width = 137
      Height = 21
      MaxLength = 15
      TabOrder = 0
      OnKeyDown = sEdit7KeyDown
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
    object sListBox1: TsListBox
      Left = 16
      Top = 48
      Width = 137
      Height = 329
      AutoCompleteDelay = 500
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
      ItemHeight = 13
      Sorted = True
      TabOrder = 1
      OnKeyDown = sListBox1KeyDown
    end
    object sListBox2: TsListBox
      Left = 160
      Top = 48
      Width = 137
      Height = 329
      AutoCompleteDelay = 500
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
      ItemHeight = 13
      Sorted = True
      TabOrder = 2
      OnKeyDown = sListBox2KeyDown
    end
    object sEdit9: TsEdit
      Left = 160
      Top = 384
      Width = 137
      Height = 21
      MaxLength = 20
      TabOrder = 3
      OnKeyDown = sEdit9KeyDown
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
    object sListBox3: TsListBox
      Left = 304
      Top = 48
      Width = 137
      Height = 329
      AutoCompleteDelay = 500
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
      ItemHeight = 13
      Sorted = True
      TabOrder = 4
      OnKeyDown = sListBox3KeyDown
    end
    object sEdit10: TsEdit
      Left = 304
      Top = 384
      Width = 137
      Height = 21
      MaxLength = 15
      TabOrder = 5
      OnKeyDown = sEdit10KeyDown
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
    object sColorBox1: TsColorBox
      Left = 464
      Top = 72
      Width = 89
      Height = 22
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      Selected = clRed
      TabOrder = 6
      OnChange = sColorBox1Change
      SkinData.SkinSection = 'COMBOBOX'
    end
    object sColorBox2: TsColorBox
      Left = 464
      Top = 120
      Width = 89
      Height = 22
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      Selected = clBlue
      TabOrder = 7
      OnChange = sColorBox2Change
      SkinData.SkinSection = 'COMBOBOX'
    end
    object sColorBox3: TsColorBox
      Left = 464
      Top = 168
      Width = 89
      Height = 22
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      Selected = clLime
      TabOrder = 8
      OnChange = sColorBox3Change
      SkinData.SkinSection = 'COMBOBOX'
    end
    object sColorBox4: TsColorBox
      Left = 464
      Top = 216
      Width = 89
      Height = 22
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      Selected = clBlue
      TabOrder = 9
      OnChange = sColorBox4Change
      SkinData.SkinSection = 'COMBOBOX'
    end
    object sColorBox5: TsColorBox
      Left = 464
      Top = 264
      Width = 89
      Height = 22
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      TabOrder = 10
      OnChange = sColorBox5Change
      SkinData.SkinSection = 'COMBOBOX'
    end
  end
  object sPanel10: TsPanel
    Left = 816
    Top = 168
    Width = 113
    Height = 17
    TabOrder = 10
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image10: TImage
      Left = 0
      Top = 0
      Width = 73
      Height = 17
    end
    object Label8: TLabel
      Left = 0
      Top = 0
      Width = 60
      Height = 13
      Caption = 'search result'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabelFX27: TsLabelFX
      Left = 24
      Top = 56
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX27'
      OnClick = sLabelFX27Click
    end
    object sLabelFX28: TsLabelFX
      Left = 24
      Top = 72
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX28'
      OnClick = sLabelFX28Click
    end
    object sLabelFX29: TsLabelFX
      Left = 24
      Top = 88
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX29'
      OnClick = sLabelFX29Click
    end
    object sLabelFX30: TsLabelFX
      Left = 24
      Top = 104
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX30'
      OnClick = sLabelFX30Click
    end
    object sLabelFX31: TsLabelFX
      Left = 24
      Top = 120
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX31'
      OnClick = sLabelFX31Click
    end
    object sLabelFX32: TsLabelFX
      Left = 24
      Top = 136
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX32'
      OnClick = sLabelFX32Click
    end
    object sLabelFX33: TsLabelFX
      Left = 24
      Top = 152
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX33'
      OnClick = sLabelFX33Click
    end
    object sLabelFX34: TsLabelFX
      Left = 24
      Top = 168
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX34'
      OnClick = sLabelFX34Click
    end
    object sLabelFX35: TsLabelFX
      Left = 24
      Top = 184
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX35'
      OnClick = sLabelFX35Click
    end
    object sLabelFX36: TsLabelFX
      Left = 24
      Top = 200
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX36'
      OnClick = sLabelFX36Click
    end
    object sLabelFX37: TsLabelFX
      Left = 24
      Top = 216
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX37'
      OnClick = sLabelFX37Click
    end
    object sLabelFX38: TsLabelFX
      Left = 24
      Top = 232
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX38'
      OnClick = sLabelFX38Click
    end
    object sLabelFX39: TsLabelFX
      Left = 24
      Top = 248
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX39'
      OnClick = sLabelFX39Click
    end
    object sLabelFX40: TsLabelFX
      Left = 24
      Top = 264
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX40'
      OnClick = sLabelFX40Click
    end
    object sLabelFX41: TsLabelFX
      Left = 24
      Top = 280
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX41'
      OnClick = sLabelFX41Click
    end
    object sLabelFX42: TsLabelFX
      Left = 24
      Top = 296
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX42'
      OnClick = sLabelFX42Click
    end
    object sLabelFX43: TsLabelFX
      Left = 24
      Top = 312
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX43'
      OnClick = sLabelFX43Click
    end
    object sLabelFX44: TsLabelFX
      Left = 24
      Top = 328
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX44'
      OnClick = sLabelFX44Click
    end
    object sLabelFX45: TsLabelFX
      Left = 24
      Top = 344
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX45'
      OnClick = sLabelFX45Click
    end
    object sLabelFX46: TsLabelFX
      Left = 24
      Top = 360
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX46'
      OnClick = sLabelFX46Click
    end
    object sLabelFX47: TsLabelFX
      Left = 136
      Top = 56
      Width = 64
      Height = 21
      Caption = 'sLabelFX46'
    end
    object sLabelFX48: TsLabelFX
      Left = 136
      Top = 72
      Width = 64
      Height = 21
      Caption = 'sLabelFX27'
    end
    object sLabelFX49: TsLabelFX
      Left = 136
      Top = 88
      Width = 64
      Height = 21
      Caption = 'sLabelFX28'
    end
    object sLabelFX50: TsLabelFX
      Left = 136
      Top = 104
      Width = 64
      Height = 21
      Caption = 'sLabelFX29'
    end
    object sLabelFX51: TsLabelFX
      Left = 136
      Top = 120
      Width = 64
      Height = 21
      Caption = 'sLabelFX30'
    end
    object sLabelFX52: TsLabelFX
      Left = 136
      Top = 136
      Width = 64
      Height = 21
      Caption = 'sLabelFX31'
    end
    object sLabelFX53: TsLabelFX
      Left = 136
      Top = 152
      Width = 64
      Height = 21
      Caption = 'sLabelFX32'
    end
    object sLabelFX54: TsLabelFX
      Left = 136
      Top = 168
      Width = 64
      Height = 21
      Caption = 'sLabelFX33'
    end
    object sLabelFX55: TsLabelFX
      Left = 136
      Top = 184
      Width = 64
      Height = 21
      Caption = 'sLabelFX34'
    end
    object sLabelFX56: TsLabelFX
      Left = 136
      Top = 200
      Width = 64
      Height = 21
      Caption = 'sLabelFX35'
    end
    object sLabelFX57: TsLabelFX
      Left = 136
      Top = 216
      Width = 64
      Height = 21
      Caption = 'sLabelFX36'
    end
    object sLabelFX58: TsLabelFX
      Left = 136
      Top = 232
      Width = 64
      Height = 21
      Caption = 'sLabelFX37'
    end
    object sLabelFX59: TsLabelFX
      Left = 136
      Top = 248
      Width = 64
      Height = 21
      Caption = 'sLabelFX38'
    end
    object sLabelFX60: TsLabelFX
      Left = 136
      Top = 264
      Width = 64
      Height = 21
      Caption = 'sLabelFX39'
    end
    object sLabelFX61: TsLabelFX
      Left = 136
      Top = 280
      Width = 64
      Height = 21
      Caption = 'sLabelFX40'
    end
    object sLabelFX62: TsLabelFX
      Left = 136
      Top = 296
      Width = 64
      Height = 21
      Caption = 'sLabelFX41'
    end
    object sLabelFX63: TsLabelFX
      Left = 136
      Top = 312
      Width = 64
      Height = 21
      Caption = 'sLabelFX42'
    end
    object sLabelFX64: TsLabelFX
      Left = 136
      Top = 328
      Width = 64
      Height = 21
      Caption = 'sLabelFX43'
    end
    object sLabelFX65: TsLabelFX
      Left = 136
      Top = 344
      Width = 64
      Height = 21
      Caption = 'sLabelFX44'
    end
    object sLabelFX66: TsLabelFX
      Left = 136
      Top = 360
      Width = 64
      Height = 21
      Caption = 'sLabelFX45'
    end
    object sLabelFX67: TsLabelFX
      Left = 248
      Top = 56
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX46'
      OnClick = sLabelFX67Click
    end
    object sLabelFX68: TsLabelFX
      Left = 248
      Top = 72
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX27'
      OnClick = sLabelFX68Click
    end
    object sLabelFX69: TsLabelFX
      Left = 248
      Top = 88
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX28'
      OnClick = sLabelFX69Click
    end
    object sLabelFX70: TsLabelFX
      Left = 248
      Top = 104
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX29'
      OnClick = sLabelFX70Click
    end
    object sLabelFX71: TsLabelFX
      Left = 248
      Top = 120
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX30'
      OnClick = sLabelFX71Click
    end
    object sLabelFX72: TsLabelFX
      Left = 248
      Top = 136
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX31'
      OnClick = sLabelFX72Click
    end
    object sLabelFX73: TsLabelFX
      Left = 248
      Top = 152
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX32'
      OnClick = sLabelFX73Click
    end
    object sLabelFX74: TsLabelFX
      Left = 248
      Top = 168
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX33'
      OnClick = sLabelFX74Click
    end
    object sLabelFX75: TsLabelFX
      Left = 248
      Top = 184
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX34'
      OnClick = sLabelFX75Click
    end
    object sLabelFX76: TsLabelFX
      Left = 248
      Top = 200
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX35'
      OnClick = sLabelFX76Click
    end
    object sLabelFX77: TsLabelFX
      Left = 248
      Top = 216
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX36'
      OnClick = sLabelFX77Click
    end
    object sLabelFX78: TsLabelFX
      Left = 248
      Top = 232
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX37'
      OnClick = sLabelFX78Click
    end
    object sLabelFX79: TsLabelFX
      Left = 248
      Top = 248
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX38'
      OnClick = sLabelFX79Click
    end
    object sLabelFX80: TsLabelFX
      Left = 248
      Top = 264
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX39'
      OnClick = sLabelFX80Click
    end
    object sLabelFX81: TsLabelFX
      Left = 248
      Top = 280
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX40'
      OnClick = sLabelFX81Click
    end
    object sLabelFX82: TsLabelFX
      Left = 248
      Top = 296
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX41'
      OnClick = sLabelFX82Click
    end
    object sLabelFX83: TsLabelFX
      Left = 248
      Top = 312
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX42'
      OnClick = sLabelFX83Click
    end
    object sLabelFX84: TsLabelFX
      Left = 248
      Top = 328
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX43'
      OnClick = sLabelFX84Click
    end
    object sLabelFX85: TsLabelFX
      Left = 248
      Top = 344
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX44'
      OnClick = sLabelFX85Click
    end
    object sLabelFX86: TsLabelFX
      Left = 248
      Top = 360
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX45'
      OnClick = sLabelFX86Click
    end
  end
  object sPanel1: TsPanel
    Left = 848
    Top = 296
    Width = 89
    Height = 17
    TabOrder = 11
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 64
      Height = 16
    end
    object sLabelFX1: TsLabelFX
      Left = 16
      Top = 16
      Width = 96
      Height = 37
      Caption = 'Ilmasilta'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sLabelFX2: TsLabelFX
      Left = 16
      Top = 184
      Width = 45
      Height = 21
      Caption = 'Created'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sLabelFX3: TsLabelFX
      Left = 80
      Top = 184
      Width = 56
      Height = 21
      Caption = '17.3.2008'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sLabelFX4: TsLabelFX
      Left = 16
      Top = 208
      Width = 47
      Height = 21
      Caption = 'Founder'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sLabelFX5: TsLabelFX
      Left = 80
      Top = 208
      Width = 61
      Height = 21
      Caption = 'HoviSeppo'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sLabelFX6: TsLabelFX
      Left = 16
      Top = 232
      Width = 34
      Height = 21
      Caption = 'Rank'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sLabelFX7: TsLabelFX
      Left = 80
      Top = 232
      Width = 38
      Height = 21
      Caption = '11854'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sLabelFX9: TsLabelFX
      Left = 16
      Top = 256
      Width = 247
      Height = 21
      Caption = 'Played: 1000, Wins: 500, Draws: 300, Losses: 200'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object top1: TsLabelFX
      Left = 368
      Top = 72
      Width = 36
      Height = 21
      Caption = 'Name'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object plname1: TsLabelFX
      Left = 368
      Top = 104
      Width = 61
      Height = 21
      Cursor = crHandPoint
      Caption = 'HoviSeppo'
      ParentFont = False
      OnClick = plname1Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object plname2: TsLabelFX
      Left = 368
      Top = 128
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Caption = 'plname2'
      ParentFont = False
      OnClick = plname2Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object plname3: TsLabelFX
      Left = 368
      Top = 152
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Caption = 'plname3'
      ParentFont = False
      OnClick = plname3Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object plname4: TsLabelFX
      Left = 368
      Top = 176
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Caption = 'plname4'
      ParentFont = False
      OnClick = plname4Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object plname5: TsLabelFX
      Left = 368
      Top = 200
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Caption = 'plname5'
      ParentFont = False
      OnClick = plname5Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object plname6: TsLabelFX
      Left = 368
      Top = 224
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Caption = 'plname6'
      ParentFont = False
      OnClick = plname6Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object plname7: TsLabelFX
      Left = 368
      Top = 248
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Caption = 'plname7'
      ParentFont = False
      OnClick = plname7Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object plname8: TsLabelFX
      Left = 368
      Top = 272
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Caption = 'plname8'
      ParentFont = False
      OnClick = plname8Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object plname9: TsLabelFX
      Left = 368
      Top = 296
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Caption = 'plname9'
      ParentFont = False
      OnClick = plname9Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object onl_Image1: TImage
      Left = 320
      Top = 102
      Width = 20
      Height = 20
      Transparent = True
    end
    object onl_Image2: TImage
      Left = 320
      Top = 126
      Width = 20
      Height = 20
      Transparent = True
    end
    object onl_Image3: TImage
      Left = 320
      Top = 150
      Width = 20
      Height = 20
      Transparent = True
    end
    object top2: TsLabelFX
      Left = 480
      Top = 72
      Width = 26
      Height = 21
      Caption = 'Pos'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object top3: TsLabelFX
      Left = 536
      Top = 72
      Width = 25
      Height = 21
      Caption = 'Nat'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object top4: TsLabelFX
      Left = 592
      Top = 72
      Width = 32
      Height = 21
      Caption = 'Apps'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sn1: TsLabelFX
      Left = 344
      Top = 104
      Width = 20
      Height = 21
      Caption = '17'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sn2: TsLabelFX
      Left = 344
      Top = 128
      Width = 14
      Height = 21
      Caption = '4'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object po1: TsLabelFX
      Left = 480
      Top = 104
      Width = 26
      Height = 21
      Caption = 'D C'
      ParentFont = False
      OnClick = po1Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object po2: TsLabelFX
      Left = 480
      Top = 128
      Width = 35
      Height = 21
      Caption = 'M RC'
      ParentFont = False
      OnClick = po2Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object na1: TsLabelFX
      Left = 552
      Top = 104
      Width = 25
      Height = 21
      Caption = 'FIN'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object li1: TImage
      Left = 528
      Top = 106
      Width = 20
      Height = 15
      AutoSize = True
      Transparent = True
    end
    object top5: TsLabelFX
      Left = 632
      Top = 72
      Width = 23
      Height = 21
      Caption = 'Gls'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object top6: TsLabelFX
      Left = 664
      Top = 72
      Width = 28
      Height = 21
      Caption = 'Asts'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object plname10: TsLabelFX
      Left = 368
      Top = 320
      Width = 54
      Height = 21
      Cursor = crHandPoint
      Caption = 'plname10'
      ParentFont = False
      OnClick = plname10Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object plname11: TsLabelFX
      Left = 368
      Top = 344
      Width = 54
      Height = 21
      Cursor = crHandPoint
      Caption = 'plname11'
      ParentFont = False
      OnClick = plname11Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object plname12: TsLabelFX
      Left = 368
      Top = 368
      Width = 54
      Height = 21
      Cursor = crHandPoint
      Caption = 'plname12'
      ParentFont = False
      OnClick = plname12Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object plname13: TsLabelFX
      Left = 368
      Top = 392
      Width = 54
      Height = 21
      Cursor = crHandPoint
      Caption = 'plname13'
      ParentFont = False
      OnClick = plname13Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object plname14: TsLabelFX
      Left = 368
      Top = 416
      Width = 54
      Height = 21
      Cursor = crHandPoint
      Caption = 'plname14'
      ParentFont = False
      OnClick = plname14Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object onl_Image4: TImage
      Left = 320
      Top = 174
      Width = 20
      Height = 20
      Transparent = True
    end
    object onl_Image6: TImage
      Left = 320
      Top = 222
      Width = 20
      Height = 20
      Transparent = True
    end
    object onl_Image7: TImage
      Left = 320
      Top = 246
      Width = 20
      Height = 20
      Transparent = True
    end
    object onl_Image8: TImage
      Left = 320
      Top = 270
      Width = 20
      Height = 20
      Transparent = True
    end
    object onl_Image9: TImage
      Left = 320
      Top = 294
      Width = 20
      Height = 20
      Transparent = True
    end
    object onl_Image10: TImage
      Left = 320
      Top = 318
      Width = 20
      Height = 20
      Transparent = True
    end
    object onl_Image11: TImage
      Left = 320
      Top = 342
      Width = 20
      Height = 20
      Transparent = True
    end
    object onl_Image12: TImage
      Left = 320
      Top = 366
      Width = 20
      Height = 20
      Transparent = True
    end
    object onl_Image13: TImage
      Left = 320
      Top = 390
      Width = 20
      Height = 20
      Transparent = True
    end
    object onl_Image5: TImage
      Left = 320
      Top = 198
      Width = 20
      Height = 20
      Transparent = True
    end
    object onl_Image14: TImage
      Left = 320
      Top = 414
      Width = 20
      Height = 20
      Transparent = True
    end
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 52
      Height = 13
      Caption = 'team panel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sn3: TsLabelFX
      Left = 344
      Top = 152
      Width = 14
      Height = 21
      Caption = '8'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sn4: TsLabelFX
      Left = 344
      Top = 176
      Width = 25
      Height = 21
      Caption = 'sn4'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sn5: TsLabelFX
      Left = 344
      Top = 200
      Width = 25
      Height = 21
      Caption = 'sn5'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sn6: TsLabelFX
      Left = 344
      Top = 224
      Width = 25
      Height = 21
      Caption = 'sn6'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sn7: TsLabelFX
      Left = 344
      Top = 248
      Width = 25
      Height = 21
      Caption = 'sn7'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sn8: TsLabelFX
      Left = 344
      Top = 272
      Width = 25
      Height = 21
      Caption = 'sn8'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sn9: TsLabelFX
      Left = 344
      Top = 296
      Width = 25
      Height = 21
      Caption = 'sn9'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sn10: TsLabelFX
      Left = 344
      Top = 320
      Width = 31
      Height = 21
      Caption = 'sn10'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sn11: TsLabelFX
      Left = 344
      Top = 344
      Width = 31
      Height = 21
      Caption = 'sn11'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sn12: TsLabelFX
      Left = 344
      Top = 368
      Width = 31
      Height = 21
      Caption = 'sn12'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sn13: TsLabelFX
      Left = 344
      Top = 392
      Width = 31
      Height = 21
      Caption = 'sn13'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sn14: TsLabelFX
      Left = 344
      Top = 416
      Width = 31
      Height = 21
      Caption = 'sn14'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object po3: TsLabelFX
      Left = 480
      Top = 152
      Width = 26
      Height = 21
      Caption = 'po3'
      ParentFont = False
      OnClick = po3Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object po4: TsLabelFX
      Left = 480
      Top = 176
      Width = 26
      Height = 21
      Caption = 'po4'
      ParentFont = False
      OnClick = po4Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object po5: TsLabelFX
      Left = 480
      Top = 200
      Width = 26
      Height = 21
      Caption = 'po5'
      ParentFont = False
      OnClick = po5Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object po6: TsLabelFX
      Left = 480
      Top = 224
      Width = 26
      Height = 21
      Caption = 'po6'
      ParentFont = False
      OnClick = po6Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object po7: TsLabelFX
      Left = 480
      Top = 248
      Width = 26
      Height = 21
      Caption = 'po7'
      ParentFont = False
      OnClick = po7Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object po8: TsLabelFX
      Left = 480
      Top = 272
      Width = 26
      Height = 21
      Caption = 'po8'
      ParentFont = False
      OnClick = po8Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object po9: TsLabelFX
      Left = 480
      Top = 296
      Width = 26
      Height = 21
      Caption = 'po9'
      ParentFont = False
      OnClick = po9Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object po10: TsLabelFX
      Left = 480
      Top = 320
      Width = 32
      Height = 21
      Caption = 'po10'
      ParentFont = False
      OnClick = po10Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object po11: TsLabelFX
      Left = 480
      Top = 344
      Width = 32
      Height = 21
      Caption = 'po11'
      ParentFont = False
      OnClick = po11Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object po12: TsLabelFX
      Left = 480
      Top = 368
      Width = 32
      Height = 21
      Caption = 'po12'
      ParentFont = False
      OnClick = po12Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object po13: TsLabelFX
      Left = 480
      Top = 392
      Width = 32
      Height = 21
      Caption = 'po13'
      ParentFont = False
      OnClick = po13Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object po14: TsLabelFX
      Left = 480
      Top = 416
      Width = 32
      Height = 21
      Caption = 'po14'
      ParentFont = False
      OnClick = po14Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object li2: TImage
      Left = 528
      Top = 130
      Width = 20
      Height = 15
      AutoSize = True
      Transparent = True
    end
    object li3: TImage
      Left = 528
      Top = 154
      Width = 20
      Height = 15
      AutoSize = True
      Transparent = True
    end
    object li4: TImage
      Left = 528
      Top = 178
      Width = 20
      Height = 15
      AutoSize = True
      Transparent = True
    end
    object li5: TImage
      Left = 528
      Top = 202
      Width = 20
      Height = 15
      AutoSize = True
      Transparent = True
    end
    object li6: TImage
      Left = 528
      Top = 226
      Width = 20
      Height = 15
      AutoSize = True
      Transparent = True
    end
    object li7: TImage
      Left = 528
      Top = 250
      Width = 20
      Height = 15
      AutoSize = True
      Transparent = True
    end
    object li8: TImage
      Left = 528
      Top = 274
      Width = 20
      Height = 15
      AutoSize = True
      Transparent = True
    end
    object li9: TImage
      Left = 528
      Top = 298
      Width = 20
      Height = 15
      AutoSize = True
      Transparent = True
    end
    object li10: TImage
      Left = 528
      Top = 322
      Width = 20
      Height = 15
      AutoSize = True
      Transparent = True
    end
    object li11: TImage
      Left = 528
      Top = 346
      Width = 20
      Height = 15
      AutoSize = True
      Transparent = True
    end
    object li12: TImage
      Left = 528
      Top = 370
      Width = 20
      Height = 15
      AutoSize = True
      Transparent = True
    end
    object li13: TImage
      Left = 528
      Top = 394
      Width = 20
      Height = 15
      AutoSize = True
      Transparent = True
    end
    object li14: TImage
      Left = 528
      Top = 418
      Width = 20
      Height = 15
      AutoSize = True
      Transparent = True
    end
    object na2: TsLabelFX
      Left = 552
      Top = 128
      Width = 26
      Height = 21
      Caption = 'na2'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object na3: TsLabelFX
      Left = 552
      Top = 152
      Width = 26
      Height = 21
      Caption = 'na3'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object na4: TsLabelFX
      Left = 552
      Top = 176
      Width = 26
      Height = 21
      Caption = 'na4'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object na5: TsLabelFX
      Left = 552
      Top = 200
      Width = 26
      Height = 21
      Caption = 'na5'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object na6: TsLabelFX
      Left = 552
      Top = 224
      Width = 26
      Height = 21
      Caption = 'na6'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object na7: TsLabelFX
      Left = 552
      Top = 248
      Width = 26
      Height = 21
      Caption = 'na7'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object na8: TsLabelFX
      Left = 552
      Top = 272
      Width = 26
      Height = 21
      Caption = 'na8'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object na9: TsLabelFX
      Left = 552
      Top = 296
      Width = 26
      Height = 21
      Caption = 'na9'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object na10: TsLabelFX
      Left = 552
      Top = 320
      Width = 32
      Height = 21
      Caption = 'na10'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object na11: TsLabelFX
      Left = 552
      Top = 344
      Width = 32
      Height = 21
      Caption = 'na11'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object na12: TsLabelFX
      Left = 552
      Top = 368
      Width = 32
      Height = 21
      Caption = 'na12'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object na13: TsLabelFX
      Left = 552
      Top = 392
      Width = 32
      Height = 21
      Caption = 'na13'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object na14: TsLabelFX
      Left = 552
      Top = 416
      Width = 32
      Height = 21
      Caption = 'na14'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object as1: TsLabelFX
      Left = 664
      Top = 104
      Width = 25
      Height = 21
      Caption = 'as1'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object as2: TsLabelFX
      Left = 664
      Top = 128
      Width = 25
      Height = 21
      Caption = 'as2'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object as3: TsLabelFX
      Left = 664
      Top = 152
      Width = 25
      Height = 21
      Caption = 'as3'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object as4: TsLabelFX
      Left = 664
      Top = 176
      Width = 25
      Height = 21
      Caption = 'as4'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object as5: TsLabelFX
      Left = 664
      Top = 200
      Width = 25
      Height = 21
      Caption = 'as5'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object as6: TsLabelFX
      Left = 664
      Top = 224
      Width = 25
      Height = 21
      Caption = 'as6'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object as7: TsLabelFX
      Left = 664
      Top = 248
      Width = 25
      Height = 21
      Caption = 'as7'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object as8: TsLabelFX
      Left = 664
      Top = 272
      Width = 25
      Height = 21
      Caption = 'as8'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object as9: TsLabelFX
      Left = 664
      Top = 296
      Width = 25
      Height = 21
      Caption = 'as9'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object as12: TsLabelFX
      Left = 664
      Top = 368
      Width = 31
      Height = 21
      Caption = 'as12'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object as13: TsLabelFX
      Left = 664
      Top = 392
      Width = 31
      Height = 21
      Caption = 'as13'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object as14: TsLabelFX
      Left = 664
      Top = 416
      Width = 31
      Height = 21
      Caption = 'as14'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object as11: TsLabelFX
      Left = 664
      Top = 344
      Width = 31
      Height = 21
      Caption = 'as11'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object as10: TsLabelFX
      Left = 664
      Top = 320
      Width = 31
      Height = 21
      Caption = 'as10'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object g1: TsLabelFX
      Left = 632
      Top = 104
      Width = 20
      Height = 21
      Caption = 'g1'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object g2: TsLabelFX
      Left = 632
      Top = 128
      Width = 20
      Height = 21
      Caption = 'g2'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object g4: TsLabelFX
      Left = 632
      Top = 176
      Width = 20
      Height = 21
      Caption = 'g4'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object g3: TsLabelFX
      Left = 632
      Top = 152
      Width = 20
      Height = 21
      Caption = 'g3'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object g5: TsLabelFX
      Left = 632
      Top = 200
      Width = 20
      Height = 21
      Caption = 'g5'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object g6: TsLabelFX
      Left = 632
      Top = 224
      Width = 20
      Height = 21
      Caption = 'g6'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object g7: TsLabelFX
      Left = 632
      Top = 248
      Width = 20
      Height = 21
      Caption = 'g7'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object g8: TsLabelFX
      Left = 632
      Top = 272
      Width = 20
      Height = 21
      Caption = 'g8'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object g9: TsLabelFX
      Left = 632
      Top = 296
      Width = 20
      Height = 21
      Caption = 'g9'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object g10: TsLabelFX
      Left = 632
      Top = 320
      Width = 26
      Height = 21
      Caption = 'g10'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object g11: TsLabelFX
      Left = 632
      Top = 344
      Width = 26
      Height = 21
      Caption = 'g11'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object g12: TsLabelFX
      Left = 632
      Top = 368
      Width = 26
      Height = 21
      Caption = 'g12'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object g13: TsLabelFX
      Left = 632
      Top = 392
      Width = 26
      Height = 21
      Caption = 'g13'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object g14: TsLabelFX
      Left = 632
      Top = 416
      Width = 26
      Height = 21
      Caption = 'g14'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object a1: TsLabelFX
      Left = 592
      Top = 104
      Width = 20
      Height = 21
      Caption = 'a1'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object a2: TsLabelFX
      Left = 592
      Top = 128
      Width = 20
      Height = 21
      Caption = 'a2'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object a4: TsLabelFX
      Left = 592
      Top = 176
      Width = 20
      Height = 21
      Caption = 'a4'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object a3: TsLabelFX
      Left = 592
      Top = 152
      Width = 20
      Height = 21
      Caption = 'a3'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object a5: TsLabelFX
      Left = 592
      Top = 200
      Width = 20
      Height = 21
      Caption = 'a5'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object a6: TsLabelFX
      Left = 592
      Top = 224
      Width = 20
      Height = 21
      Caption = 'a6'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object a7: TsLabelFX
      Left = 592
      Top = 248
      Width = 20
      Height = 21
      Caption = 'a7'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object a8: TsLabelFX
      Left = 592
      Top = 272
      Width = 20
      Height = 21
      Caption = 'a8'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object a9: TsLabelFX
      Left = 592
      Top = 296
      Width = 20
      Height = 21
      Caption = 'a9'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object a10: TsLabelFX
      Left = 592
      Top = 320
      Width = 26
      Height = 21
      Caption = 'a10'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object a11: TsLabelFX
      Left = 592
      Top = 344
      Width = 26
      Height = 21
      Caption = 'a11'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object a12: TsLabelFX
      Left = 592
      Top = 368
      Width = 26
      Height = 21
      Caption = 'a12'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object a13: TsLabelFX
      Left = 592
      Top = 392
      Width = 26
      Height = 21
      Caption = 'a13'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object a14: TsLabelFX
      Left = 592
      Top = 416
      Width = 26
      Height = 21
      Caption = 'a14'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object kit_image1: TImage
      Left = 144
      Top = 56
      Width = 70
      Height = 60
      Transparent = True
      OnClick = kit_image1Click
    end
    object kit_image3: TImage
      Left = 144
      Top = 116
      Width = 70
      Height = 35
      Transparent = True
      OnClick = kit_image3Click
    end
    object kit_image5: TImage
      Left = 144
      Top = 151
      Width = 70
      Height = 25
      Transparent = True
      OnClick = kit_image5Click
    end
    object kit_image2: TImage
      Left = 216
      Top = 56
      Width = 70
      Height = 60
      Transparent = True
      OnClick = kit_image2Click
    end
    object kit_image4: TImage
      Left = 216
      Top = 116
      Width = 70
      Height = 35
      Transparent = True
      OnClick = kit_image4Click
    end
    object kit_image6: TImage
      Left = 216
      Top = 151
      Width = 70
      Height = 25
      Transparent = True
      OnClick = kit_image6Click
    end
    object Image8: TImage
      Left = 12
      Top = 56
      Width = 120
      Height = 120
    end
    object sLabelFX17: TsLabelFX
      Left = 80
      Top = 274
      Width = 64
      Height = 21
      Caption = 'sLabelFX17'
    end
    object sLabelFX18: TsLabelFX
      Left = 16
      Top = 272
      Width = 63
      Height = 21
      Caption = 'Team index'
    end
    object sLabelFX87: TsLabelFX
      Left = 912
      Top = 32
      Width = 50
      Height = 21
      Caption = 'Home kit'
    end
    object sLabelFX88: TsLabelFX
      Left = 960
      Top = 32
      Width = 48
      Height = 21
      Caption = 'Away kit'
    end
    object sLabelFX89: TsLabelFX
      Left = 888
      Top = 56
      Width = 189
      Height = 21
      Caption = 'Click some part of kit to change colour'
    end
    object sLabelFX90: TsLabelFX
      Left = 904
      Top = 72
      Width = 55
      Height = 21
      Caption = 'Team text'
    end
    object sLabelFX91: TsLabelFX
      Left = 960
      Top = 72
      Width = 57
      Height = 21
      Caption = 'Logo URL'
    end
    object invited1: TsLabelFX
      Left = 720
      Top = 104
      Width = 45
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited1'
      OnClick = invited1Click
    end
    object invited2: TsLabelFX
      Left = 720
      Top = 120
      Width = 45
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited2'
      OnClick = invited2Click
    end
    object invited3: TsLabelFX
      Left = 720
      Top = 136
      Width = 45
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited3'
      OnClick = invited3Click
    end
    object invited4: TsLabelFX
      Left = 720
      Top = 153
      Width = 45
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited4'
      OnClick = invited4Click
    end
    object invited5: TsLabelFX
      Left = 720
      Top = 169
      Width = 45
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited5'
      OnClick = invited5Click
    end
    object invited6: TsLabelFX
      Left = 720
      Top = 186
      Width = 45
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited6'
      OnClick = invited6Click
    end
    object invited7: TsLabelFX
      Left = 720
      Top = 202
      Width = 45
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited7'
      OnClick = invited7Click
    end
    object invited8: TsLabelFX
      Left = 720
      Top = 218
      Width = 45
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited8'
      OnClick = invited8Click
    end
    object invited9: TsLabelFX
      Left = 720
      Top = 235
      Width = 45
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited9'
      OnClick = invited9Click
    end
    object invited10: TsLabelFX
      Left = 720
      Top = 251
      Width = 51
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited10'
      OnClick = invited10Click
    end
    object invited11: TsLabelFX
      Left = 720
      Top = 268
      Width = 51
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited11'
      OnClick = invited11Click
    end
    object invited12: TsLabelFX
      Left = 720
      Top = 284
      Width = 51
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited12'
      OnClick = invited12Click
    end
    object invited13: TsLabelFX
      Left = 720
      Top = 301
      Width = 51
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited13'
      OnClick = invited13Click
    end
    object invited14: TsLabelFX
      Left = 720
      Top = 317
      Width = 51
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited14'
      OnClick = invited14Click
    end
    object invited15: TsLabelFX
      Left = 720
      Top = 333
      Width = 51
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited15'
      OnClick = invited15Click
    end
    object invited16: TsLabelFX
      Left = 720
      Top = 350
      Width = 51
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited16'
      OnClick = invited16Click
    end
    object invited17: TsLabelFX
      Left = 720
      Top = 366
      Width = 51
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited17'
      OnClick = invited17Click
    end
    object invited18: TsLabelFX
      Left = 720
      Top = 383
      Width = 51
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited18'
      OnClick = invited18Click
    end
    object invited19: TsLabelFX
      Left = 720
      Top = 400
      Width = 51
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited19'
      OnClick = invited19Click
    end
    object invited20: TsLabelFX
      Left = 720
      Top = 416
      Width = 51
      Height = 21
      Cursor = crHandPoint
      Caption = 'invited20'
      OnClick = invited20Click
    end
    object latestNameH1: TsLabelFX
      Left = 896
      Top = 144
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameH1'
      OnClick = latestNameH1Click
    end
    object vs1: TsLabelFX
      Left = 984
      Top = 144
      Width = 25
      Height = 21
      Caption = 'vs1'
    end
    object latestNameA1: TsLabelFX
      Left = 1016
      Top = 144
      Width = 74
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameA1'
      OnClick = latestNameA1Click
    end
    object latestRankMuutos1: TsLabelFX
      Left = 1168
      Top = 144
      Width = 100
      Height = 21
      Caption = 'latestRankMuutos1'
      Kind.KindType = ktCustom
    end
    object latestTulos1: TsLabelFX
      Left = 1096
      Top = 144
      Width = 65
      Height = 21
      Caption = 'latestTulos1'
    end
    object latestDate1: TsLabelFX
      Left = 1272
      Top = 144
      Width = 62
      Height = 21
      Caption = 'latestDate1'
    end
    object latestNameH2: TsLabelFX
      Left = 896
      Top = 160
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameH2'
      OnClick = latestNameH2Click
    end
    object latestNameH3: TsLabelFX
      Left = 896
      Top = 176
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameH3'
      OnClick = latestNameH3Click
    end
    object latestNameH4: TsLabelFX
      Left = 896
      Top = 192
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameH4'
      OnClick = latestNameH4Click
    end
    object latestNameH5: TsLabelFX
      Left = 896
      Top = 208
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameH5'
      OnClick = latestNameH5Click
    end
    object latestNameH6: TsLabelFX
      Left = 896
      Top = 224
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameH6'
      OnClick = latestNameH6Click
    end
    object latestNameH7: TsLabelFX
      Left = 896
      Top = 240
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameH7'
      OnClick = latestNameH7Click
    end
    object latestNameH8: TsLabelFX
      Left = 896
      Top = 256
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameH8'
      OnClick = latestNameH8Click
    end
    object latestNameH9: TsLabelFX
      Left = 896
      Top = 272
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameH9'
      OnClick = latestNameH9Click
    end
    object latestNameH10: TsLabelFX
      Left = 896
      Top = 288
      Width = 81
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameH10'
      OnClick = latestNameH10Click
    end
    object vs2: TsLabelFX
      Left = 984
      Top = 160
      Width = 25
      Height = 21
      Caption = 'vs2'
    end
    object vs3: TsLabelFX
      Left = 984
      Top = 176
      Width = 25
      Height = 21
      Caption = 'vs3'
    end
    object vs4: TsLabelFX
      Left = 984
      Top = 192
      Width = 25
      Height = 21
      Caption = 'vs4'
    end
    object vs5: TsLabelFX
      Left = 984
      Top = 208
      Width = 25
      Height = 21
      Caption = 'vs5'
    end
    object vs6: TsLabelFX
      Left = 984
      Top = 224
      Width = 25
      Height = 21
      Caption = 'vs6'
    end
    object vs7: TsLabelFX
      Left = 984
      Top = 240
      Width = 25
      Height = 21
      Caption = 'vs7'
    end
    object vs8: TsLabelFX
      Left = 984
      Top = 256
      Width = 25
      Height = 21
      Caption = 'vs8'
    end
    object vs9: TsLabelFX
      Left = 984
      Top = 272
      Width = 25
      Height = 21
      Caption = 'vs9'
    end
    object vs10: TsLabelFX
      Left = 984
      Top = 288
      Width = 31
      Height = 21
      Caption = 'vs10'
    end
    object latestNameA2: TsLabelFX
      Left = 1016
      Top = 160
      Width = 74
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameA2'
      OnClick = latestNameA2Click
    end
    object latestNameA3: TsLabelFX
      Left = 1016
      Top = 176
      Width = 74
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameA3'
      OnClick = latestNameA3Click
    end
    object latestNameA4: TsLabelFX
      Left = 1016
      Top = 192
      Width = 74
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameA4'
      OnClick = latestNameA4Click
    end
    object latestNameA5: TsLabelFX
      Left = 1016
      Top = 208
      Width = 74
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameA5'
      OnClick = latestNameA5Click
    end
    object latestNameA6: TsLabelFX
      Left = 1016
      Top = 224
      Width = 74
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameA6'
      OnClick = latestNameA6Click
    end
    object latestNameA7: TsLabelFX
      Left = 1016
      Top = 240
      Width = 74
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameA7'
      OnClick = latestNameA7Click
    end
    object latestNameA8: TsLabelFX
      Left = 1016
      Top = 256
      Width = 74
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameA8'
      OnClick = latestNameA8Click
    end
    object latestNameA9: TsLabelFX
      Left = 1016
      Top = 272
      Width = 74
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameA9'
      OnClick = latestNameA9Click
    end
    object latestNameA10: TsLabelFX
      Left = 1016
      Top = 288
      Width = 80
      Height = 21
      Cursor = crHandPoint
      Caption = 'latestNameA10'
      OnClick = latestNameA10Click
    end
    object latestTulos2: TsLabelFX
      Left = 1096
      Top = 160
      Width = 65
      Height = 21
      Caption = 'latestTulos2'
    end
    object latestTulos3: TsLabelFX
      Left = 1096
      Top = 176
      Width = 65
      Height = 21
      Caption = 'latestTulos3'
    end
    object latestTulos4: TsLabelFX
      Left = 1096
      Top = 192
      Width = 65
      Height = 21
      Caption = 'latestTulos4'
    end
    object latestTulos5: TsLabelFX
      Left = 1096
      Top = 208
      Width = 65
      Height = 21
      Caption = 'latestTulos5'
    end
    object latestTulos6: TsLabelFX
      Left = 1096
      Top = 224
      Width = 65
      Height = 21
      Caption = 'latestTulos6'
    end
    object latestTulos7: TsLabelFX
      Left = 1096
      Top = 240
      Width = 65
      Height = 21
      Caption = 'latestTulos7'
    end
    object latestTulos8: TsLabelFX
      Left = 1096
      Top = 256
      Width = 65
      Height = 21
      Caption = 'latestTulos8'
    end
    object latestTulos9: TsLabelFX
      Left = 1096
      Top = 272
      Width = 65
      Height = 21
      Caption = 'latestTulos9'
    end
    object latestTulos10: TsLabelFX
      Left = 1096
      Top = 288
      Width = 71
      Height = 21
      Caption = 'latestTulos10'
    end
    object latestRankMuutos2: TsLabelFX
      Left = 1168
      Top = 160
      Width = 100
      Height = 21
      Caption = 'latestRankMuutos2'
      Kind.KindType = ktCustom
    end
    object latestRankMuutos3: TsLabelFX
      Left = 1168
      Top = 176
      Width = 100
      Height = 21
      Caption = 'latestRankMuutos3'
      Kind.KindType = ktCustom
    end
    object latestRankMuutos4: TsLabelFX
      Left = 1168
      Top = 192
      Width = 100
      Height = 21
      Caption = 'latestRankMuutos4'
      Kind.KindType = ktCustom
    end
    object latestRankMuutos5: TsLabelFX
      Left = 1168
      Top = 208
      Width = 100
      Height = 21
      Caption = 'latestRankMuutos5'
      Kind.KindType = ktCustom
    end
    object latestRankMuutos6: TsLabelFX
      Left = 1168
      Top = 224
      Width = 100
      Height = 21
      Caption = 'latestRankMuutos6'
      Kind.KindType = ktCustom
    end
    object latestRankMuutos7: TsLabelFX
      Left = 1168
      Top = 240
      Width = 100
      Height = 21
      Caption = 'latestRankMuutos7'
      Kind.KindType = ktCustom
    end
    object latestRankMuutos8: TsLabelFX
      Left = 1168
      Top = 256
      Width = 100
      Height = 21
      Caption = 'latestRankMuutos8'
      Kind.KindType = ktCustom
    end
    object latestRankMuutos9: TsLabelFX
      Left = 1168
      Top = 272
      Width = 100
      Height = 21
      Caption = 'latestRankMuutos9'
      Kind.KindType = ktCustom
    end
    object latestRankMuutos10: TsLabelFX
      Left = 1168
      Top = 288
      Width = 106
      Height = 21
      Caption = 'latestRankMuutos10'
      Kind.KindType = ktCustom
    end
    object latestDate2: TsLabelFX
      Left = 1272
      Top = 160
      Width = 62
      Height = 21
      Caption = 'latestDate2'
    end
    object latestDate3: TsLabelFX
      Left = 1272
      Top = 176
      Width = 62
      Height = 21
      Caption = 'latestDate3'
    end
    object latestDate4: TsLabelFX
      Left = 1272
      Top = 192
      Width = 62
      Height = 21
      Caption = 'latestDate4'
    end
    object latestDate5: TsLabelFX
      Left = 1272
      Top = 208
      Width = 62
      Height = 21
      Caption = 'latestDate5'
    end
    object latestDate6: TsLabelFX
      Left = 1272
      Top = 224
      Width = 62
      Height = 21
      Caption = 'latestDate6'
    end
    object latestDate7: TsLabelFX
      Left = 1272
      Top = 240
      Width = 62
      Height = 21
      Caption = 'latestDate7'
    end
    object latestDate8: TsLabelFX
      Left = 1272
      Top = 256
      Width = 62
      Height = 21
      Caption = 'latestDate8'
    end
    object latestDate9: TsLabelFX
      Left = 1272
      Top = 272
      Width = 62
      Height = 21
      Caption = 'latestDate9'
    end
    object latestDate10: TsLabelFX
      Left = 1272
      Top = 288
      Width = 68
      Height = 21
      Caption = 'latestDate10'
    end
    object matchDet1: TsLabelFX
      Left = 1344
      Top = 144
      Width = 60
      Height = 21
      Cursor = crHandPoint
      Caption = 'matchDet1'
      OnClick = matchDet1Click
    end
    object matchDet2: TsLabelFX
      Left = 1344
      Top = 160
      Width = 60
      Height = 21
      Cursor = crHandPoint
      Caption = 'matchDet2'
      OnClick = matchDet2Click
    end
    object matchDet3: TsLabelFX
      Left = 1344
      Top = 176
      Width = 60
      Height = 21
      Cursor = crHandPoint
      Caption = 'matchDet3'
      OnClick = matchDet3Click
    end
    object matchDet4: TsLabelFX
      Left = 1344
      Top = 192
      Width = 60
      Height = 21
      Cursor = crHandPoint
      Caption = 'matchDet4'
      OnClick = matchDet4Click
    end
    object matchDet5: TsLabelFX
      Left = 1344
      Top = 208
      Width = 60
      Height = 21
      Cursor = crHandPoint
      Caption = 'matchDet5'
      OnClick = matchDet5Click
    end
    object matchDet6: TsLabelFX
      Left = 1344
      Top = 224
      Width = 60
      Height = 21
      Cursor = crHandPoint
      Caption = 'matchDet6'
      OnClick = matchDet6Click
    end
    object matchDet7: TsLabelFX
      Left = 1344
      Top = 240
      Width = 60
      Height = 21
      Cursor = crHandPoint
      Caption = 'matchDet7'
      OnClick = matchDet7Click
    end
    object matchDet8: TsLabelFX
      Left = 1344
      Top = 256
      Width = 60
      Height = 21
      Cursor = crHandPoint
      Caption = 'matchDet8'
      OnClick = matchDet8Click
    end
    object matchDet9: TsLabelFX
      Left = 1344
      Top = 272
      Width = 60
      Height = 21
      Cursor = crHandPoint
      Caption = 'matchDet9'
      OnClick = matchDet9Click
    end
    object matchDet10: TsLabelFX
      Left = 1344
      Top = 288
      Width = 66
      Height = 21
      Cursor = crHandPoint
      Caption = 'matchDet10'
      OnClick = matchDet10Click
    end
    object sLabelFX181: TsLabelFX
      Left = 1008
      Top = 328
      Width = 49
      Height = 21
      Caption = 'Location'
    end
    object sButton4: TsButton
      Left = 744
      Top = 96
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Join'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = sButton4Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sScrollBar1: TsScrollBar
      Left = 296
      Top = 104
      Width = 16
      Height = 337
      Kind = sbVertical
      Max = 1
      PageSize = 0
      TabOrder = 1
      OnScroll = sScrollBar1Scroll
      SkinManager = sSkinManager1
    end
    object sMemo2: TsMemo
      Left = 16
      Top = 296
      Width = 233
      Height = 137
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
    end
    object sComboBox4: TsComboBox
      Left = 744
      Top = 16
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 3
      Text = 'General info'
      OnChange = sComboBox4Change
      Items.Strings = (
        'Players - General info'
        'Players - Administration'
        'Records'
        'Latest scores'
        'Invites'
        'Settings')
    end
    object sTrackBar1: TsTrackBar
      Left = 1064
      Top = 32
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Max = 3
      TabOrder = 4
      ThumbLength = 15
      OnChange = sTrackBar1Change
      SkinData.SkinSection = 'TRACKBAR'
    end
    object sTrackBar2: TsTrackBar
      Left = 1128
      Top = 32
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Max = 3
      TabOrder = 5
      ThumbLength = 15
      OnChange = sTrackBar2Change
      SkinData.SkinSection = 'TRACKBAR'
    end
    object sCheckBox4: TsCheckBox
      Left = 912
      Top = 16
      Width = 75
      Height = 17
      Cursor = crHandPoint
      Caption = 'Main colour'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 6
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sButton9: TsButton
      Left = 936
      Top = 104
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Caption = 'Save changes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = sButton9Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sCheckBox5: TsCheckBox
      Left = 1112
      Top = 56
      Width = 143
      Height = 17
      Cursor = crHandPoint
      Caption = 'Allow joining without invite'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sEdit8: TsEdit
      Left = 1024
      Top = 88
      Width = 289
      Height = 21
      MaxLength = 255
      TabOrder = 9
      OnChange = sEdit8Change
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
    object sEdit11: TsEdit
      Left = 1016
      Top = 80
      Width = 289
      Height = 21
      MaxLength = 100
      TabOrder = 10
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
    object invcan1: TsButton
      Left = 784
      Top = 106
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 11
      OnClick = invcan1Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan2: TsButton
      Left = 784
      Top = 122
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 12
      OnClick = invcan2Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan3: TsButton
      Left = 784
      Top = 138
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 13
      OnClick = invcan3Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan4: TsButton
      Left = 784
      Top = 155
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 14
      OnClick = invcan4Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan5: TsButton
      Left = 784
      Top = 171
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 15
      OnClick = invcan5Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan6: TsButton
      Left = 784
      Top = 188
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 16
      OnClick = invcan6Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan7: TsButton
      Left = 784
      Top = 204
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 17
      OnClick = invcan7Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan8: TsButton
      Left = 784
      Top = 220
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 18
      OnClick = invcan8Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan9: TsButton
      Left = 784
      Top = 237
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 19
      OnClick = invcan9Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan10: TsButton
      Left = 784
      Top = 253
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 20
      OnClick = invcan10Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan11: TsButton
      Left = 784
      Top = 270
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 21
      OnClick = invcan11Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan12: TsButton
      Left = 784
      Top = 286
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 22
      OnClick = invcan12Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan13: TsButton
      Left = 784
      Top = 303
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 23
      OnClick = invcan13Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan14: TsButton
      Left = 784
      Top = 319
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 24
      OnClick = invcan14Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan15: TsButton
      Left = 784
      Top = 335
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 25
      OnClick = invcan15Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan16: TsButton
      Left = 784
      Top = 352
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 26
      OnClick = invcan16Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan17: TsButton
      Left = 784
      Top = 368
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 27
      OnClick = invcan17Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan18: TsButton
      Left = 784
      Top = 385
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 28
      OnClick = invcan18Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan19: TsButton
      Left = 784
      Top = 401
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 29
      OnClick = invcan19Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object invcan20: TsButton
      Left = 784
      Top = 418
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      TabOrder = 30
      OnClick = invcan20Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object kick1: TsButton
      Left = 848
      Top = 104
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Kick'
      TabOrder = 31
      OnClick = kick1Click
      SkinData.SkinSection = 'BUTTON'
    end
    object kick2: TsButton
      Left = 848
      Top = 128
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Kick'
      TabOrder = 32
      OnClick = kick2Click
      SkinData.SkinSection = 'BUTTON'
    end
    object kick3: TsButton
      Left = 848
      Top = 152
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Kick'
      TabOrder = 33
      OnClick = kick3Click
      SkinData.SkinSection = 'BUTTON'
    end
    object kick4: TsButton
      Left = 848
      Top = 176
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Kick'
      TabOrder = 34
      OnClick = kick4Click
      SkinData.SkinSection = 'BUTTON'
    end
    object kick5: TsButton
      Left = 848
      Top = 200
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Kick'
      TabOrder = 35
      OnClick = kick5Click
      SkinData.SkinSection = 'BUTTON'
    end
    object kick6: TsButton
      Left = 848
      Top = 224
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Kick'
      TabOrder = 36
      OnClick = kick6Click
      SkinData.SkinSection = 'BUTTON'
    end
    object kick7: TsButton
      Left = 848
      Top = 248
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Kick'
      TabOrder = 37
      OnClick = kick7Click
      SkinData.SkinSection = 'BUTTON'
    end
    object kick8: TsButton
      Left = 848
      Top = 272
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Kick'
      TabOrder = 38
      OnClick = kick8Click
      SkinData.SkinSection = 'BUTTON'
    end
    object kick9: TsButton
      Left = 848
      Top = 296
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Kick'
      TabOrder = 39
      OnClick = kick9Click
      SkinData.SkinSection = 'BUTTON'
    end
    object kick10: TsButton
      Left = 848
      Top = 320
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Kick'
      TabOrder = 40
      OnClick = kick10Click
      SkinData.SkinSection = 'BUTTON'
    end
    object kick11: TsButton
      Left = 848
      Top = 344
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Kick'
      TabOrder = 41
      OnClick = kick11Click
      SkinData.SkinSection = 'BUTTON'
    end
    object kick12: TsButton
      Left = 848
      Top = 368
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Kick'
      TabOrder = 42
      OnClick = kick12Click
      SkinData.SkinSection = 'BUTTON'
    end
    object kick13: TsButton
      Left = 848
      Top = 392
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Kick'
      TabOrder = 43
      OnClick = kick13Click
      SkinData.SkinSection = 'BUTTON'
    end
    object kick14: TsButton
      Left = 848
      Top = 416
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Kick'
      TabOrder = 44
      OnClick = kick14Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton39: TsButton
      Left = 744
      Top = 64
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Send msg'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 45
      OnClick = sButton39Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sComboBox10: TsComboBox
      Left = 1008
      Top = 352
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 46
      Text = 'Unknown'
      Items.Strings = (
        'Unknown'
        'Europe'
        'South America')
    end
  end
  object sPanel11: TsPanel
    Left = 808
    Top = 192
    Width = 113
    Height = 17
    TabOrder = 12
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image12: TImage
      Left = 0
      Top = 0
      Width = 89
      Height = 17
      Visible = False
    end
    object Label9: TLabel
      Left = 0
      Top = 0
      Width = 51
      Height = 13
      Caption = 'oma player'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object inv1: TsLabelFX
      Left = 328
      Top = 40
      Width = 28
      Height = 21
      Cursor = crHandPoint
      Caption = 'inv1'
      OnClick = inv1Click
    end
    object inv2: TsLabelFX
      Left = 328
      Top = 56
      Width = 28
      Height = 21
      Cursor = crHandPoint
      Caption = 'inv2'
      OnClick = inv2Click
    end
    object inv3: TsLabelFX
      Left = 328
      Top = 72
      Width = 28
      Height = 21
      Cursor = crHandPoint
      Caption = 'inv3'
      OnClick = inv3Click
    end
    object inv4: TsLabelFX
      Left = 328
      Top = 88
      Width = 28
      Height = 21
      Cursor = crHandPoint
      Caption = 'inv4'
      OnClick = inv4Click
    end
    object inv5: TsLabelFX
      Left = 328
      Top = 104
      Width = 28
      Height = 21
      Cursor = crHandPoint
      Caption = 'inv5'
      OnClick = inv5Click
    end
    object inv6: TsLabelFX
      Left = 328
      Top = 120
      Width = 28
      Height = 21
      Cursor = crHandPoint
      Caption = 'inv6'
      OnClick = inv6Click
    end
    object inv7: TsLabelFX
      Left = 328
      Top = 136
      Width = 28
      Height = 21
      Cursor = crHandPoint
      Caption = 'inv7'
      OnClick = inv7Click
    end
    object inv8: TsLabelFX
      Left = 328
      Top = 152
      Width = 28
      Height = 21
      Cursor = crHandPoint
      Caption = 'inv8'
      OnClick = inv8Click
    end
    object inv9: TsLabelFX
      Left = 328
      Top = 168
      Width = 28
      Height = 21
      Cursor = crHandPoint
      Caption = 'inv9'
      OnClick = inv9Click
    end
    object inv10: TsLabelFX
      Left = 328
      Top = 184
      Width = 34
      Height = 21
      Cursor = crHandPoint
      Caption = 'inv10'
      OnClick = inv10Click
    end
    object inv20: TsLabelFX
      Left = 328
      Top = 344
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX96'
      OnClick = inv20Click
    end
    object inv11: TsLabelFX
      Left = 328
      Top = 200
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX87'
      OnClick = inv11Click
    end
    object inv12: TsLabelFX
      Left = 328
      Top = 216
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX88'
      OnClick = inv12Click
    end
    object inv13: TsLabelFX
      Left = 328
      Top = 232
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX89'
      OnClick = inv13Click
    end
    object inv15: TsLabelFX
      Left = 328
      Top = 264
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX91'
      OnClick = inv15Click
    end
    object inv14: TsLabelFX
      Left = 328
      Top = 248
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX90'
      OnClick = inv14Click
    end
    object inv16: TsLabelFX
      Left = 328
      Top = 280
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX92'
      OnClick = inv16Click
    end
    object inv17: TsLabelFX
      Left = 328
      Top = 296
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX93'
      OnClick = inv17Click
    end
    object inv18: TsLabelFX
      Left = 328
      Top = 312
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX94'
      OnClick = inv18Click
    end
    object inv19: TsLabelFX
      Left = 328
      Top = 328
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Caption = 'sLabelFX95'
      OnClick = inv19Click
    end
    object sLabelFX104: TsLabelFX
      Left = 536
      Top = 314
      Width = 29
      Height = 21
      Caption = 'Skin'
    end
    object sLabelFX105: TsLabelFX
      Left = 712
      Top = 314
      Width = 45
      Height = 21
      Caption = 'Number'
    end
    object sLabelFX106: TsLabelFX
      Left = 624
      Top = 314
      Width = 33
      Height = 21
      Caption = 'Shoe'
    end
    object sLabelFX107: TsLabelFX
      Left = 536
      Top = 360
      Width = 32
      Height = 21
      Caption = 'Body'
    end
    object sLabelFX10: TsLabelFX
      Left = 16
      Top = 40
      Width = 29
      Height = 21
      Caption = 'Text'
    end
    object sLabelFX132: TsLabelFX
      Left = 16
      Top = 88
      Width = 57
      Height = 21
      Caption = 'Logo URL'
    end
    object sLabelFX102: TsLabelFX
      Left = 624
      Top = 360
      Width = 27
      Height = 21
      Caption = 'Hair'
    end
    object sLabelFX128: TsLabelFX
      Left = 16
      Top = 192
      Width = 70
      Height = 21
      Caption = 'sLabelFX128'
    end
    object sLabelFX139: TsLabelFX
      Left = 16
      Top = 176
      Width = 70
      Height = 21
      Caption = 'sLabelFX139'
    end
    object sLabelFX141: TsLabelFX
      Left = 544
      Top = 240
      Width = 39
      Height = 21
      Caption = 'Speed'
    end
    object sLabelFX150: TsLabelFX
      Left = 544
      Top = 264
      Width = 49
      Height = 21
      Caption = 'Tackling'
    end
    object sLabelFX151: TsLabelFX
      Left = 544
      Top = 288
      Width = 48
      Height = 21
      Caption = 'Heading'
    end
    object sLabelFX152: TsLabelFX
      Left = 624
      Top = 240
      Width = 70
      Height = 21
      Caption = 'sLabelFX152'
      Kind.KindType = ktCustom
    end
    object sLabelFX153: TsLabelFX
      Left = 624
      Top = 264
      Width = 70
      Height = 21
      Caption = 'sLabelFX153'
      Kind.KindType = ktCustom
    end
    object sLabelFX154: TsLabelFX
      Left = 624
      Top = 288
      Width = 70
      Height = 21
      Caption = 'sLabelFX154'
      Kind.KindType = ktCustom
    end
    object acc1: TsButton
      Left = 400
      Top = 40
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 0
      OnClick = acc1Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej1: TsButton
      Left = 456
      Top = 40
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 1
      OnClick = rej1Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc2: TsButton
      Left = 400
      Top = 56
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 2
      OnClick = acc2Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej2: TsButton
      Left = 456
      Top = 56
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 3
      OnClick = rej2Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc3: TsButton
      Left = 400
      Top = 72
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 4
      OnClick = acc3Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej3: TsButton
      Left = 456
      Top = 72
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 5
      OnClick = rej3Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc6: TsButton
      Left = 400
      Top = 120
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 6
      OnClick = acc6Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej6: TsButton
      Left = 456
      Top = 120
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 7
      OnClick = rej6Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc4: TsButton
      Left = 400
      Top = 88
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 8
      OnClick = acc4Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej4: TsButton
      Left = 456
      Top = 88
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 9
      OnClick = rej4Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc5: TsButton
      Left = 400
      Top = 104
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 10
      OnClick = acc5Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej5: TsButton
      Left = 456
      Top = 104
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 11
      OnClick = rej5Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc9: TsButton
      Left = 400
      Top = 168
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 12
      OnClick = acc9Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej9: TsButton
      Left = 456
      Top = 168
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 13
      OnClick = rej9Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc7: TsButton
      Left = 400
      Top = 136
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 14
      OnClick = acc7Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej7: TsButton
      Left = 456
      Top = 136
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 15
      OnClick = rej7Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc8: TsButton
      Left = 400
      Top = 152
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 16
      OnClick = acc8Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej8: TsButton
      Left = 456
      Top = 152
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 17
      OnClick = rej8Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc12: TsButton
      Left = 400
      Top = 216
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 18
      OnClick = acc12Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej12: TsButton
      Left = 456
      Top = 216
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 19
      OnClick = rej12Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc10: TsButton
      Left = 400
      Top = 184
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 20
      OnClick = acc10Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej10: TsButton
      Left = 456
      Top = 184
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 21
      OnClick = rej10Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc11: TsButton
      Left = 400
      Top = 200
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 22
      OnClick = acc11Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej11: TsButton
      Left = 456
      Top = 200
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 23
      OnClick = rej11Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc15: TsButton
      Left = 400
      Top = 264
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 24
      OnClick = acc15Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej15: TsButton
      Left = 456
      Top = 264
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 25
      OnClick = rej15Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc13: TsButton
      Left = 400
      Top = 232
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 26
      OnClick = acc13Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej13: TsButton
      Left = 456
      Top = 232
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 27
      OnClick = rej13Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc14: TsButton
      Left = 400
      Top = 248
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 28
      OnClick = acc14Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej14: TsButton
      Left = 456
      Top = 248
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 29
      OnClick = rej14Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc18: TsButton
      Left = 400
      Top = 312
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 30
      OnClick = acc18Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej18: TsButton
      Left = 456
      Top = 312
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 31
      OnClick = rej18Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc16: TsButton
      Left = 400
      Top = 280
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 32
      OnClick = acc16Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej16: TsButton
      Left = 456
      Top = 280
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 33
      OnClick = rej16Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc17: TsButton
      Left = 400
      Top = 296
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 34
      OnClick = acc17Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej17: TsButton
      Left = 456
      Top = 296
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 35
      OnClick = rej17Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc19: TsButton
      Left = 400
      Top = 328
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 36
      OnClick = acc19Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej19: TsButton
      Left = 456
      Top = 328
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 37
      OnClick = rej19Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acc20: TsButton
      Left = 400
      Top = 344
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Accept'
      TabOrder = 38
      OnClick = acc20Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object rej20: TsButton
      Left = 456
      Top = 344
      Width = 57
      Height = 17
      Cursor = crHandPoint
      Caption = 'Reject'
      TabOrder = 39
      OnClick = rej20Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton13: TsButton
      Left = 16
      Top = 384
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Leave team'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 40
      OnClick = sButton13Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sComboBox12: TsComboBox
      Left = 536
      Top = 336
      Width = 81
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 41
      Text = 'Light'
      OnChange = sComboBox12Change
      Items.Strings = (
        'Light'
        'Medium'
        'Dark')
    end
    object sComboBox13: TsComboBox
      Left = 624
      Top = 336
      Width = 81
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 42
      Text = 'Black'
      OnChange = sComboBox13Change
      Items.Strings = (
        'Black'
        'White'
        'Blue'
        'Green'
        'Red'
        'Yellow'
        'Purple'
        'L blue')
    end
    object sComboBox14: TsComboBox
      Left = 712
      Top = 336
      Width = 81
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 43
      Text = '-'
      OnChange = sComboBox14Change
      Items.Strings = (
        '-'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20'
        '21'
        '22'
        '23'
        '24'
        '25'
        '26'
        '27'
        '28'
        '29'
        '30'
        '31'
        '32'
        '33'
        '34'
        '35'
        '36'
        '37'
        '38'
        '39'
        '40'
        '41'
        '42'
        '43'
        '44'
        '45'
        '46'
        '47'
        '48'
        '49'
        '50'
        '51'
        '52'
        '53'
        '54'
        '55'
        '56'
        '57'
        '58'
        '59'
        '60'
        '61'
        '62'
        '63'
        '64'
        '65'
        '66'
        '67'
        '68'
        '69'
        '70'
        '71'
        '72'
        '73'
        '74'
        '75'
        '76'
        '77'
        '78'
        '79'
        '80'
        '81'
        '82'
        '83'
        '84'
        '85'
        '86'
        '87'
        '88'
        '89'
        '90'
        '91'
        '92'
        '93'
        '94'
        '95'
        '96'
        '97'
        '98'
        '99')
    end
    object sComboBox15: TsComboBox
      Left = 536
      Top = 384
      Width = 81
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 44
      Text = 'Normal'
      OnChange = sComboBox15Change
      Items.Strings = (
        'Small'
        'Normal'
        'Large')
    end
    object sEdit12: TsEdit
      Left = 16
      Top = 112
      Width = 289
      Height = 21
      MaxLength = 100
      TabOrder = 45
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
    object sEdit13: TsEdit
      Left = 16
      Top = 64
      Width = 289
      Height = 21
      MaxLength = 255
      TabOrder = 46
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
    object sButton31: TsButton
      Left = 16
      Top = 144
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Caption = 'Save changes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 47
      OnClick = sButton31Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sComboBox7: TsComboBox
      Left = 624
      Top = 384
      Width = 81
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 48
      Text = 'Black'
      OnChange = sComboBox7Change
      Items.Strings = (
        'Black'
        'Dark brown'
        'Brown'
        'Ligth brown'
        'Blonde'
        'Bald')
    end
    object sButton33: TsButton
      Left = 16
      Top = 216
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Transfer vip'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 49
      Visible = False
      OnClick = sButton33Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton37: TsButton
      Left = 624
      Top = 416
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Caption = 'Save changes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 50
      OnClick = sButton37Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton22: TsButton
      Left = 16
      Top = 248
      Width = 75
      Height = 33
      Cursor = crHandPoint
      Caption = 'Manage account'
      TabOrder = 51
      OnClick = sButton22Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sCheckBox8: TsCheckBox
      Left = 544
      Top = 64
      Width = 99
      Height = 17
      Cursor = crHandPoint
      Caption = 'Looking for team'
      TabOrder = 52
      OnClick = sCheckBox8Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sComboBox8: TsComboBox
      Left = 16
      Top = 304
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 53
      Items.Strings = (
        'England'
        'Scotland'
        'Wales')
    end
    object sButton53: TsButton
      Left = 16
      Top = 328
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Set nationality'
      TabOrder = 54
      OnClick = sButton53Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel12: TsPanel
    Left = 544
    Top = 144
    Width = 169
    Height = 25
    TabOrder = 13
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image13: TImage
      Left = 0
      Top = 0
      Width = 89
      Height = 17
    end
    object Label10: TLabel
      Left = 0
      Top = 0
      Width = 65
      Height = 13
      Caption = 'public servers'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabelFX95: TsLabelFX
      Left = 56
      Top = 40
      Width = 68
      Height = 21
      Caption = 'Server name'
    end
    object sLabelFX96: TsLabelFX
      Left = 216
      Top = 40
      Width = 42
      Height = 21
      Caption = 'Players'
    end
    object pserv1: TsLabelFX
      Left = 56
      Top = 80
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv1'
      OnClick = pserv1Click
    end
    object pserv2: TsLabelFX
      Left = 56
      Top = 96
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv2'
      OnClick = pserv2Click
    end
    object pserv3: TsLabelFX
      Left = 56
      Top = 112
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv3'
      OnClick = pserv3Click
    end
    object pserv4: TsLabelFX
      Left = 56
      Top = 128
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv4'
      OnClick = pserv4Click
    end
    object pserv5: TsLabelFX
      Left = 56
      Top = 144
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv5'
      OnClick = pserv5Click
    end
    object pserv6: TsLabelFX
      Left = 56
      Top = 160
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv6'
      OnClick = pserv6Click
    end
    object pserv7: TsLabelFX
      Left = 56
      Top = 176
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv7'
      OnClick = pserv7Click
    end
    object pserv8: TsLabelFX
      Left = 56
      Top = 192
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv8'
      OnClick = pserv8Click
    end
    object pserv9: TsLabelFX
      Left = 56
      Top = 208
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv9'
      OnClick = pserv9Click
    end
    object pserv10: TsLabelFX
      Left = 56
      Top = 224
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv10'
      OnClick = pserv10Click
    end
    object pserv11: TsLabelFX
      Left = 56
      Top = 240
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv11'
      OnClick = pserv11Click
    end
    object pserv12: TsLabelFX
      Left = 56
      Top = 256
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv12'
      OnClick = pserv12Click
    end
    object pserv13: TsLabelFX
      Left = 56
      Top = 272
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv13'
      OnClick = pserv13Click
    end
    object pserv14: TsLabelFX
      Left = 56
      Top = 288
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv14'
      OnClick = pserv14Click
    end
    object pserv15: TsLabelFX
      Left = 56
      Top = 304
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv15'
      OnClick = pserv15Click
    end
    object pserv16: TsLabelFX
      Left = 56
      Top = 320
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv16'
      OnClick = pserv16Click
    end
    object pserv17: TsLabelFX
      Left = 56
      Top = 336
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv17'
      OnClick = pserv17Click
    end
    object pserv18: TsLabelFX
      Left = 56
      Top = 352
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv18'
      OnClick = pserv18Click
    end
    object pserv19: TsLabelFX
      Left = 56
      Top = 368
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv19'
      OnClick = pserv19Click
    end
    object pserv20: TsLabelFX
      Left = 56
      Top = 384
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv20'
      OnClick = pserv20Click
    end
    object sLabelFX97: TsLabelFX
      Left = 384
      Top = 80
      Width = 68
      Height = 21
      Caption = 'Server name'
    end
    object sLabelFX98: TsLabelFX
      Left = 384
      Top = 104
      Width = 18
      Height = 21
      Caption = 'IP'
    end
    object sLabelFX100: TsLabelFX
      Left = 456
      Top = 82
      Width = 70
      Height = 21
      Caption = 'sLabelFX100'
    end
    object sLabelFX101: TsLabelFX
      Left = 456
      Top = 106
      Width = 70
      Height = 21
      Caption = 'sLabelFX101'
    end
    object plrs1: TsLabelFX
      Left = 216
      Top = 80
      Width = 30
      Height = 21
      Caption = 'plrs1'
    end
    object plrs2: TsLabelFX
      Left = 216
      Top = 96
      Width = 30
      Height = 21
      Caption = 'plrs2'
    end
    object plrs3: TsLabelFX
      Left = 216
      Top = 112
      Width = 30
      Height = 21
      Caption = 'plrs3'
    end
    object plrs4: TsLabelFX
      Left = 216
      Top = 128
      Width = 30
      Height = 21
      Caption = 'plrs4'
    end
    object plrs5: TsLabelFX
      Left = 216
      Top = 144
      Width = 30
      Height = 21
      Caption = 'plrs5'
    end
    object plrs6: TsLabelFX
      Left = 216
      Top = 160
      Width = 30
      Height = 21
      Caption = 'plrs6'
    end
    object plrs7: TsLabelFX
      Left = 216
      Top = 176
      Width = 30
      Height = 21
      Caption = 'plrs7'
    end
    object plrs8: TsLabelFX
      Left = 216
      Top = 192
      Width = 30
      Height = 21
      Caption = 'plrs8'
    end
    object plrs9: TsLabelFX
      Left = 216
      Top = 208
      Width = 30
      Height = 21
      Caption = 'plrs9'
    end
    object plrs10: TsLabelFX
      Left = 216
      Top = 224
      Width = 36
      Height = 21
      Caption = 'plrs10'
    end
    object plrs11: TsLabelFX
      Left = 216
      Top = 240
      Width = 36
      Height = 21
      Caption = 'plrs11'
    end
    object plrs12: TsLabelFX
      Left = 216
      Top = 256
      Width = 36
      Height = 21
      Caption = 'plrs12'
    end
    object plrs13: TsLabelFX
      Left = 216
      Top = 272
      Width = 36
      Height = 21
      Caption = 'plrs13'
    end
    object plrs14: TsLabelFX
      Left = 216
      Top = 288
      Width = 36
      Height = 21
      Caption = 'plrs14'
    end
    object plrs15: TsLabelFX
      Left = 216
      Top = 304
      Width = 36
      Height = 21
      Caption = 'plrs15'
    end
    object plrs16: TsLabelFX
      Left = 216
      Top = 320
      Width = 36
      Height = 21
      Caption = 'plrs16'
    end
    object plrs17: TsLabelFX
      Left = 216
      Top = 336
      Width = 36
      Height = 21
      Caption = 'plrs17'
    end
    object plrs18: TsLabelFX
      Left = 216
      Top = 352
      Width = 36
      Height = 21
      Caption = 'plrs18'
    end
    object plrs19: TsLabelFX
      Left = 216
      Top = 368
      Width = 36
      Height = 21
      Caption = 'plrs19'
    end
    object plrs20: TsLabelFX
      Left = 216
      Top = 384
      Width = 36
      Height = 21
      Caption = 'plrs20'
    end
    object sLabelFX186: TsLabelFX
      Left = 384
      Top = 208
      Width = 42
      Height = 21
      Caption = 'Players'
    end
    object trainingPlrNameH1: TsLabelFX
      Left = 384
      Top = 240
      Width = 96
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameH1'
      OnClick = trainingPlrNameH1Click
    end
    object trainingPlrNameH2: TsLabelFX
      Left = 384
      Top = 256
      Width = 96
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameH2'
      OnClick = trainingPlrNameH2Click
    end
    object trainingPlrNameH3: TsLabelFX
      Left = 384
      Top = 272
      Width = 96
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameH3'
      OnClick = trainingPlrNameH3Click
    end
    object trainingPlrNameH4: TsLabelFX
      Left = 384
      Top = 288
      Width = 96
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameH4'
      OnClick = trainingPlrNameH4Click
    end
    object trainingPlrNameH5: TsLabelFX
      Left = 384
      Top = 304
      Width = 96
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameH5'
      OnClick = trainingPlrNameH5Click
    end
    object trainingPlrNameH6: TsLabelFX
      Left = 384
      Top = 320
      Width = 96
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameH6'
      OnClick = trainingPlrNameH6Click
    end
    object trainingPlrNameH7: TsLabelFX
      Left = 384
      Top = 336
      Width = 96
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameH7'
      OnClick = trainingPlrNameH7Click
    end
    object trainingPlrNameH8: TsLabelFX
      Left = 384
      Top = 352
      Width = 96
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameH8'
      OnClick = trainingPlrNameH8Click
    end
    object trainingPlrNameH9: TsLabelFX
      Left = 384
      Top = 368
      Width = 96
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameH9'
      OnClick = trainingPlrNameH9Click
    end
    object trainingPlrNameH10: TsLabelFX
      Left = 384
      Top = 384
      Width = 102
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameH10'
      OnClick = trainingPlrNameH10Click
    end
    object trainingPlrNameA1: TsLabelFX
      Left = 528
      Top = 240
      Width = 95
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameA1'
      OnClick = trainingPlrNameA1Click
    end
    object trainingPlrNameA2: TsLabelFX
      Left = 528
      Top = 256
      Width = 95
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameA2'
      OnClick = trainingPlrNameA2Click
    end
    object trainingPlrNameA3: TsLabelFX
      Left = 528
      Top = 272
      Width = 95
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameA3'
      OnClick = trainingPlrNameA3Click
    end
    object trainingPlrNameA4: TsLabelFX
      Left = 528
      Top = 288
      Width = 95
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameA4'
      OnClick = trainingPlrNameA4Click
    end
    object trainingPlrNameA5: TsLabelFX
      Left = 528
      Top = 304
      Width = 95
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameA5'
      OnClick = trainingPlrNameA5Click
    end
    object trainingPlrNameA6: TsLabelFX
      Left = 528
      Top = 320
      Width = 95
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameA6'
      OnClick = trainingPlrNameA6Click
    end
    object trainingPlrNameA7: TsLabelFX
      Left = 528
      Top = 336
      Width = 95
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameA7'
      OnClick = trainingPlrNameA7Click
    end
    object trainingPlrNameA8: TsLabelFX
      Left = 528
      Top = 352
      Width = 95
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameA8'
      OnClick = trainingPlrNameA8Click
    end
    object trainingPlrNameA9: TsLabelFX
      Left = 528
      Top = 368
      Width = 95
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameA9'
      OnClick = trainingPlrNameA9Click
    end
    object trainingPlrNameA10: TsLabelFX
      Left = 528
      Top = 384
      Width = 101
      Height = 21
      Cursor = crHandPoint
      Caption = 'trainingPlrNameA10'
      OnClick = trainingPlrNameA10Click
    end
    object sLabelFX188: TsLabelFX
      Left = 384
      Top = 168
      Width = 54
      Height = 21
      Caption = 'Password'
      Visible = False
    end
    object passworded1: TsLabelFX
      Left = 280
      Top = 80
      Width = 71
      Height = 21
      Caption = 'passworded1'
    end
    object passworded2: TsLabelFX
      Left = 280
      Top = 96
      Width = 71
      Height = 21
      Caption = 'passworded2'
    end
    object passworded3: TsLabelFX
      Left = 280
      Top = 112
      Width = 71
      Height = 21
      Caption = 'passworded3'
    end
    object passworded4: TsLabelFX
      Left = 280
      Top = 128
      Width = 71
      Height = 21
      Caption = 'passworded4'
    end
    object passworded5: TsLabelFX
      Left = 280
      Top = 144
      Width = 71
      Height = 21
      Caption = 'passworded5'
    end
    object passworded6: TsLabelFX
      Left = 280
      Top = 160
      Width = 71
      Height = 21
      Caption = 'passworded6'
    end
    object passworded7: TsLabelFX
      Left = 280
      Top = 176
      Width = 71
      Height = 21
      Caption = 'passworded7'
    end
    object passworded8: TsLabelFX
      Left = 280
      Top = 192
      Width = 71
      Height = 21
      Caption = 'passworded8'
    end
    object passworded9: TsLabelFX
      Left = 280
      Top = 208
      Width = 71
      Height = 21
      Caption = 'passworded9'
    end
    object passworded10: TsLabelFX
      Left = 280
      Top = 224
      Width = 77
      Height = 21
      Caption = 'passworded10'
    end
    object passworded11: TsLabelFX
      Left = 280
      Top = 240
      Width = 77
      Height = 21
      Caption = 'passworded11'
    end
    object passworded12: TsLabelFX
      Left = 280
      Top = 256
      Width = 77
      Height = 21
      Caption = 'passworded12'
    end
    object passworded13: TsLabelFX
      Left = 280
      Top = 272
      Width = 77
      Height = 21
      Caption = 'passworded13'
    end
    object passworded14: TsLabelFX
      Left = 280
      Top = 288
      Width = 77
      Height = 21
      Caption = 'passworded14'
    end
    object passworded15: TsLabelFX
      Left = 280
      Top = 304
      Width = 77
      Height = 21
      Caption = 'passworded15'
    end
    object passworded16: TsLabelFX
      Left = 280
      Top = 320
      Width = 77
      Height = 21
      Caption = 'passworded16'
    end
    object passworded17: TsLabelFX
      Left = 280
      Top = 336
      Width = 77
      Height = 21
      Caption = 'passworded17'
    end
    object passworded18: TsLabelFX
      Left = 280
      Top = 352
      Width = 77
      Height = 21
      Caption = 'passworded18'
    end
    object passworded19: TsLabelFX
      Left = 280
      Top = 368
      Width = 77
      Height = 21
      Caption = 'passworded19'
    end
    object passworded20: TsLabelFX
      Left = 280
      Top = 384
      Width = 77
      Height = 21
      Caption = 'passworded20'
    end
    object sScrollBar2: TsScrollBar
      Left = 16
      Top = 88
      Width = 16
      Height = 313
      Kind = sbVertical
      Max = 3
      PageSize = 0
      TabOrder = 0
      OnChange = sScrollBar2Change
      SkinManager = sSkinManager1
    end
    object sButton14: TsButton
      Left = 384
      Top = 128
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Join'
      TabOrder = 1
      OnClick = sButton14Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton8: TsButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Create'
      TabOrder = 2
      OnClick = sButton8Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sEdit26: TsEdit
      Left = 440
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 3
      Visible = False
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
    object sButton35: TsButton
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Filter'
      TabOrder = 4
      OnClick = sButton35Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel14: TsPanel
    Left = 680
    Top = 64
    Width = 153
    Height = 17
    TabOrder = 14
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image14: TImage
      Left = 0
      Top = 0
      Width = 105
      Height = 17
    end
    object Label11: TLabel
      Left = 0
      Top = 0
      Width = 75
      Height = 13
      Caption = 'challenge panel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabelFX109: TsLabelFX
      Left = 56
      Top = 32
      Width = 35
      Height = 21
      Cursor = crHandPoint
      Caption = 'Team'
    end
    object sLabelFX110: TsLabelFX
      Left = 192
      Top = 32
      Width = 73
      Height = 21
      Cursor = crHandPoint
      Caption = 'Players online'
    end
    object sLabelFX111: TsLabelFX
      Left = 280
      Top = 32
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Caption = 'Ranking'
    end
    object sLabelFX113: TsLabelFX
      Left = 352
      Top = 32
      Width = 42
      Height = 21
      Cursor = crHandPoint
      Caption = 'Playing'
    end
    object playing4: TsLabelFX
      Left = 352
      Top = 112
      Width = 47
      Height = 21
      Caption = 'playing4'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object chalteam1: TsLabelFX
      Left = 56
      Top = 64
      Width = 45
      Height = 21
      Cursor = crHandPoint
      Caption = 'Ilmasilta'
      OnClick = chalteam1Click
    end
    object chalteam2: TsLabelFX
      Left = 56
      Top = 80
      Width = 118
      Height = 21
      Cursor = crHandPoint
      Caption = 'WWWWWWWWWW'
      OnClick = chalteam2Click
    end
    object chalteam3: TsLabelFX
      Left = 56
      Top = 96
      Width = 57
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam3'
      OnClick = chalteam3Click
    end
    object chalteam4: TsLabelFX
      Left = 56
      Top = 112
      Width = 57
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam4'
      OnClick = chalteam4Click
    end
    object chalteam5: TsLabelFX
      Left = 56
      Top = 128
      Width = 57
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam5'
      OnClick = chalteam5Click
    end
    object chalteam6: TsLabelFX
      Left = 56
      Top = 144
      Width = 57
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam6'
      OnClick = chalteam6Click
    end
    object chalteam7: TsLabelFX
      Left = 56
      Top = 160
      Width = 57
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam7'
      OnClick = chalteam7Click
    end
    object chalteam8: TsLabelFX
      Left = 56
      Top = 176
      Width = 57
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam8'
      OnClick = chalteam8Click
    end
    object chalteam9: TsLabelFX
      Left = 56
      Top = 192
      Width = 57
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam9'
      OnClick = chalteam9Click
    end
    object chalteam10: TsLabelFX
      Left = 56
      Top = 208
      Width = 63
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam10'
      OnClick = chalteam10Click
    end
    object chalteam11: TsLabelFX
      Left = 56
      Top = 224
      Width = 63
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam11'
      OnClick = chalteam11Click
    end
    object chalteam12: TsLabelFX
      Left = 56
      Top = 240
      Width = 63
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam12'
      OnClick = chalteam12Click
    end
    object chalteam13: TsLabelFX
      Left = 56
      Top = 256
      Width = 63
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam13'
      OnClick = chalteam13Click
    end
    object chalteam14: TsLabelFX
      Left = 56
      Top = 272
      Width = 63
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam14'
      OnClick = chalteam14Click
    end
    object chalteam15: TsLabelFX
      Left = 56
      Top = 288
      Width = 63
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam15'
      OnClick = chalteam15Click
    end
    object chalteam16: TsLabelFX
      Left = 56
      Top = 304
      Width = 63
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam16'
      OnClick = chalteam16Click
    end
    object chalteam17: TsLabelFX
      Left = 56
      Top = 320
      Width = 63
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam17'
      OnClick = chalteam17Click
    end
    object chalteam18: TsLabelFX
      Left = 56
      Top = 336
      Width = 63
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam18'
      OnClick = chalteam18Click
    end
    object plrs_onl1: TsLabelFX
      Left = 192
      Top = 64
      Width = 14
      Height = 21
      Caption = '0'
    end
    object plrs_onl2: TsLabelFX
      Left = 192
      Top = 80
      Width = 20
      Height = 21
      Caption = '15'
    end
    object plrs_onl3: TsLabelFX
      Left = 192
      Top = 96
      Width = 20
      Height = 21
      Caption = '20'
    end
    object plrs_onl4: TsLabelFX
      Left = 192
      Top = 112
      Width = 14
      Height = 21
      Caption = '0'
    end
    object plrs_onl5: TsLabelFX
      Left = 192
      Top = 128
      Width = 50
      Height = 21
      Caption = 'plrs_onl5'
    end
    object plrs_onl6: TsLabelFX
      Left = 192
      Top = 144
      Width = 50
      Height = 21
      Caption = 'plrs_onl5'
    end
    object plrs_onl7: TsLabelFX
      Left = 192
      Top = 160
      Width = 50
      Height = 21
      Caption = 'plrs_onl5'
    end
    object plrs_onl8: TsLabelFX
      Left = 192
      Top = 176
      Width = 50
      Height = 21
      Caption = 'plrs_onl5'
    end
    object plrs_onl9: TsLabelFX
      Left = 192
      Top = 192
      Width = 50
      Height = 21
      Caption = 'plrs_onl5'
    end
    object plrs_onl11: TsLabelFX
      Left = 192
      Top = 224
      Width = 50
      Height = 21
      Caption = 'plrs_onl5'
    end
    object plrs_onl12: TsLabelFX
      Left = 192
      Top = 240
      Width = 50
      Height = 21
      Caption = 'plrs_onl5'
    end
    object plrs_onl13: TsLabelFX
      Left = 192
      Top = 256
      Width = 50
      Height = 21
      Caption = 'plrs_onl5'
    end
    object plrs_onl14: TsLabelFX
      Left = 192
      Top = 272
      Width = 50
      Height = 21
      Caption = 'plrs_onl5'
    end
    object plrs_onl17: TsLabelFX
      Left = 192
      Top = 320
      Width = 50
      Height = 21
      Caption = 'plrs_onl5'
    end
    object plrs_onl10: TsLabelFX
      Left = 192
      Top = 208
      Width = 50
      Height = 21
      Caption = 'plrs_onl5'
    end
    object plrs_onl15: TsLabelFX
      Left = 192
      Top = 288
      Width = 50
      Height = 21
      Caption = 'plrs_onl5'
    end
    object plrs_onl16: TsLabelFX
      Left = 192
      Top = 304
      Width = 50
      Height = 21
      Caption = 'plrs_onl5'
    end
    object plrs_onl18: TsLabelFX
      Left = 192
      Top = 336
      Width = 50
      Height = 21
      Caption = 'plrs_onl5'
    end
    object ranking1: TsLabelFX
      Left = 280
      Top = 64
      Width = 49
      Height = 21
      Caption = 'ranking1'
    end
    object ranking2: TsLabelFX
      Left = 280
      Top = 80
      Width = 49
      Height = 21
      Caption = 'ranking2'
    end
    object ranking3: TsLabelFX
      Left = 280
      Top = 96
      Width = 49
      Height = 21
      Caption = 'ranking3'
    end
    object ranking4: TsLabelFX
      Left = 280
      Top = 112
      Width = 49
      Height = 21
      Caption = 'ranking4'
    end
    object ranking5: TsLabelFX
      Left = 280
      Top = 128
      Width = 49
      Height = 21
      Caption = 'ranking5'
    end
    object ranking6: TsLabelFX
      Left = 280
      Top = 144
      Width = 49
      Height = 21
      Caption = 'ranking6'
    end
    object ranking7: TsLabelFX
      Left = 280
      Top = 160
      Width = 49
      Height = 21
      Caption = 'ranking7'
    end
    object ranking8: TsLabelFX
      Left = 280
      Top = 176
      Width = 49
      Height = 21
      Caption = 'ranking8'
    end
    object ranking9: TsLabelFX
      Left = 280
      Top = 192
      Width = 49
      Height = 21
      Caption = 'ranking9'
    end
    object ranking10: TsLabelFX
      Left = 280
      Top = 208
      Width = 55
      Height = 21
      Caption = 'ranking10'
    end
    object ranking11: TsLabelFX
      Left = 280
      Top = 224
      Width = 55
      Height = 21
      Caption = 'ranking11'
    end
    object ranking12: TsLabelFX
      Left = 280
      Top = 240
      Width = 55
      Height = 21
      Caption = 'ranking12'
    end
    object ranking13: TsLabelFX
      Left = 280
      Top = 256
      Width = 55
      Height = 21
      Caption = 'ranking13'
    end
    object ranking14: TsLabelFX
      Left = 280
      Top = 272
      Width = 55
      Height = 21
      Caption = 'ranking14'
    end
    object ranking15: TsLabelFX
      Left = 280
      Top = 288
      Width = 55
      Height = 21
      Caption = 'ranking15'
    end
    object ranking16: TsLabelFX
      Left = 280
      Top = 304
      Width = 55
      Height = 21
      Caption = 'ranking16'
    end
    object ranking17: TsLabelFX
      Left = 280
      Top = 320
      Width = 55
      Height = 21
      Caption = 'ranking17'
    end
    object ranking18: TsLabelFX
      Left = 280
      Top = 336
      Width = 55
      Height = 21
      Caption = 'ranking18'
    end
    object playing1: TsLabelFX
      Left = 352
      Top = 64
      Width = 47
      Height = 21
      Caption = 'playing1'
      Color = clBtnFace
      ParentColor = False
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing2: TsLabelFX
      Left = 352
      Top = 80
      Width = 47
      Height = 21
      Caption = 'playing2'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing3: TsLabelFX
      Left = 352
      Top = 96
      Width = 47
      Height = 21
      Caption = 'playing3'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing5: TsLabelFX
      Left = 352
      Top = 128
      Width = 47
      Height = 21
      Caption = 'playing5'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing6: TsLabelFX
      Left = 352
      Top = 144
      Width = 47
      Height = 21
      Caption = 'playing6'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing7: TsLabelFX
      Left = 352
      Top = 160
      Width = 47
      Height = 21
      Caption = 'playing7'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing8: TsLabelFX
      Left = 352
      Top = 176
      Width = 47
      Height = 21
      Caption = 'playing8'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing9: TsLabelFX
      Left = 352
      Top = 192
      Width = 47
      Height = 21
      Caption = 'playing9'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing10: TsLabelFX
      Left = 352
      Top = 208
      Width = 53
      Height = 21
      Caption = 'playing10'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing11: TsLabelFX
      Left = 352
      Top = 224
      Width = 53
      Height = 21
      Caption = 'playing11'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing12: TsLabelFX
      Left = 352
      Top = 240
      Width = 53
      Height = 21
      Caption = 'playing12'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing13: TsLabelFX
      Left = 352
      Top = 256
      Width = 53
      Height = 21
      Caption = 'playing13'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing14: TsLabelFX
      Left = 352
      Top = 272
      Width = 53
      Height = 21
      Caption = 'playing14'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing15: TsLabelFX
      Left = 352
      Top = 288
      Width = 53
      Height = 21
      Caption = 'playing15'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing16: TsLabelFX
      Left = 352
      Top = 304
      Width = 53
      Height = 21
      Caption = 'playing16'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing17: TsLabelFX
      Left = 352
      Top = 320
      Width = 53
      Height = 21
      Caption = 'playing17'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing18: TsLabelFX
      Left = 352
      Top = 336
      Width = 53
      Height = 21
      Caption = 'playing18'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object chalteam19: TsLabelFX
      Left = 56
      Top = 352
      Width = 63
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam19'
      OnClick = chalteam19Click
    end
    object chalteam20: TsLabelFX
      Left = 56
      Top = 368
      Width = 63
      Height = 21
      Cursor = crHandPoint
      Caption = 'chalteam20'
      OnClick = chalteam20Click
    end
    object plrs_onl19: TsLabelFX
      Left = 192
      Top = 352
      Width = 56
      Height = 21
      Caption = 'plrs_onl19'
    end
    object plrs_onl20: TsLabelFX
      Left = 192
      Top = 368
      Width = 56
      Height = 21
      Caption = 'plrs_onl20'
    end
    object ranking19: TsLabelFX
      Left = 280
      Top = 352
      Width = 55
      Height = 21
      Caption = 'ranking19'
    end
    object ranking20: TsLabelFX
      Left = 280
      Top = 368
      Width = 55
      Height = 21
      Caption = 'ranking20'
    end
    object playing19: TsLabelFX
      Left = 352
      Top = 352
      Width = 53
      Height = 21
      Caption = 'playing19'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object playing20: TsLabelFX
      Left = 352
      Top = 368
      Width = 53
      Height = 21
      Caption = 'playing20'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind.KindType = ktCustom
      Kind.Color = clRed
    end
    object chalXlabel1: TsLabelFX
      Left = 568
      Top = 56
      Width = 45
      Height = 21
      Caption = 'Ilmasilta'
    end
    object chalXlabel2: TsLabelFX
      Left = 568
      Top = 72
      Width = 164
      Height = 21
      Caption = 'G: 2678, W: 1700, D: 500, L:300'
    end
    object chalXlabel3: TsLabelFX
      Left = 568
      Top = 88
      Width = 63
      Height = 21
      Caption = 'chalXlabel3'
    end
    object chalXlabel7: TsLabelFX
      Left = 584
      Top = 144
      Width = 42
      Height = 21
      Caption = 'For win'
    end
    object chalXlabel8: TsLabelFX
      Left = 584
      Top = 168
      Width = 49
      Height = 21
      Caption = 'For draw'
    end
    object chalXlabel9: TsLabelFX
      Left = 584
      Top = 192
      Width = 45
      Height = 21
      Caption = 'For lose'
    end
    object chalXlabel10: TsLabelFX
      Left = 632
      Top = 144
      Width = 32
      Height = 21
      Caption = '+510'
    end
    object chalXlabel11: TsLabelFX
      Left = 632
      Top = 168
      Width = 32
      Height = 21
      Caption = '+210'
    end
    object chalXlabel12: TsLabelFX
      Left = 632
      Top = 192
      Width = 32
      Height = 21
      Caption = '+500'
    end
    object chalXlabel4: TsLabelFX
      Left = 568
      Top = 224
      Width = 45
      Height = 21
      Caption = 'Ilmasilta'
    end
    object chalXlabel5: TsLabelFX
      Left = 568
      Top = 240
      Width = 164
      Height = 21
      Caption = 'G: 2678, W: 1700, D: 500, L:300'
    end
    object chalXlabel6: TsLabelFX
      Left = 568
      Top = 256
      Width = 70
      Height = 21
      Caption = 'sLabelFX102'
    end
    object sLabelFX182: TsLabelFX
      Left = 424
      Top = 32
      Width = 49
      Height = 21
      Caption = 'Location'
    end
    object location1: TsLabelFX
      Left = 424
      Top = 64
      Width = 51
      Height = 21
      Caption = 'location1'
    end
    object location2: TsLabelFX
      Left = 424
      Top = 80
      Width = 51
      Height = 21
      Caption = 'location2'
    end
    object location3: TsLabelFX
      Left = 424
      Top = 96
      Width = 51
      Height = 21
      Caption = 'location3'
    end
    object location4: TsLabelFX
      Left = 424
      Top = 112
      Width = 51
      Height = 21
      Caption = 'location4'
    end
    object location5: TsLabelFX
      Left = 424
      Top = 128
      Width = 51
      Height = 21
      Caption = 'location5'
    end
    object location6: TsLabelFX
      Left = 424
      Top = 144
      Width = 51
      Height = 21
      Caption = 'location6'
    end
    object location7: TsLabelFX
      Left = 424
      Top = 160
      Width = 51
      Height = 21
      Caption = 'location7'
    end
    object location8: TsLabelFX
      Left = 424
      Top = 176
      Width = 51
      Height = 21
      Caption = 'location8'
    end
    object location9: TsLabelFX
      Left = 424
      Top = 192
      Width = 51
      Height = 21
      Caption = 'location9'
    end
    object location10: TsLabelFX
      Left = 424
      Top = 208
      Width = 57
      Height = 21
      Caption = 'location10'
    end
    object location11: TsLabelFX
      Left = 424
      Top = 224
      Width = 57
      Height = 21
      Caption = 'location11'
    end
    object location12: TsLabelFX
      Left = 424
      Top = 240
      Width = 57
      Height = 21
      Caption = 'location12'
    end
    object location13: TsLabelFX
      Left = 424
      Top = 256
      Width = 57
      Height = 21
      Caption = 'location13'
    end
    object location14: TsLabelFX
      Left = 424
      Top = 272
      Width = 57
      Height = 21
      Caption = 'location14'
    end
    object location15: TsLabelFX
      Left = 424
      Top = 288
      Width = 57
      Height = 21
      Caption = 'location15'
    end
    object location16: TsLabelFX
      Left = 424
      Top = 304
      Width = 57
      Height = 21
      Caption = 'location16'
    end
    object location17: TsLabelFX
      Left = 424
      Top = 320
      Width = 57
      Height = 21
      Caption = 'location17'
    end
    object location18: TsLabelFX
      Left = 424
      Top = 336
      Width = 57
      Height = 21
      Caption = 'location18'
    end
    object location19: TsLabelFX
      Left = 424
      Top = 352
      Width = 57
      Height = 21
      Caption = 'location19'
    end
    object location20: TsLabelFX
      Left = 424
      Top = 368
      Width = 57
      Height = 21
      Caption = 'location20'
    end
    object sLabelFX183: TsLabelFX
      Left = 568
      Top = 120
      Width = 76
      Height = 21
      Caption = 'Rank change:'
    end
    object sScrollBar3: TsScrollBar
      Left = 16
      Top = 72
      Width = 16
      Height = 313
      Cursor = crHandPoint
      Kind = sbVertical
      Max = 3
      PageSize = 0
      TabOrder = 0
      OnChange = sScrollBar3Change
      SkinManager = sSkinManager1
    end
    object sButton25: TsButton
      Left = 568
      Top = 288
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Challenge'
      TabOrder = 1
      OnClick = sButton25Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton29: TsButton
      Left = 568
      Top = 320
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Send msg'
      TabOrder = 2
      OnClick = sButton29Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton30: TsButton
      Left = 568
      Top = 352
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Show team'
      TabOrder = 3
      OnClick = sButton30Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel15: TsPanel
    Left = 664
    Top = 280
    Width = 105
    Height = 17
    TabOrder = 15
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image15: TImage
      Left = 0
      Top = 0
      Width = 89
      Height = 17
    end
    object Label12: TLabel
      Left = 0
      Top = 0
      Width = 87
      Height = 13
      Caption = 'challenge2 panel2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object kit_image1b: TImage
      Left = 80
      Top = 56
      Width = 70
      Height = 60
      Transparent = True
    end
    object kit_image2b: TImage
      Left = 360
      Top = 56
      Width = 70
      Height = 60
      Transparent = True
    end
    object kit_image3b: TImage
      Left = 80
      Top = 116
      Width = 70
      Height = 35
      Transparent = True
    end
    object kit_image4b: TImage
      Left = 360
      Top = 116
      Width = 70
      Height = 35
      Transparent = True
    end
    object kit_image5b: TImage
      Left = 80
      Top = 151
      Width = 70
      Height = 25
      Transparent = True
    end
    object kit_image6b: TImage
      Left = 360
      Top = 151
      Width = 70
      Height = 25
      Transparent = True
    end
    object sLabelFX119: TsLabelFX
      Left = 56
      Top = 24
      Width = 119
      Height = 32
      Caption = 'sLabelFX119'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sLabelFX120: TsLabelFX
      Left = 336
      Top = 24
      Width = 119
      Height = 32
      Caption = 'sLabelFX120'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sLabelFX121: TsLabelFX
      Left = 32
      Top = 336
      Width = 30
      Height = 21
      Caption = 'Host'
    end
    object sLabelFX129: TsLabelFX
      Left = 48
      Top = 232
      Width = 37
      Height = 21
      Caption = '5 vs 5'
    end
    object sButton24: TsButton
      Left = 80
      Top = 184
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Change'
      TabOrder = 0
      OnClick = sButton24Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton26: TsButton
      Left = 360
      Top = 184
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Change'
      TabOrder = 1
      OnClick = sButton26Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object Challenge: TsButton
      Left = 32
      Top = 384
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Challenge'
      TabOrder = 2
      OnClick = ChallengeClick
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sComboBox21: TsComboBox
      Left = 32
      Top = 360
      Width = 97
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 3
      Text = 'sComboBox21'
    end
    object sTrackBar3: TsTrackBar
      Left = 40
      Top = 248
      Width = 150
      Height = 33
      Cursor = crHandPoint
      Min = 5
      Position = 5
      TabOrder = 4
      ThumbLength = 16
      OnChange = sTrackBar3Change
      SkinData.SkinSection = 'TRACKBAR'
    end
  end
  object sPanel16: TsPanel
    Left = 848
    Top = 408
    Width = 105
    Height = 25
    TabOrder = 16
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image16: TImage
      Left = 0
      Top = 0
      Width = 57
      Height = 17
    end
    object Label13: TLabel
      Left = 0
      Top = 0
      Width = 47
      Height = 13
      Caption = 'livescores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabelFX122: TsLabelFX
      Left = 56
      Top = 40
      Width = 31
      Height = 21
      Caption = 'Time'
    end
    object sLabelFX123: TsLabelFX
      Left = 104
      Top = 40
      Width = 36
      Height = 21
      Caption = 'Score'
    end
    object sLabelFX124: TsLabelFX
      Left = 152
      Top = 40
      Width = 38
      Height = 21
      Caption = 'Match'
    end
    object time1: TsLabelFX
      Left = 56
      Top = 72
      Width = 38
      Height = 21
      Caption = '0 mins'
    end
    object time2: TsLabelFX
      Left = 56
      Top = 88
      Width = 44
      Height = 21
      Caption = '90 mins'
    end
    object time3: TsLabelFX
      Left = 56
      Top = 104
      Width = 44
      Height = 21
      Caption = '90 mins'
    end
    object time4: TsLabelFX
      Left = 56
      Top = 120
      Width = 44
      Height = 21
      Caption = '90 mins'
    end
    object time5: TsLabelFX
      Left = 56
      Top = 136
      Width = 44
      Height = 21
      Caption = '90 mins'
    end
    object time6: TsLabelFX
      Left = 56
      Top = 152
      Width = 44
      Height = 21
      Caption = '90 mins'
    end
    object time7: TsLabelFX
      Left = 56
      Top = 168
      Width = 44
      Height = 21
      Caption = '90 mins'
    end
    object time8: TsLabelFX
      Left = 56
      Top = 184
      Width = 44
      Height = 21
      Caption = '90 mins'
    end
    object time9: TsLabelFX
      Left = 56
      Top = 200
      Width = 33
      Height = 21
      Caption = 'time9'
    end
    object time10: TsLabelFX
      Left = 56
      Top = 216
      Width = 44
      Height = 21
      Caption = '90 mins'
    end
    object time11: TsLabelFX
      Left = 56
      Top = 232
      Width = 44
      Height = 21
      Caption = '90 mins'
    end
    object time12: TsLabelFX
      Left = 56
      Top = 248
      Width = 39
      Height = 21
      Caption = 'time12'
    end
    object time13: TsLabelFX
      Left = 56
      Top = 264
      Width = 39
      Height = 21
      Caption = 'time13'
    end
    object time14: TsLabelFX
      Left = 56
      Top = 280
      Width = 39
      Height = 21
      Caption = 'time14'
    end
    object time15: TsLabelFX
      Left = 56
      Top = 296
      Width = 39
      Height = 21
      Caption = 'time15'
    end
    object time16: TsLabelFX
      Left = 56
      Top = 312
      Width = 39
      Height = 21
      Caption = 'time16'
    end
    object time17: TsLabelFX
      Left = 56
      Top = 328
      Width = 39
      Height = 21
      Caption = 'time17'
    end
    object time18: TsLabelFX
      Left = 56
      Top = 344
      Width = 39
      Height = 21
      Caption = 'time18'
    end
    object time19: TsLabelFX
      Left = 56
      Top = 360
      Width = 39
      Height = 21
      Caption = 'time19'
    end
    object time20: TsLabelFX
      Left = 56
      Top = 376
      Width = 39
      Height = 21
      Caption = 'time20'
    end
    object score1: TsLabelFX
      Left = 104
      Top = 72
      Width = 23
      Height = 21
      Caption = '0-0'
    end
    object score2: TsLabelFX
      Left = 104
      Top = 88
      Width = 23
      Height = 21
      Caption = '1-1'
    end
    object score3: TsLabelFX
      Left = 104
      Top = 104
      Width = 35
      Height = 21
      Caption = '77-77'
    end
    object score4: TsLabelFX
      Left = 104
      Top = 120
      Width = 35
      Height = 21
      Caption = '777-0'
    end
    object score5: TsLabelFX
      Left = 104
      Top = 136
      Width = 40
      Height = 21
      Caption = 'score5'
    end
    object score6: TsLabelFX
      Left = 104
      Top = 152
      Width = 40
      Height = 21
      Caption = 'score6'
    end
    object score7: TsLabelFX
      Left = 104
      Top = 168
      Width = 40
      Height = 21
      Caption = 'score7'
    end
    object score8: TsLabelFX
      Left = 104
      Top = 184
      Width = 40
      Height = 21
      Caption = 'score8'
    end
    object score9: TsLabelFX
      Left = 104
      Top = 200
      Width = 40
      Height = 21
      Caption = 'score9'
    end
    object score10: TsLabelFX
      Left = 104
      Top = 216
      Width = 46
      Height = 21
      Caption = 'score10'
    end
    object score11: TsLabelFX
      Left = 104
      Top = 232
      Width = 46
      Height = 21
      Caption = 'score11'
    end
    object score12: TsLabelFX
      Left = 104
      Top = 248
      Width = 46
      Height = 21
      Caption = 'score12'
    end
    object score13: TsLabelFX
      Left = 104
      Top = 264
      Width = 46
      Height = 21
      Caption = 'score13'
    end
    object score14: TsLabelFX
      Left = 104
      Top = 280
      Width = 46
      Height = 21
      Caption = 'score14'
    end
    object score15: TsLabelFX
      Left = 104
      Top = 296
      Width = 46
      Height = 21
      Caption = 'score15'
    end
    object score16: TsLabelFX
      Left = 104
      Top = 312
      Width = 46
      Height = 21
      Caption = 'score16'
    end
    object score17: TsLabelFX
      Left = 104
      Top = 328
      Width = 46
      Height = 21
      Caption = 'score17'
    end
    object score18: TsLabelFX
      Left = 104
      Top = 344
      Width = 46
      Height = 21
      Caption = 'score18'
    end
    object score19: TsLabelFX
      Left = 104
      Top = 360
      Width = 46
      Height = 21
      Caption = 'score19'
    end
    object score20: TsLabelFX
      Left = 104
      Top = 376
      Width = 46
      Height = 21
      Caption = 'score20'
    end
    object match1: TsLabelFX
      Left = 152
      Top = 72
      Width = 43
      Height = 21
      Cursor = crHandPoint
      Caption = 'match1'
      OnClick = match1Click
    end
    object match2: TsLabelFX
      Left = 152
      Top = 88
      Width = 43
      Height = 21
      Cursor = crHandPoint
      Caption = 'match2'
      OnClick = match2Click
    end
    object match3: TsLabelFX
      Left = 152
      Top = 104
      Width = 43
      Height = 21
      Cursor = crHandPoint
      Caption = 'match3'
      OnClick = match3Click
    end
    object match4: TsLabelFX
      Left = 152
      Top = 120
      Width = 43
      Height = 21
      Cursor = crHandPoint
      Caption = 'match4'
      OnClick = match4Click
    end
    object match5: TsLabelFX
      Left = 152
      Top = 136
      Width = 43
      Height = 21
      Cursor = crHandPoint
      Caption = 'match5'
      OnClick = match5Click
    end
    object match6: TsLabelFX
      Left = 152
      Top = 152
      Width = 43
      Height = 21
      Cursor = crHandPoint
      Caption = 'match6'
      OnClick = match6Click
    end
    object match7: TsLabelFX
      Left = 152
      Top = 168
      Width = 43
      Height = 21
      Cursor = crHandPoint
      Caption = 'match7'
      OnClick = match7Click
    end
    object match8: TsLabelFX
      Left = 152
      Top = 184
      Width = 43
      Height = 21
      Cursor = crHandPoint
      Caption = 'match8'
      OnClick = match8Click
    end
    object match9: TsLabelFX
      Left = 152
      Top = 200
      Width = 43
      Height = 21
      Cursor = crHandPoint
      Caption = 'match9'
      OnClick = match9Click
    end
    object match10: TsLabelFX
      Left = 152
      Top = 216
      Width = 49
      Height = 21
      Cursor = crHandPoint
      Caption = 'match10'
      OnClick = match10Click
    end
    object match11: TsLabelFX
      Left = 152
      Top = 232
      Width = 49
      Height = 21
      Cursor = crHandPoint
      Caption = 'match11'
      OnClick = match11Click
    end
    object match12: TsLabelFX
      Left = 152
      Top = 248
      Width = 49
      Height = 21
      Cursor = crHandPoint
      Caption = 'match12'
      OnClick = match12Click
    end
    object match13: TsLabelFX
      Left = 152
      Top = 264
      Width = 49
      Height = 21
      Cursor = crHandPoint
      Caption = 'match13'
      OnClick = match13Click
    end
    object match14: TsLabelFX
      Left = 152
      Top = 280
      Width = 49
      Height = 21
      Cursor = crHandPoint
      Caption = 'match14'
      OnClick = match14Click
    end
    object match15: TsLabelFX
      Left = 152
      Top = 296
      Width = 49
      Height = 21
      Cursor = crHandPoint
      Caption = 'match15'
      OnClick = match15Click
    end
    object match16: TsLabelFX
      Left = 152
      Top = 312
      Width = 49
      Height = 21
      Cursor = crHandPoint
      Caption = 'match16'
      OnClick = match16Click
    end
    object match17: TsLabelFX
      Left = 152
      Top = 328
      Width = 49
      Height = 21
      Cursor = crHandPoint
      Caption = 'match17'
      OnClick = match17Click
    end
    object match18: TsLabelFX
      Left = 152
      Top = 344
      Width = 49
      Height = 21
      Cursor = crHandPoint
      Caption = 'match18'
      OnClick = match18Click
    end
    object match19: TsLabelFX
      Left = 152
      Top = 360
      Width = 49
      Height = 21
      Cursor = crHandPoint
      Caption = 'match19'
      OnClick = match19Click
    end
    object match20: TsLabelFX
      Left = 152
      Top = 376
      Width = 49
      Height = 21
      Cursor = crHandPoint
      Caption = 'match20'
      OnClick = match20Click
    end
    object sLabelFX125: TsLabelFX
      Left = 328
      Top = 88
      Width = 18
      Height = 21
      Caption = 'IP'
    end
    object sLabelFX127: TsLabelFX
      Left = 368
      Top = 88
      Width = 70
      Height = 21
      Caption = 'sLabelFX127'
    end
    object sScrollBar4: TsScrollBar
      Left = 16
      Top = 80
      Width = 16
      Height = 313
      Kind = sbVertical
      Max = 3
      PageSize = 0
      TabOrder = 0
      OnChange = sScrollBar4Change
      SkinManager = sSkinManager1
    end
    object sButton27: TsButton
      Left = 336
      Top = 152
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Join'
      TabOrder = 1
      OnClick = sButton27Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton588: TsButton
      Left = 336
      Top = 184
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Spectate'
      TabOrder = 2
      OnClick = sButton588Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel17: TsPanel
    Left = 856
    Top = 56
    Width = 89
    Height = 25
    TabOrder = 17
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image19: TImage
      Left = 0
      Top = 0
      Width = 65
      Height = 17
    end
    object Label14: TLabel
      Left = 0
      Top = 0
      Width = 70
      Height = 13
      Caption = 'PUBLIC CHAT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sListBox4: TsListBox
      Left = 752
      Top = 8
      Width = 153
      Height = 433
      AutoCompleteDelay = 500
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
      ItemHeight = 13
      Sorted = True
      TabOrder = 0
      OnClick = sListBox4Click
    end
    object sRichEdit2: TsRichEdit
      Left = 8
      Top = 8
      Width = 737
      Height = 433
      ScrollBars = ssVertical
      TabOrder = 1
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
    end
  end
  object sPanel13: TsPanel
    Left = 792
    Top = 328
    Width = 129
    Height = 17
    TabOrder = 18
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image20: TImage
      Left = 0
      Top = 0
      Width = 89
      Height = 17
    end
    object Label15: TLabel
      Left = 0
      Top = 0
      Width = 53
      Height = 13
      Caption = 'player stats'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object pssija1: TsLabelFX
      Left = 56
      Top = 80
      Width = 14
      Height = 21
      Caption = '1'
    end
    object pssija2: TsLabelFX
      Left = 56
      Top = 96
      Width = 14
      Height = 21
      Caption = '2'
    end
    object pssija3: TsLabelFX
      Left = 56
      Top = 112
      Width = 14
      Height = 21
      Caption = '3'
    end
    object pssija4: TsLabelFX
      Left = 56
      Top = 128
      Width = 14
      Height = 21
      Caption = '4'
    end
    object pssija5: TsLabelFX
      Left = 56
      Top = 144
      Width = 40
      Height = 21
      Caption = 'pserv5'
    end
    object pssija6: TsLabelFX
      Left = 56
      Top = 160
      Width = 40
      Height = 21
      Caption = 'pserv6'
    end
    object pssija7: TsLabelFX
      Left = 56
      Top = 176
      Width = 40
      Height = 21
      Caption = 'pserv7'
    end
    object pssija8: TsLabelFX
      Left = 56
      Top = 192
      Width = 40
      Height = 21
      Caption = 'pserv8'
    end
    object pssija9: TsLabelFX
      Left = 56
      Top = 208
      Width = 40
      Height = 21
      Caption = 'pserv9'
    end
    object pssija10: TsLabelFX
      Left = 56
      Top = 224
      Width = 46
      Height = 21
      Caption = 'pserv10'
    end
    object pssija11: TsLabelFX
      Left = 56
      Top = 240
      Width = 46
      Height = 21
      Caption = 'pserv11'
    end
    object pssija12: TsLabelFX
      Left = 56
      Top = 256
      Width = 46
      Height = 21
      Caption = 'pserv12'
    end
    object pssija13: TsLabelFX
      Left = 56
      Top = 272
      Width = 46
      Height = 21
      Caption = 'pserv13'
    end
    object pssija14: TsLabelFX
      Left = 56
      Top = 288
      Width = 46
      Height = 21
      Caption = 'pserv14'
    end
    object pssija15: TsLabelFX
      Left = 56
      Top = 304
      Width = 46
      Height = 21
      Caption = 'pserv15'
    end
    object pssija16: TsLabelFX
      Left = 56
      Top = 320
      Width = 46
      Height = 21
      Caption = 'pserv16'
    end
    object pssija17: TsLabelFX
      Left = 56
      Top = 336
      Width = 46
      Height = 21
      Caption = 'pserv17'
    end
    object pssija18: TsLabelFX
      Left = 56
      Top = 352
      Width = 46
      Height = 21
      Caption = 'pserv18'
    end
    object pssija19: TsLabelFX
      Left = 56
      Top = 368
      Width = 46
      Height = 21
      Caption = 'pserv19'
    end
    object pssija20: TsLabelFX
      Left = 56
      Top = 384
      Width = 46
      Height = 21
      Caption = 'pserv20'
    end
    object psname1: TsLabelFX
      Left = 72
      Top = 80
      Width = 61
      Height = 21
      Cursor = crHandPoint
      Caption = 'HoviSeppo'
      OnClick = psname1Click
    end
    object psname2: TsLabelFX
      Left = 72
      Top = 96
      Width = 56
      Height = 21
      Cursor = crHandPoint
      Caption = 'tommyboo'
      OnClick = psname2Click
    end
    object psname3: TsLabelFX
      Left = 72
      Top = 112
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv3'
      OnClick = psname3Click
    end
    object psname4: TsLabelFX
      Left = 72
      Top = 128
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv4'
      OnClick = psname4Click
    end
    object psname5: TsLabelFX
      Left = 72
      Top = 144
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv5'
      OnClick = psname5Click
    end
    object psname6: TsLabelFX
      Left = 72
      Top = 160
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv6'
      OnClick = psname6Click
    end
    object psname7: TsLabelFX
      Left = 72
      Top = 176
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv7'
      OnClick = psname7Click
    end
    object psname8: TsLabelFX
      Left = 72
      Top = 192
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv8'
      OnClick = psname8Click
    end
    object psname9: TsLabelFX
      Left = 72
      Top = 208
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv9'
      OnClick = psname9Click
    end
    object psname10: TsLabelFX
      Left = 72
      Top = 224
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv10'
      OnClick = psname10Click
    end
    object psname11: TsLabelFX
      Left = 72
      Top = 240
      Width = 46
      Height = 21
      Caption = 'pserv11'
      OnClick = psname11Click
    end
    object psname12: TsLabelFX
      Left = 72
      Top = 256
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv12'
      OnClick = psname12Click
    end
    object psname13: TsLabelFX
      Left = 72
      Top = 272
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv13'
      OnClick = psname13Click
    end
    object psname14: TsLabelFX
      Left = 72
      Top = 288
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv14'
      OnClick = psname14Click
    end
    object psname15: TsLabelFX
      Left = 72
      Top = 304
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv15'
      OnClick = psname15Click
    end
    object psname16: TsLabelFX
      Left = 72
      Top = 320
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv16'
      OnClick = psname16Click
    end
    object psname17: TsLabelFX
      Left = 72
      Top = 336
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv17'
      OnClick = psname17Click
    end
    object psname18: TsLabelFX
      Left = 72
      Top = 352
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv18'
      OnClick = psname18Click
    end
    object psname19: TsLabelFX
      Left = 72
      Top = 368
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv19'
      OnClick = psname19Click
    end
    object psname20: TsLabelFX
      Left = 72
      Top = 384
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv20'
      OnClick = psname20Click
    end
    object psteam1: TsLabelFX
      Left = 200
      Top = 80
      Width = 45
      Height = 21
      Cursor = crHandPoint
      Caption = 'Ilmasilta'
      OnClick = psteam1Click
    end
    object psteam2: TsLabelFX
      Left = 200
      Top = 96
      Width = 67
      Height = 21
      Cursor = crHandPoint
      Caption = 'Huhupuheet'
      OnClick = psteam2Click
    end
    object psteam3: TsLabelFX
      Left = 200
      Top = 112
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv3'
      OnClick = psteam3Click
    end
    object psteam4: TsLabelFX
      Left = 200
      Top = 128
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv4'
      OnClick = psteam4Click
    end
    object psteam5: TsLabelFX
      Left = 200
      Top = 144
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv5'
      OnClick = psteam5Click
    end
    object psteam6: TsLabelFX
      Left = 200
      Top = 160
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv6'
      OnClick = psteam6Click
    end
    object psteam7: TsLabelFX
      Left = 200
      Top = 176
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv7'
      OnClick = psteam7Click
    end
    object psteam8: TsLabelFX
      Left = 200
      Top = 192
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv8'
      OnClick = psteam8Click
    end
    object psteam9: TsLabelFX
      Left = 200
      Top = 208
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv9'
      OnClick = psteam9Click
    end
    object psteam10: TsLabelFX
      Left = 200
      Top = 224
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv10'
      OnClick = psteam10Click
    end
    object psteam11: TsLabelFX
      Left = 200
      Top = 240
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv11'
      OnClick = psteam11Click
    end
    object psteam12: TsLabelFX
      Left = 200
      Top = 256
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv12'
      OnClick = psteam12Click
    end
    object psteam13: TsLabelFX
      Left = 200
      Top = 272
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv13'
      OnClick = psteam13Click
    end
    object psteam14: TsLabelFX
      Left = 200
      Top = 288
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv14'
      OnClick = psteam14Click
    end
    object psteam15: TsLabelFX
      Left = 200
      Top = 304
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv15'
      OnClick = psteam15Click
    end
    object psteam16: TsLabelFX
      Left = 200
      Top = 320
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv16'
      OnClick = psteam16Click
    end
    object psteam17: TsLabelFX
      Left = 200
      Top = 336
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv17'
      OnClick = psteam17Click
    end
    object psteam18: TsLabelFX
      Left = 200
      Top = 352
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv18'
      OnClick = psteam18Click
    end
    object psteam19: TsLabelFX
      Left = 200
      Top = 368
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv19'
      OnClick = psteam19Click
    end
    object psteam20: TsLabelFX
      Left = 200
      Top = 384
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv20'
      OnClick = psteam20Click
    end
    object psapps1: TsLabelFX
      Left = 320
      Top = 80
      Width = 38
      Height = 21
      Caption = '10000'
    end
    object psapps2: TsLabelFX
      Left = 320
      Top = 96
      Width = 40
      Height = 21
      Caption = 'pserv2'
    end
    object psapps3: TsLabelFX
      Left = 320
      Top = 112
      Width = 40
      Height = 21
      Caption = 'pserv3'
    end
    object psapps4: TsLabelFX
      Left = 320
      Top = 128
      Width = 40
      Height = 21
      Caption = 'pserv4'
    end
    object psapps5: TsLabelFX
      Left = 320
      Top = 144
      Width = 40
      Height = 21
      Caption = 'pserv5'
    end
    object psapps6: TsLabelFX
      Left = 320
      Top = 160
      Width = 40
      Height = 21
      Caption = 'pserv6'
    end
    object psapps7: TsLabelFX
      Left = 320
      Top = 176
      Width = 40
      Height = 21
      Caption = 'pserv7'
    end
    object psapps8: TsLabelFX
      Left = 320
      Top = 192
      Width = 40
      Height = 21
      Caption = 'pserv8'
    end
    object psapps9: TsLabelFX
      Left = 320
      Top = 208
      Width = 40
      Height = 21
      Caption = 'pserv9'
    end
    object psapps10: TsLabelFX
      Left = 320
      Top = 224
      Width = 46
      Height = 21
      Caption = 'pserv10'
    end
    object psapps11: TsLabelFX
      Left = 320
      Top = 240
      Width = 46
      Height = 21
      Caption = 'pserv11'
    end
    object psapps12: TsLabelFX
      Left = 320
      Top = 256
      Width = 46
      Height = 21
      Caption = 'pserv12'
    end
    object psapps13: TsLabelFX
      Left = 320
      Top = 272
      Width = 46
      Height = 21
      Caption = 'pserv13'
    end
    object psapps14: TsLabelFX
      Left = 320
      Top = 288
      Width = 46
      Height = 21
      Caption = 'pserv14'
    end
    object psapps15: TsLabelFX
      Left = 320
      Top = 304
      Width = 46
      Height = 21
      Caption = 'pserv15'
    end
    object psapps16: TsLabelFX
      Left = 320
      Top = 320
      Width = 46
      Height = 21
      Caption = 'pserv16'
    end
    object psapps17: TsLabelFX
      Left = 320
      Top = 336
      Width = 46
      Height = 21
      Caption = 'pserv17'
    end
    object psapps18: TsLabelFX
      Left = 320
      Top = 352
      Width = 46
      Height = 21
      Caption = 'pserv18'
    end
    object psapps19: TsLabelFX
      Left = 320
      Top = 368
      Width = 46
      Height = 21
      Caption = 'pserv19'
    end
    object psapps20: TsLabelFX
      Left = 320
      Top = 384
      Width = 46
      Height = 21
      Caption = 'pserv20'
    end
    object psgls1: TsLabelFX
      Left = 376
      Top = 80
      Width = 38
      Height = 21
      Caption = '10000'
    end
    object psgls2: TsLabelFX
      Left = 376
      Top = 96
      Width = 40
      Height = 21
      Caption = 'pserv2'
    end
    object psgls3: TsLabelFX
      Left = 376
      Top = 112
      Width = 40
      Height = 21
      Caption = 'pserv3'
    end
    object psgls4: TsLabelFX
      Left = 376
      Top = 128
      Width = 40
      Height = 21
      Caption = 'pserv4'
    end
    object psgls5: TsLabelFX
      Left = 376
      Top = 144
      Width = 40
      Height = 21
      Caption = 'pserv5'
    end
    object psgls6: TsLabelFX
      Left = 376
      Top = 160
      Width = 40
      Height = 21
      Caption = 'pserv6'
    end
    object psgls7: TsLabelFX
      Left = 376
      Top = 176
      Width = 40
      Height = 21
      Caption = 'pserv7'
    end
    object psgls8: TsLabelFX
      Left = 376
      Top = 192
      Width = 40
      Height = 21
      Caption = 'pserv8'
    end
    object psgls9: TsLabelFX
      Left = 376
      Top = 208
      Width = 40
      Height = 21
      Caption = 'pserv9'
    end
    object psgls10: TsLabelFX
      Left = 376
      Top = 224
      Width = 46
      Height = 21
      Caption = 'pserv10'
    end
    object psgls11: TsLabelFX
      Left = 376
      Top = 240
      Width = 46
      Height = 21
      Caption = 'pserv11'
    end
    object psgls12: TsLabelFX
      Left = 376
      Top = 256
      Width = 46
      Height = 21
      Caption = 'pserv12'
    end
    object psgls13: TsLabelFX
      Left = 376
      Top = 272
      Width = 46
      Height = 21
      Caption = 'pserv13'
    end
    object psgls14: TsLabelFX
      Left = 376
      Top = 288
      Width = 46
      Height = 21
      Caption = 'pserv14'
    end
    object psgls15: TsLabelFX
      Left = 376
      Top = 304
      Width = 46
      Height = 21
      Caption = 'pserv15'
    end
    object psgls16: TsLabelFX
      Left = 376
      Top = 320
      Width = 46
      Height = 21
      Caption = 'pserv16'
    end
    object psgls17: TsLabelFX
      Left = 376
      Top = 336
      Width = 46
      Height = 21
      Caption = 'pserv17'
    end
    object psgls18: TsLabelFX
      Left = 376
      Top = 352
      Width = 46
      Height = 21
      Caption = 'pserv18'
    end
    object psgls19: TsLabelFX
      Left = 376
      Top = 368
      Width = 46
      Height = 21
      Caption = 'pserv19'
    end
    object psgls20: TsLabelFX
      Left = 376
      Top = 384
      Width = 46
      Height = 21
      Caption = 'pserv20'
    end
    object psasts1: TsLabelFX
      Left = 432
      Top = 80
      Width = 38
      Height = 21
      Caption = '10000'
    end
    object psasts2: TsLabelFX
      Left = 432
      Top = 96
      Width = 40
      Height = 21
      Caption = 'pserv2'
    end
    object psasts3: TsLabelFX
      Left = 432
      Top = 112
      Width = 40
      Height = 21
      Caption = 'pserv3'
    end
    object psasts4: TsLabelFX
      Left = 432
      Top = 128
      Width = 40
      Height = 21
      Caption = 'pserv4'
    end
    object psasts5: TsLabelFX
      Left = 432
      Top = 144
      Width = 40
      Height = 21
      Caption = 'pserv5'
    end
    object psasts6: TsLabelFX
      Left = 432
      Top = 160
      Width = 40
      Height = 21
      Caption = 'pserv6'
    end
    object psasts7: TsLabelFX
      Left = 432
      Top = 176
      Width = 40
      Height = 21
      Caption = 'pserv7'
    end
    object psasts8: TsLabelFX
      Left = 432
      Top = 192
      Width = 40
      Height = 21
      Caption = 'pserv8'
    end
    object psasts9: TsLabelFX
      Left = 432
      Top = 208
      Width = 40
      Height = 21
      Caption = 'pserv9'
    end
    object psasts10: TsLabelFX
      Left = 432
      Top = 224
      Width = 46
      Height = 21
      Caption = 'pserv10'
    end
    object psasts11: TsLabelFX
      Left = 432
      Top = 240
      Width = 46
      Height = 21
      Caption = 'pserv11'
    end
    object psasts12: TsLabelFX
      Left = 432
      Top = 256
      Width = 46
      Height = 21
      Caption = 'pserv12'
    end
    object psasts13: TsLabelFX
      Left = 432
      Top = 272
      Width = 46
      Height = 21
      Caption = 'pserv13'
    end
    object psasts14: TsLabelFX
      Left = 432
      Top = 288
      Width = 46
      Height = 21
      Caption = 'pserv14'
    end
    object psasts15: TsLabelFX
      Left = 432
      Top = 304
      Width = 46
      Height = 21
      Caption = 'pserv15'
    end
    object psasts16: TsLabelFX
      Left = 432
      Top = 320
      Width = 46
      Height = 21
      Caption = 'pserv16'
    end
    object psasts17: TsLabelFX
      Left = 432
      Top = 336
      Width = 46
      Height = 21
      Caption = 'pserv17'
    end
    object psasts18: TsLabelFX
      Left = 432
      Top = 352
      Width = 46
      Height = 21
      Caption = 'pserv18'
    end
    object psasts19: TsLabelFX
      Left = 432
      Top = 368
      Width = 46
      Height = 21
      Caption = 'pserv19'
    end
    object psasts20: TsLabelFX
      Left = 432
      Top = 384
      Width = 46
      Height = 21
      Caption = 'pserv20'
    end
    object pspass1: TsLabelFX
      Left = 488
      Top = 80
      Width = 38
      Height = 21
      Caption = '10000'
    end
    object pspass2: TsLabelFX
      Left = 488
      Top = 96
      Width = 40
      Height = 21
      Caption = 'pserv2'
    end
    object pspass3: TsLabelFX
      Left = 488
      Top = 112
      Width = 40
      Height = 21
      Caption = 'pserv3'
    end
    object pspass4: TsLabelFX
      Left = 488
      Top = 128
      Width = 40
      Height = 21
      Caption = 'pserv4'
    end
    object pspass5: TsLabelFX
      Left = 488
      Top = 144
      Width = 40
      Height = 21
      Caption = 'pserv5'
    end
    object pspass6: TsLabelFX
      Left = 488
      Top = 160
      Width = 40
      Height = 21
      Caption = 'pserv6'
    end
    object pspass7: TsLabelFX
      Left = 488
      Top = 176
      Width = 40
      Height = 21
      Caption = 'pserv7'
    end
    object pspass8: TsLabelFX
      Left = 488
      Top = 192
      Width = 40
      Height = 21
      Caption = 'pserv8'
    end
    object pspass9: TsLabelFX
      Left = 488
      Top = 208
      Width = 40
      Height = 21
      Caption = 'pserv9'
    end
    object pspass10: TsLabelFX
      Left = 488
      Top = 224
      Width = 46
      Height = 21
      Caption = 'pserv10'
    end
    object pspass11: TsLabelFX
      Left = 488
      Top = 240
      Width = 46
      Height = 21
      Caption = 'pserv11'
    end
    object pspass12: TsLabelFX
      Left = 488
      Top = 256
      Width = 46
      Height = 21
      Caption = 'pserv12'
    end
    object pspass13: TsLabelFX
      Left = 488
      Top = 272
      Width = 46
      Height = 21
      Caption = 'pserv13'
    end
    object pspass14: TsLabelFX
      Left = 488
      Top = 288
      Width = 46
      Height = 21
      Caption = 'pserv14'
    end
    object pspass15: TsLabelFX
      Left = 488
      Top = 304
      Width = 46
      Height = 21
      Caption = 'pserv15'
    end
    object pspass16: TsLabelFX
      Left = 488
      Top = 320
      Width = 46
      Height = 21
      Caption = 'pserv16'
    end
    object pspass17: TsLabelFX
      Left = 488
      Top = 336
      Width = 46
      Height = 21
      Caption = 'pserv17'
    end
    object pspass18: TsLabelFX
      Left = 488
      Top = 352
      Width = 46
      Height = 21
      Caption = 'pserv18'
    end
    object pspass19: TsLabelFX
      Left = 488
      Top = 368
      Width = 46
      Height = 21
      Caption = 'pserv19'
    end
    object pspass20: TsLabelFX
      Left = 488
      Top = 384
      Width = 46
      Height = 21
      Caption = 'pserv20'
    end
    object sLabelFX278: TsLabelFX
      Left = 320
      Top = 48
      Width = 32
      Height = 21
      Cursor = crHandPoint
      Caption = 'Apps'
      OnClick = sLabelFX278Click
    end
    object sLabelFX279: TsLabelFX
      Left = 376
      Top = 48
      Width = 23
      Height = 21
      Cursor = crHandPoint
      Caption = 'Gls'
      OnClick = sLabelFX279Click
    end
    object sLabelFX280: TsLabelFX
      Left = 432
      Top = 48
      Width = 28
      Height = 21
      Cursor = crHandPoint
      Caption = 'Asts'
      OnClick = sLabelFX280Click
    end
    object sLabelFX281: TsLabelFX
      Left = 488
      Top = 48
      Width = 31
      Height = 21
      Cursor = crHandPoint
      Caption = 'Pass'
      OnClick = sLabelFX281Click
    end
    object pstck1: TsLabelFX
      Left = 544
      Top = 80
      Width = 38
      Height = 21
      Caption = '10000'
    end
    object pstck2: TsLabelFX
      Left = 544
      Top = 96
      Width = 40
      Height = 21
      Caption = 'pserv2'
    end
    object pstck3: TsLabelFX
      Left = 544
      Top = 112
      Width = 40
      Height = 21
      Caption = 'pserv3'
    end
    object pstck4: TsLabelFX
      Left = 544
      Top = 128
      Width = 40
      Height = 21
      Caption = 'pserv4'
    end
    object pstck5: TsLabelFX
      Left = 544
      Top = 144
      Width = 40
      Height = 21
      Caption = 'pserv5'
    end
    object pstck6: TsLabelFX
      Left = 544
      Top = 160
      Width = 40
      Height = 21
      Caption = 'pserv6'
    end
    object pstck7: TsLabelFX
      Left = 544
      Top = 176
      Width = 40
      Height = 21
      Caption = 'pserv7'
    end
    object pstck8: TsLabelFX
      Left = 544
      Top = 192
      Width = 40
      Height = 21
      Caption = 'pserv8'
    end
    object pstck9: TsLabelFX
      Left = 544
      Top = 208
      Width = 40
      Height = 21
      Caption = 'pserv9'
    end
    object pstck10: TsLabelFX
      Left = 544
      Top = 224
      Width = 46
      Height = 21
      Caption = 'pserv10'
    end
    object pstck11: TsLabelFX
      Left = 544
      Top = 240
      Width = 46
      Height = 21
      Caption = 'pserv11'
    end
    object pstck12: TsLabelFX
      Left = 544
      Top = 256
      Width = 46
      Height = 21
      Caption = 'pserv12'
    end
    object pstck13: TsLabelFX
      Left = 544
      Top = 272
      Width = 46
      Height = 21
      Caption = 'pserv13'
    end
    object pstck14: TsLabelFX
      Left = 544
      Top = 288
      Width = 46
      Height = 21
      Caption = 'pserv14'
    end
    object pstck15: TsLabelFX
      Left = 544
      Top = 304
      Width = 46
      Height = 21
      Caption = 'pserv15'
    end
    object pstck16: TsLabelFX
      Left = 544
      Top = 320
      Width = 46
      Height = 21
      Caption = 'pserv16'
    end
    object pstck17: TsLabelFX
      Left = 544
      Top = 336
      Width = 46
      Height = 21
      Caption = 'pserv17'
    end
    object pstck18: TsLabelFX
      Left = 544
      Top = 352
      Width = 46
      Height = 21
      Caption = 'pserv18'
    end
    object pstck19: TsLabelFX
      Left = 544
      Top = 368
      Width = 46
      Height = 21
      Caption = 'pserv19'
    end
    object pstck20: TsLabelFX
      Left = 544
      Top = 384
      Width = 46
      Height = 21
      Caption = 'pserv20'
    end
    object sLabelFX302: TsLabelFX
      Left = 544
      Top = 48
      Width = 27
      Height = 21
      Cursor = crHandPoint
      Caption = 'Tck'
      OnClick = sLabelFX302Click
    end
    object pshead1: TsLabelFX
      Left = 600
      Top = 80
      Width = 40
      Height = 21
      Caption = 'pserv1'
    end
    object pshead2: TsLabelFX
      Left = 600
      Top = 96
      Width = 40
      Height = 21
      Caption = 'pserv2'
    end
    object pshead3: TsLabelFX
      Left = 600
      Top = 112
      Width = 40
      Height = 21
      Caption = 'pserv3'
    end
    object pshead4: TsLabelFX
      Left = 600
      Top = 128
      Width = 40
      Height = 21
      Caption = 'pserv4'
    end
    object pshead5: TsLabelFX
      Left = 600
      Top = 144
      Width = 40
      Height = 21
      Caption = 'pserv5'
    end
    object pshead6: TsLabelFX
      Left = 600
      Top = 160
      Width = 40
      Height = 21
      Caption = 'pserv6'
    end
    object pshead7: TsLabelFX
      Left = 600
      Top = 176
      Width = 40
      Height = 21
      Caption = 'pserv7'
    end
    object pshead8: TsLabelFX
      Left = 600
      Top = 192
      Width = 40
      Height = 21
      Caption = 'pserv8'
    end
    object pshead9: TsLabelFX
      Left = 600
      Top = 208
      Width = 40
      Height = 21
      Caption = 'pserv9'
    end
    object pshead10: TsLabelFX
      Left = 600
      Top = 224
      Width = 46
      Height = 21
      Caption = 'pserv10'
    end
    object pshead11: TsLabelFX
      Left = 600
      Top = 240
      Width = 46
      Height = 21
      Caption = 'pserv11'
    end
    object pshead12: TsLabelFX
      Left = 600
      Top = 256
      Width = 46
      Height = 21
      Caption = 'pserv12'
    end
    object pshead13: TsLabelFX
      Left = 600
      Top = 272
      Width = 46
      Height = 21
      Caption = 'pserv13'
    end
    object pshead14: TsLabelFX
      Left = 600
      Top = 288
      Width = 46
      Height = 21
      Caption = 'pserv14'
    end
    object pshead15: TsLabelFX
      Left = 600
      Top = 304
      Width = 46
      Height = 21
      Caption = 'pserv15'
    end
    object pshead16: TsLabelFX
      Left = 600
      Top = 320
      Width = 46
      Height = 21
      Caption = 'pserv16'
    end
    object pshead17: TsLabelFX
      Left = 600
      Top = 336
      Width = 46
      Height = 21
      Caption = 'pserv17'
    end
    object pshead18: TsLabelFX
      Left = 600
      Top = 352
      Width = 46
      Height = 21
      Caption = 'pserv18'
    end
    object pshead19: TsLabelFX
      Left = 600
      Top = 368
      Width = 46
      Height = 21
      Caption = 'pserv19'
    end
    object pshead20: TsLabelFX
      Left = 600
      Top = 384
      Width = 46
      Height = 21
      Caption = 'pserv20'
    end
    object sLabelFX323: TsLabelFX
      Left = 600
      Top = 48
      Width = 34
      Height = 21
      Cursor = crHandPoint
      Caption = 'Head'
      OnClick = sLabelFX323Click
    end
    object sLabelFX14: TsLabelFX
      Left = 696
      Top = 80
      Width = 57
      Height = 21
      Caption = 'Nationality'
    end
    object sLabelFX99: TsLabelFX
      Left = 696
      Top = 128
      Width = 50
      Height = 21
      Caption = 'Stat type'
      Visible = False
    end
    object sScrollBar5: TsScrollBar
      Left = 16
      Top = 88
      Width = 16
      Height = 313
      Kind = sbVertical
      Max = 3
      PageSize = 0
      TabOrder = 0
      OnChange = sScrollBar5Change
      SkinManager = sSkinManager1
    end
    object sComboBox5: TsComboBox
      Left = 696
      Top = 104
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 1
      Text = 'Any nation'
      OnChange = sComboBox5Change
      Items.Strings = (
        'Any nation'
        'Afghanistan'
        'Albania'
        'Algeria'
        'American samoa'
        'Andorra'
        'Angola'
        'Anguilla'
        'Antarctica'
        'Antigua and barbuda'
        'Argentina'
        'Armenia'
        'Aruba'
        'Australia'
        'Austria'
        'Azerbaijan'
        'Bahamas'
        'Bahrain'
        'Bangladesh'
        'Barbados'
        'Belarus'
        'Belgium'
        'Belize'
        'Benin'
        'Bermuda'
        'Bhutan'
        'Bolivia'
        'Bosnia and herzegovina'
        'Botswana'
        'Brazil'
        'British indian ocean territory'
        'Brunei'
        'Bulgaria'
        'Burkina faso'
        'Burundi'
        'Cambodia'
        'Cameroon'
        'Canada'
        'Cape verde'
        'Cayman islands'
        'Central african republic'
        'Chad'
        'Chile'
        'China'
        'Colombia'
        'Comoros'
        'Congo dem rep'
        'Congo, republic of'
        'Cook islands'
        'Costa rica'
        'Croatia'
        'Cuba'
        'Cyprus'
        'Czech republic'
        'Czechoslovakia'
        'Denmark'
        'Djibouti'
        'Dominica'
        'Dominican republic'
        'Ecuador'
        'Egypt'
        'El salvador'
        'England'
        'Equatorial guinea'
        'Eritrea'
        'Estonia'
        'Ethiopia'
        'Faeroe islands'
        'Falkland islands'
        'Fiji'
        'Finland'
        'France'
        'French guiana'
        'French polynesia'
        'Gabon'
        'Gambia, the'
        'Georgia'
        'Germany'
        'Ghana'
        'Gibraltar'
        'Greece'
        'Greenland'
        'Grenada'
        'Guadeloupe'
        'Guam'
        'Guatemala'
        'Guinea'
        'Guinea-bissau'
        'Guyana'
        'Haiti'
        'Honduras'
        'Hong kong'
        'Hungary'
        'Iceland'
        'India'
        'Indonesia'
        'Iran'
        'Iraq'
        'Ireland'
        'Israel'
        'Italy'
        'Ivory coast'
        'Jamaica'
        'Japan'
        'Jersey'
        'Jordan'
        'Kazakhstan'
        'Kenya'
        'Kiribati'
        'Korea rep'
        'Kuwait'
        'Kyrgyzstan'
        'Lao people'#39's democratic republic'
        'Latvia'
        'Lebanon'
        'Lesotho'
        'Liberia'
        'Libya'
        'Liechtenstein'
        'Lithuania'
        'Luxembourg'
        'Macao'
        'Macedonia'
        'Madagascar'
        'Malawi'
        'Malaysia'
        'Maldives'
        'Mali'
        'Malta'
        'Martinique'
        'Mauritania'
        'Mauritius'
        'Mayotte'
        'Mexico'
        'Micronesia'
        'Moldova'
        'Monaco'
        'Mongolia'
        'Montenegro'
        'Montserrat'
        'Morocco'
        'Mozambique'
        'Myanmar'
        'Namibia'
        'Nauru'
        'Nepal'
        'Netherlands'
        'Netherlands antilles'
        'New caledonia'
        'New zealand'
        'Nicaragua'
        'Niger'
        'Nigeria'
        'Niue'
        'Norfolk island'
        'Northern mariana islands'
        'Norway'
        'Oman'
        'Pakistan'
        'Palau'
        'Palestinian'
        'Panama'
        'Papua new guinea'
        'Paraguay'
        'Peru'
        'Philippines'
        'Poland'
        'Portugal'
        'Puerto rico'
        'Qatar'
        'Reunion'
        'Romania'
        'Russian'
        'Rwanda'
        'Saint kitts and nevis'
        'Saint lucia'
        'Saint vincent and the grenadines'
        'Samoa'
        'San marino'
        'Sao tome and principe'
        'Saudi arabia'
        'Scotland'
        'Senegal'
        'Serbia'
        'Seychelles'
        'Sierra leone'
        'Singapore'
        'Slovakia'
        'Slovenia'
        'Solomon islands'
        'Somalia'
        'South africa'
        'South georgia and the south sandwich islands'
        'Spain'
        'Sri lanka'
        'Sudan'
        'Suriname'
        'Swaziland'
        'Sweden'
        'Switzerland'
        'Syrian arab republic'
        'Taiwan'
        'Tajikistan'
        'Tanzania'
        'Thailand'
        'Timor-leste'
        'Togo'
        'Tokelau'
        'Tonga'
        'Trinidad and tobago'
        'Tunisia'
        'Turkey'
        'Turkmenistan'
        'Tuvalu'
        'Uganda'
        'Ukraine'
        'United arab emirates'
        'United kingdom'
        'United states'
        'United states minor outlying islands'
        'Uruguay'
        'Uzbekistan'
        'Wales'
        'Vanuatu'
        'Vatican city'
        'Venezuela'
        'Viet nam'
        'Virgin islands, british'
        'Virgin islands, u.s.'
        'Yemen'
        'Zambia'
        'Zimbabwe')
    end
    object sComboBox22: TsComboBox
      Left = 696
      Top = 152
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 2
      Text = 'Match'
      Visible = False
      OnChange = sComboBox22Change
      Items.Strings = (
        'Match'
        'Training')
    end
  end
  object sPanel18: TsPanel
    Left = 632
    Top = 104
    Width = 129
    Height = 17
    TabOrder = 19
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image21: TImage
      Left = 0
      Top = 0
      Width = 89
      Height = 17
    end
    object Label16: TLabel
      Left = 0
      Top = 0
      Width = 48
      Height = 13
      Caption = 'team stats'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object tssija1: TsLabelFX
      Left = 56
      Top = 80
      Width = 14
      Height = 21
      Caption = '1'
    end
    object tssija2: TsLabelFX
      Left = 56
      Top = 96
      Width = 14
      Height = 21
      Caption = '2'
    end
    object tssija3: TsLabelFX
      Left = 56
      Top = 112
      Width = 14
      Height = 21
      Caption = '3'
    end
    object tssija4: TsLabelFX
      Left = 56
      Top = 128
      Width = 14
      Height = 21
      Caption = '4'
    end
    object tssija5: TsLabelFX
      Left = 56
      Top = 144
      Width = 40
      Height = 21
      Caption = 'pserv5'
    end
    object tssija6: TsLabelFX
      Left = 56
      Top = 160
      Width = 40
      Height = 21
      Caption = 'pserv6'
    end
    object tssija7: TsLabelFX
      Left = 56
      Top = 176
      Width = 40
      Height = 21
      Caption = 'pserv7'
    end
    object tssija8: TsLabelFX
      Left = 56
      Top = 192
      Width = 40
      Height = 21
      Caption = 'pserv8'
    end
    object tssija9: TsLabelFX
      Left = 56
      Top = 208
      Width = 40
      Height = 21
      Caption = 'pserv9'
    end
    object tssija10: TsLabelFX
      Left = 56
      Top = 224
      Width = 46
      Height = 21
      Caption = 'pserv10'
    end
    object tssija11: TsLabelFX
      Left = 56
      Top = 240
      Width = 46
      Height = 21
      Caption = 'pserv11'
    end
    object tssija12: TsLabelFX
      Left = 56
      Top = 256
      Width = 46
      Height = 21
      Caption = 'pserv12'
    end
    object tssija13: TsLabelFX
      Left = 56
      Top = 272
      Width = 46
      Height = 21
      Caption = 'pserv13'
    end
    object tssija14: TsLabelFX
      Left = 56
      Top = 288
      Width = 46
      Height = 21
      Caption = 'pserv14'
    end
    object tssija15: TsLabelFX
      Left = 56
      Top = 304
      Width = 46
      Height = 21
      Caption = 'pserv15'
    end
    object tssija16: TsLabelFX
      Left = 56
      Top = 320
      Width = 46
      Height = 21
      Caption = 'pserv16'
    end
    object tssija17: TsLabelFX
      Left = 56
      Top = 336
      Width = 46
      Height = 21
      Caption = 'pserv17'
    end
    object tssija18: TsLabelFX
      Left = 56
      Top = 352
      Width = 46
      Height = 21
      Caption = 'pserv18'
    end
    object tssija19: TsLabelFX
      Left = 56
      Top = 368
      Width = 46
      Height = 21
      Caption = 'pserv19'
    end
    object tssija20: TsLabelFX
      Left = 56
      Top = 384
      Width = 46
      Height = 21
      Caption = 'pserv20'
    end
    object tsteam1: TsLabelFX
      Left = 72
      Top = 80
      Width = 43
      Height = 21
      Cursor = crHandPoint
      Caption = 'HoviSe'
      OnClick = tsteam1Click
    end
    object tsteam2: TsLabelFX
      Left = 72
      Top = 96
      Width = 14
      Height = 21
      Cursor = crHandPoint
      Caption = '2'
      OnClick = tsteam2Click
    end
    object tsteam3: TsLabelFX
      Left = 72
      Top = 112
      Width = 14
      Height = 21
      Cursor = crHandPoint
      Caption = '3'
      OnClick = tsteam3Click
    end
    object tsteam4: TsLabelFX
      Left = 72
      Top = 128
      Width = 14
      Height = 21
      Cursor = crHandPoint
      Caption = '4'
      OnClick = tsteam4Click
    end
    object tsteam5: TsLabelFX
      Left = 72
      Top = 144
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv5'
      OnClick = tsteam5Click
    end
    object tsteam6: TsLabelFX
      Left = 72
      Top = 160
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv6'
      OnClick = tsteam6Click
    end
    object tsteam7: TsLabelFX
      Left = 72
      Top = 176
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv7'
      OnClick = tsteam7Click
    end
    object tsteam8: TsLabelFX
      Left = 72
      Top = 192
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv8'
      OnClick = tsteam8Click
    end
    object tsteam9: TsLabelFX
      Left = 72
      Top = 208
      Width = 40
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv9'
      OnClick = tsteam9Click
    end
    object tsteam10: TsLabelFX
      Left = 72
      Top = 224
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv10'
      OnClick = tsteam10Click
    end
    object tsteam11: TsLabelFX
      Left = 72
      Top = 240
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv11'
      OnClick = tsteam11Click
    end
    object tsteam12: TsLabelFX
      Left = 72
      Top = 256
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv12'
      OnClick = tsteam12Click
    end
    object tsteam13: TsLabelFX
      Left = 72
      Top = 272
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv13'
      OnClick = tsteam13Click
    end
    object tsteam14: TsLabelFX
      Left = 72
      Top = 288
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv14'
      OnClick = tsteam14Click
    end
    object tsteam15: TsLabelFX
      Left = 72
      Top = 304
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv15'
      OnClick = tsteam15Click
    end
    object tsteam16: TsLabelFX
      Left = 72
      Top = 320
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv16'
      OnClick = tsteam16Click
    end
    object tsteam17: TsLabelFX
      Left = 72
      Top = 336
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv17'
      OnClick = tsteam17Click
    end
    object tsteam18: TsLabelFX
      Left = 72
      Top = 352
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv18'
      OnClick = tsteam18Click
    end
    object tsteam19: TsLabelFX
      Left = 72
      Top = 368
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv19'
      OnClick = tsteam19Click
    end
    object tsteam20: TsLabelFX
      Left = 72
      Top = 384
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Caption = 'pserv20'
      OnClick = tsteam20Click
    end
    object tsrank1: TsLabelFX
      Left = 216
      Top = 80
      Width = 14
      Height = 21
      Caption = '1'
    end
    object tsrank2: TsLabelFX
      Left = 216
      Top = 96
      Width = 14
      Height = 21
      Caption = '2'
    end
    object tsrank3: TsLabelFX
      Left = 216
      Top = 112
      Width = 14
      Height = 21
      Caption = '3'
    end
    object tsrank4: TsLabelFX
      Left = 216
      Top = 128
      Width = 14
      Height = 21
      Caption = '4'
    end
    object tsrank5: TsLabelFX
      Left = 216
      Top = 144
      Width = 40
      Height = 21
      Caption = 'pserv5'
    end
    object tsrank6: TsLabelFX
      Left = 216
      Top = 160
      Width = 40
      Height = 21
      Caption = 'pserv6'
    end
    object tsrank7: TsLabelFX
      Left = 216
      Top = 176
      Width = 40
      Height = 21
      Caption = 'pserv7'
    end
    object tsrank8: TsLabelFX
      Left = 216
      Top = 192
      Width = 40
      Height = 21
      Caption = 'pserv8'
    end
    object tsrank9: TsLabelFX
      Left = 216
      Top = 208
      Width = 40
      Height = 21
      Caption = 'pserv9'
    end
    object tsrank10: TsLabelFX
      Left = 216
      Top = 224
      Width = 46
      Height = 21
      Caption = 'pserv10'
    end
    object tsrank11: TsLabelFX
      Left = 216
      Top = 240
      Width = 46
      Height = 21
      Caption = 'pserv11'
    end
    object tsrank13: TsLabelFX
      Left = 216
      Top = 272
      Width = 46
      Height = 21
      Caption = 'pserv13'
    end
    object tsrank12: TsLabelFX
      Left = 216
      Top = 256
      Width = 46
      Height = 21
      Caption = 'pserv12'
    end
    object tsrank14: TsLabelFX
      Left = 216
      Top = 288
      Width = 46
      Height = 21
      Caption = 'pserv14'
    end
    object tsrank15: TsLabelFX
      Left = 216
      Top = 304
      Width = 46
      Height = 21
      Caption = 'pserv15'
    end
    object tsrank16: TsLabelFX
      Left = 216
      Top = 320
      Width = 46
      Height = 21
      Caption = 'pserv16'
    end
    object tsrank17: TsLabelFX
      Left = 216
      Top = 336
      Width = 46
      Height = 21
      Caption = 'pserv17'
    end
    object tsrank18: TsLabelFX
      Left = 216
      Top = 352
      Width = 46
      Height = 21
      Caption = 'pserv18'
    end
    object tsrank19: TsLabelFX
      Left = 216
      Top = 368
      Width = 46
      Height = 21
      Caption = 'pserv19'
    end
    object tsrank20: TsLabelFX
      Left = 216
      Top = 384
      Width = 46
      Height = 21
      Caption = 'pserv20'
    end
    object sScrollBar6: TsScrollBar
      Left = 16
      Top = 88
      Width = 16
      Height = 313
      Kind = sbVertical
      Max = 3
      PageSize = 0
      TabOrder = 0
      OnChange = sScrollBar6Change
      SkinManager = sSkinManager1
    end
  end
  object sPanel19: TsPanel
    Left = 808
    Top = 136
    Width = 113
    Height = 17
    TabOrder = 20
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image22: TImage
      Left = 0
      Top = 0
      Width = 89
      Height = 17
    end
    object Label17: TLabel
      Left = 0
      Top = 0
      Width = 52
      Height = 13
      Caption = 'vip transfer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabelFX126: TsLabelFX
      Left = 32
      Top = 160
      Width = 51
      Height = 21
      Caption = 'Vip index'
    end
    object sLabelFX130: TsLabelFX
      Left = 32
      Top = 120
      Width = 32
      Height = 21
      Caption = 'Days'
    end
    object sLabelFX131: TsLabelFX
      Left = 32
      Top = 80
      Width = 175
      Height = 21
      Caption = 'Vip time remaining in hours: 11231h'
    end
    object sLabelFX140: TsLabelFX
      Left = 32
      Top = 64
      Width = 222
      Height = 21
      Caption = 'Here you can transfer vip time to other player.'
    end
    object sLabelFX160: TsLabelFX
      Left = 32
      Top = 200
      Width = 56
      Height = 21
      Caption = 'Username'
    end
    object sEdit14: TsEdit
      Left = 32
      Top = 176
      Width = 121
      Height = 21
      MaxLength = 6
      TabOrder = 0
      OnKeyPress = sEdit14KeyPress
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
    object sButton34: TsButton
      Left = 32
      Top = 248
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Transfer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = sButton34Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sEdit15: TsEdit
      Left = 32
      Top = 136
      Width = 121
      Height = 21
      MaxLength = 5
      TabOrder = 2
      OnKeyPress = sEdit15KeyPress
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
    object sEdit18: TsEdit
      Left = 32
      Top = 216
      Width = 121
      Height = 21
      MaxLength = 15
      TabOrder = 3
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
  object sPanel20: TsPanel
    Left = 920
    Top = 440
    Width = 97
    Height = 57
    TabOrder = 21
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image23: TImage
      Left = 0
      Top = 0
      Width = 73
      Height = 17
    end
    object Label18: TLabel
      Left = 0
      Top = 0
      Width = 51
      Height = 13
      Caption = 'version log'
      Visible = False
    end
    object sMemo3: TsMemo
      Left = 8
      Top = 8
      Width = 897
      Height = 433
      Lines.Strings = (
        '       http://www.netsoccer2.com'
        ''
        '2.0124'
        '======'
        ''
        '-Fixed problem with ranking list.'
        ''
        '2.0123'
        '======'
        ''
        '-Some fixes to masterserver.'
        ''
        '2.0122'
        '======'
        ''
        '-/info command fixed'
        '-Kicking works from ingame (for global admins)'
        ''
        '2.0121'
        '======'
        ''
        '-Added all chat modes for spectator mode. (Except F3&F4)'
        ''
        '2.0120'
        '======'
        ''
        '-Team chat (F7) to spectator mode'
        ''
        '2.0117 - 2.0119'
        '======'
        ''
        '-Spectator mode, +couple fixes.'
        ''
        '2.0116'
        '======'
        ''
        '-Spectator mode removed until fixed.'
        ''
        '2.0114'
        '======'
        ''
        
          '-Player will automatically make throwin/freekick after 10 second' +
          's.'
        '-Spectator mode for challenges. (Chat will come soon...)'
        ''
        '2.0113'
        '======'
        ''
        '-Fixed header stat bug. (on match details)'
        '-When new game begins, match result is now reseted.'
        '-When keeper kicks ball, its animation wont be bouncing.'
        '-Fixed bug, where player runs to field even match is ended.'
        '-Password servers available for non-vips.'
        '-Fixed /info command.'
        '-Keyboard removed.'
        ''
        '2.0112'
        '======'
        ''
        
          '-Fixed bug, which freezed game, if clicked unactive team in play' +
          'ers career history.'
        '-Added flags to start-up screen ingame.'
        '-Decreased small players heading altitude.'
        '-Some minor stuff.'
        
          '-Username can be changed without code. Password changing removed' +
          '.'
        ''
        '2.0111'
        '======'
        ''
        '-Improved keepers positioning.'
        ''
        '2.0110'
        '======'
        ''
        '-Improved keeper AI against slow speed shots.'
        '-Increased players collision area.'
        ''
        '2.0109'
        '======'
        ''
        '-Restored old collision, until new fixed.'
        ''
        '2.0108'
        '======'
        ''
        
          '-Fixed bug on challenges page. Sometimes teams '#39'playing'#39' status ' +
          'went off, even team was playing.'
        '-Added chat to freepractise.'
        '-Fixed keeper bug, where keeper sometimes freezed after dive.'
        '-Teams in challenge list sorted by ranking.'
        '-Modified player collision.'
        ''
        '2.0107'
        '======'
        ''
        '-User can start only one privateserver at time. '
        '-Added filter to trainingserver page.'
        '-Kit changing during challenging works again.'
        ''
        '2.0106'
        '======'
        ''
        '-Added freepractise.'
        '-Added list of players in training server.'
        '-Added possibility to create passworded servers.'
        '-Fixed bug in ignore list.'
        ''
        '2.0103'
        '======'
        ''
        
          '-Problem getting password code for username and password changin' +
          'g should be fixed.'
        '-Check also new website, www.netsoccer2.com'
        ''
        '2.0102'
        '======'
        ''
        '-Small masterserver modifications.'
        ''
        '2.0101'
        '======'
        ''
        '-Added online/offline indicator to player page.'
        '-Only 5vs5 servers in enabled in training server list.'
        ''
        '2.0100'
        '======'
        ''
        '-GBR users can define flag from stats->username'
        ''
        '2.0099'
        '======'
        ''
        '-Mainly masterserver update.'
        '-Added "search by index" to adv. search.'
        '-Disabled nation changing.'
        ''
        '2.0098'
        '======'
        ''
        '-Added new option to team settings, location.'
        '-Location shown in challenge list.'
        '-Added few new filters to advanced search.'
        ''
        '2.0097'
        '======'
        ''
        '-Added advanced search.'
        '-Added "players from same IP" field to player page.'
        '-Sliding with mouse works now also with middle button.'
        ''
        '2.0096'
        '======'
        ''
        '-Added password changing.'
        ''
        '2.0095'
        '======'
        ''
        '-Mainly Masterserver based update.'
        '-Added username and password saving.'
        '-Added "looking for team" option. (not much use yet, thou)'
        ''
        '2.0094'
        '======'
        ''
        '-Increased turning rate for keyboard.'
        ''
        '2.0093'
        '======'
        ''
        '-Removed poor speed disadvantage from non vips.'
        ''
        '2.0092'
        '======'
        ''
        '-Increased player collision area.'
        '-Banning system to masterserver.'
        ''
        '2.0091'
        '======'
        ''
        
          '-http://skig.hr/boards/showpost.php?p=2231&postcount=3   This ar' +
          'ea is now smaller.'
        
          '-Offsides didnt deactivated when the opposition touched the ball' +
          ' is fixed.'
        
          '-Decreased slidetackle areas for normal and large. (before: smal' +
          'l, medium, large 10,14,17 now 10,13,16 pixels)'
        ''
        '2.0090'
        '======'
        ''
        
          '-Fixed team swapping bug ingame, which caused, that player could' +
          'nt move.'
        
          '-Match freezing bug maybe fixed. (ball stays in corner but playe' +
          'rs cant enter take it or throwin taker cant throw ball)'
        
          '-Added small delay to player that he cant tackle after he have k' +
          'icked ball.'
        
          '-Tried to fix automatically starting challenges. Not sure if eff' +
          'ect.'
        
          '-Balanced heading altitudes. (before: small, medium, large 20,25' +
          ',30 now 22,24,26 pixels)'
        ''
        '2.0089'
        '======'
        ''
        
          '-Fixed bug where keeper moves back to the middle instead of pick' +
          'ing the ball up when the ball hits the post.'
        '-Fixed bug in action zones in match details.'
        '-Added assists and played minutes to match details.'
        
          '-Fixed bug when sometimes offsides happened straight from kick o' +
          'ffs.'
        '-Player who controls ball, cant slide.'
        '-Pushing/blocking during trowins disabled.'
        ''
        '2.0088'
        '======'
        ''
        
          '-Added match details (most of stats arent yet counted, so missin' +
          'g stats will be added in future)'
        '-Added apps and position counter.'
        ''
        '2.0087'
        '======'
        ''
        
          '-Mainly this update is required for incoming match details updat' +
          'e.'
        
          '-Bug fix. Sometimes ball weren'#39't at kickoff position when starti' +
          'ng first/second half.'
        '-Minimum vip transfer amount set to 1 day.'
        ''
        '2.0086'
        '======'
        ''
        '-Decreased right click area.'
        '-Decreased rigth button power, when ball in air.'
        
          '-Player '#39'disabled'#39' after throwin, corner and freekick. (already ' +
          'in 2.0085. Forgot to mention)'
        '-Added extra power on corner kicks (to left button)'
        '-Some minor fixes.'
        '-Offside disabled during goalkick.'
        ''
        '2.0085'
        '======'
        ''
        
          '-Double teams wont appear to player careers, if old team is same' +
          ' as current.'
        '-Added autopass to keyboard.'
        
          '-Modified ball stealing. Nearest player to ball will have contro' +
          'l.'
        '-Added username changing.'
        '-Player '#39'disabled'#39' after throwin, corner and freekick.'
        ''
        '2.0084'
        '======'
        ''
        
          '-Modified ball physic. (For Brazilian servers. Dutch'#39's have been' +
          ' modified already earlier)'
        '-Added keyboard control (missing autopass and curving ball)'
        '-Player with ball runs slower.'
        
          '-Slidetackle moved by default to key W, but it can be changed fr' +
          'om settings.'
        ''
        '2.0083'
        '======'
        ''
        '-Added /team and /info commands. '
        
          '-Fixed bug which caused challenge list jumping to screen when tr' +
          'ying to get livescore list.'
        '-Automatically starting challenges hopefully fixed.'
        ''
        '2.0082'
        '======'
        ''
        '-Player collision doesnt look jumpy anymore.'
        '-Some improvements to keeper.'
        
          '-If player havent enough speed on slidetackle, it wont fall oppo' +
          'nent.'
        
          '-In vip transfer, username is required to avoid mistake transfer' +
          's.'
        '-Added joining without invite.'
        '-When slow moving is turned off, player is easier to stop.'
        ''
        '2.0081'
        '======'
        ''
        '-Fixed bug, which allowed kicking the ball, during goalkick #2.'
        '-Fixed bug, which caused dublicate scores on challenges.'
        
          '-Bug which caused challenge list jumping to screen when trying t' +
          'o get livescore list, maybe fixed.'
        '-Training stats removed.'
        '-Improved non-vip player.'
        
          '-Fixed bug, which reseted nationality to UK, when updating playe' +
          'r.'
        
          '-Fixed bug, which showed teams "created" date incorrectly someti' +
          'mes.'
        ''
        '2.0080'
        '======'
        ''
        '-Fixed bug, which allowed kicking the ball, during goalkick.'
        ''
        '2.0079'
        '======'
        ''
        '-Modified ball physics.'
        '-Increased right button area.'
        ''
        '2.0078'
        '======'
        ''
        '-Updating patcher.'
        ''
        '2.0077'
        '====='
        ''
        '-Fixed bug, which reseted settings. (slow moving and sounds)'
        '-If user/team is offline/doesnt exist, info note is given.'
        
          '-Fixed chat bug: When tried to send message to other team from g' +
          'ameserver.'
        ''
        '2.0076'
        '====='
        ''
        
          '-Modified ball physic: Ball'#39's speed will be reduced now more, wh' +
          'en it hits to ground.'
        '-Fixes to gameserver and masterserver.'
        ''
        '2.0074'
        '====='
        ''
        '-Smoother game.'
        
          '-When checking own players page, team text and avatar URL arent ' +
          'temporary dilivered.'
        ''
        '2.0073'
        '====='
        ''
        '-Added send message buttons to player and team pages.'
        '-Vip transfer enabled.'
        '-Mostly gameserver&masterserver patch.'
        ''
        '2.0072'
        '====='
        ''
        '-Ball cant be throw out again on throwins.'
        '-Ball cant be kicked out again on corners.'
        '-Fixed team founder bug.'
        '-Some fixes to gameserver and masterserver.'
        ''
        '2.0070'
        '====='
        ''
        '-Fix to livescores.'
        '-Fixed bug where game freezed if challenge were full.'
        
          '-Join button in team matches wont show if players isnt in each t' +
          'eams.'
        '-Some fixes to gameserver and masterserver.'
        ''
        '2.0069'
        '====='
        ''
        
          '-Modified right click area, slide tackle area and ball control a' +
          'rea.'
        '-Live scores will get updated.'
        ''
        '2.0068'
        '====='
        ''
        '-Added possibility to kick players from team.'
        '-Increased throwin & freekick area where player gets locked.'
        
          '-Fixed bug, which freezed lobby window, used CPU and lost cursor' +
          ' sometimes after exited from ingame.'
        '-Increased keepers running speed.'
        '-Increased rigth button area, tackle area and ball control area.'
        ''
        '2.0066 & 2.0067'
        '==========='
        ''
        '-Added 3 seconds spam filter.'
        '-Possibility to enable/disable slow moving from settings.'
        '-Increased keepers running speed little bit.'
        '-Added yellow circle to own player.'
        '-Possibility to modify nationality.'
        
          '-Fixed freezing bug which occured sometimes on public training l' +
          'ist.'
        ''
        '2.0065'
        '====='
        ''
        
          '-Fixed keeper bug, where keeper started to chasing ball after pa' +
          'ssed by own player.'
        '-Modified ingame teamchat color.'
        '-Fixed keeper bug, where keeper dives at wrong direction.'
        '-Modified player turning.'
        '-Added whistle to offsides.'
        '-Disabled empty message sending in chat.'
        '-Added option to disable sounds.'
        '-Added ball animation.'
        '-Changed font size in halftime/fulltime stats.'
        '-Added ingame player counter.')
      ScrollBars = ssVertical
      TabOrder = 0
      Text = 
        '       http://www.netsoccer2.com'#13#10#13#10'2.0124'#13#10'======'#13#10#13#10'-Fixed pro' +
        'blem with ranking list.'#13#10#13#10'2.0123'#13#10'======'#13#10#13#10'-Some fixes to mast' +
        'erserver.'#13#10#13#10'2.0122'#13#10'======'#13#10#13#10'-/info command fixed'#13#10'-Kicking wo' +
        'rks from ingame (for global admins)'#13#10#13#10'2.0121'#13#10'======'#13#10#13#10'-Added ' +
        'all chat modes for spectator mode. (Except F3&F4)'#13#10#13#10'2.0120'#13#10'===' +
        '==='#13#10#13#10'-Team chat (F7) to spectator mode'#13#10#13#10'2.0117 - 2.0119'#13#10'===' +
        '==='#13#10#13#10'-Spectator mode, +couple fixes.'#13#10#13#10'2.0116'#13#10'======'#13#10#13#10'-Spe' +
        'ctator mode removed until fixed.'#13#10#13#10'2.0114'#13#10'======'#13#10#13#10'-Player wi' +
        'll automatically make throwin/freekick after 10 seconds.'#13#10'-Spect' +
        'ator mode for challenges. (Chat will come soon...)'#13#10#13#10'2.0113'#13#10'==' +
        '===='#13#10#13#10'-Fixed header stat bug. (on match details)'#13#10'-When new ga' +
        'me begins, match result is now reseted.'#13#10'-When keeper kicks ball' +
        ', its animation wont be bouncing.'#13#10'-Fixed bug, where player runs' +
        ' to field even match is ended.'#13#10'-Password servers available for ' +
        'non-vips.'#13#10'-Fixed /info command.'#13#10'-Keyboard removed.'#13#10#13#10'2.0112'#13#10 +
        '======'#13#10#13#10'-Fixed bug, which freezed game, if clicked unactive te' +
        'am in players career history.'#13#10'-Added flags to start-up screen i' +
        'ngame.'#13#10'-Decreased small players heading altitude.'#13#10'-Some minor ' +
        'stuff.'#13#10'-Username can be changed without code. Password changing' +
        ' removed.'#13#10#13#10'2.0111'#13#10'======'#13#10#13#10'-Improved keepers positioning.'#13#10#13 +
        #10'2.0110'#13#10'======'#13#10#13#10'-Improved keeper AI against slow speed shots.' +
        #13#10'-Increased players collision area.'#13#10#13#10'2.0109'#13#10'======'#13#10#13#10'-Resto' +
        'red old collision, until new fixed.'#13#10#13#10'2.0108'#13#10'======'#13#10#13#10'-Fixed ' +
        'bug on challenges page. Sometimes teams '#39'playing'#39' status went of' +
        'f, even team was playing.'#13#10'-Added chat to freepractise.'#13#10'-Fixed ' +
        'keeper bug, where keeper sometimes freezed after dive.'#13#10'-Teams i' +
        'n challenge list sorted by ranking.'#13#10'-Modified player collision.' +
        #13#10#13#10'2.0107'#13#10'======'#13#10#13#10'-User can start only one privateserver at ' +
        'time. '#13#10'-Added filter to trainingserver page.'#13#10'-Kit changing dur' +
        'ing challenging works again.'#13#10#13#10'2.0106'#13#10'======'#13#10#13#10'-Added freepra' +
        'ctise.'#13#10'-Added list of players in training server.'#13#10'-Added possi' +
        'bility to create passworded servers.'#13#10'-Fixed bug in ignore list.' +
        #13#10#13#10'2.0103'#13#10'======'#13#10#13#10'-Problem getting password code for usernam' +
        'e and password changing should be fixed.'#13#10'-Check also new websit' +
        'e, www.netsoccer2.com'#13#10#13#10'2.0102'#13#10'======'#13#10#13#10'-Small masterserver m' +
        'odifications.'#13#10#13#10'2.0101'#13#10'======'#13#10#13#10'-Added online/offline indicat' +
        'or to player page.'#13#10'-Only 5vs5 servers in enabled in training se' +
        'rver list.'#13#10#13#10'2.0100'#13#10'======'#13#10#13#10'-GBR users can define flag from ' +
        'stats->username'#13#10#13#10'2.0099'#13#10'======'#13#10#13#10'-Mainly masterserver update' +
        '.'#13#10'-Added "search by index" to adv. search.'#13#10'-Disabled nation ch' +
        'anging.'#13#10#13#10'2.0098'#13#10'======'#13#10#13#10'-Added new option to team settings,' +
        ' location.'#13#10'-Location shown in challenge list.'#13#10'-Added few new f' +
        'ilters to advanced search.'#13#10#13#10'2.0097'#13#10'======'#13#10#13#10'-Added advanced ' +
        'search.'#13#10'-Added "players from same IP" field to player page.'#13#10'-S' +
        'liding with mouse works now also with middle button.'#13#10#13#10'2.0096'#13#10 +
        '======'#13#10#13#10'-Added password changing.'#13#10#13#10'2.0095'#13#10'======'#13#10#13#10'-Mainly' +
        ' Masterserver based update.'#13#10'-Added username and password saving' +
        '.'#13#10'-Added "looking for team" option. (not much use yet, thou)'#13#10#13 +
        #10'2.0094'#13#10'======'#13#10#13#10'-Increased turning rate for keyboard.'#13#10#13#10'2.00' +
        '93'#13#10'======'#13#10#13#10'-Removed poor speed disadvantage from non vips.'#13#10#13 +
        #10'2.0092'#13#10'======'#13#10#13#10'-Increased player collision area.'#13#10'-Banning s' +
        'ystem to masterserver.'#13#10#13#10'2.0091'#13#10'======'#13#10#13#10'-http://skig.hr/boar' +
        'ds/showpost.php?p=2231&postcount=3   This area is now smaller.'#13#10 +
        '-Offsides didnt deactivated when the opposition touched the ball' +
        ' is fixed.'#13#10'-Decreased slidetackle areas for normal and large. (' +
        'before: small, medium, large 10,14,17 now 10,13,16 pixels)'#13#10#13#10'2.' +
        '0090'#13#10'======'#13#10#13#10'-Fixed team swapping bug ingame, which caused, t' +
        'hat player couldnt move.'#13#10'-Match freezing bug maybe fixed. (ball' +
        ' stays in corner but players cant enter take it or throwin taker' +
        ' cant throw ball)'#13#10'-Added small delay to player that he cant tac' +
        'kle after he have kicked ball.'#13#10'-Tried to fix automatically star' +
        'ting challenges. Not sure if effect.'#13#10'-Balanced heading altitude' +
        's. (before: small, medium, large 20,25,30 now 22,24,26 pixels)'#13#10 +
        #13#10'2.0089'#13#10'======'#13#10#13#10'-Fixed bug where keeper moves back to the mi' +
        'ddle instead of picking the ball up when the ball hits the post.' +
        #13#10'-Fixed bug in action zones in match details.'#13#10'-Added assists a' +
        'nd played minutes to match details.'#13#10'-Fixed bug when sometimes o' +
        'ffsides happened straight from kick offs.'#13#10'-Player who controls ' +
        'ball, cant slide.'#13#10'-Pushing/blocking during trowins disabled.'#13#10#13 +
        #10'2.0088'#13#10'======'#13#10#13#10'-Added match details (most of stats arent yet' +
        ' counted, so missing stats will be added in future)'#13#10'-Added apps' +
        ' and position counter.'#13#10#13#10'2.0087'#13#10'======'#13#10#13#10'-Mainly this update ' +
        'is required for incoming match details update.'#13#10'-Bug fix. Someti' +
        'mes ball weren'#39't at kickoff position when starting first/second ' +
        'half.'#13#10'-Minimum vip transfer amount set to 1 day.'#13#10#13#10'2.0086'#13#10'===' +
        '==='#13#10#13#10'-Decreased right click area.'#13#10'-Decreased rigth button pow' +
        'er, when ball in air.'#13#10'-Player '#39'disabled'#39' after throwin, corner ' +
        'and freekick. (already in 2.0085. Forgot to mention)'#13#10'-Added ext' +
        'ra power on corner kicks (to left button)'#13#10'-Some minor fixes.'#13#10'-' +
        'Offside disabled during goalkick.'#13#10#13#10'2.0085'#13#10'======'#13#10#13#10'-Double t' +
        'eams wont appear to player careers, if old team is same as curre' +
        'nt.'#13#10'-Added autopass to keyboard.'#13#10'-Modified ball stealing. Near' +
        'est player to ball will have control.'#13#10'-Added username changing.' +
        #13#10'-Player '#39'disabled'#39' after throwin, corner and freekick.'#13#10#13#10'2.00' +
        '84'#13#10'======'#13#10#13#10'-Modified ball physic. (For Brazilian servers. Dut' +
        'ch'#39's have been modified already earlier)'#13#10'-Added keyboard contro' +
        'l (missing autopass and curving ball)'#13#10'-Player with ball runs sl' +
        'ower.'#13#10'-Slidetackle moved by default to key W, but it can be cha' +
        'nged from settings.'#13#10#13#10'2.0083'#13#10'======'#13#10#13#10'-Added /team and /info ' +
        'commands. '#13#10'-Fixed bug which caused challenge list jumping to sc' +
        'reen when trying to get livescore list.'#13#10'-Automatically starting' +
        ' challenges hopefully fixed.'#13#10#13#10'2.0082'#13#10'======'#13#10#13#10'-Player collis' +
        'ion doesnt look jumpy anymore.'#13#10'-Some improvements to keeper.'#13#10'-' +
        'If player havent enough speed on slidetackle, it wont fall oppon' +
        'ent.'#13#10'-In vip transfer, username is required to avoid mistake tr' +
        'ansfers.'#13#10'-Added joining without invite.'#13#10'-When slow moving is t' +
        'urned off, player is easier to stop.'#13#10#13#10'2.0081'#13#10'======'#13#10#13#10'-Fixed' +
        ' bug, which allowed kicking the ball, during goalkick #2.'#13#10'-Fixe' +
        'd bug, which caused dublicate scores on challenges.'#13#10'-Bug which ' +
        'caused challenge list jumping to screen when trying to get lives' +
        'core list, maybe fixed.'#13#10'-Training stats removed.'#13#10'-Improved non' +
        '-vip player.'#13#10'-Fixed bug, which reseted nationality to UK, when ' +
        'updating player.'#13#10'-Fixed bug, which showed teams "created" date ' +
        'incorrectly sometimes.'#13#10#13#10'2.0080'#13#10'======'#13#10#13#10'-Fixed bug, which al' +
        'lowed kicking the ball, during goalkick.'#13#10#13#10'2.0079'#13#10'======'#13#10#13#10'-M' +
        'odified ball physics.'#13#10'-Increased right button area.'#13#10#13#10'2.0078'#13#10 +
        '======'#13#10#13#10'-Updating patcher.'#13#10#13#10'2.0077'#13#10'====='#13#10#13#10'-Fixed bug, whi' +
        'ch reseted settings. (slow moving and sounds)'#13#10'-If user/team is ' +
        'offline/doesnt exist, info note is given.'#13#10'-Fixed chat bug: When' +
        ' tried to send message to other team from gameserver.'#13#10#13#10'2.0076'#13 +
        #10'====='#13#10#13#10'-Modified ball physic: Ball'#39's speed will be reduced no' +
        'w more, when it hits to ground.'#13#10'-Fixes to gameserver and master' +
        'server.'#13#10#13#10'2.0074'#13#10'====='#13#10#13#10'-Smoother game.'#13#10'-When checking own ' +
        'players page, team text and avatar URL arent temporary dilivered' +
        '.'#13#10#13#10'2.0073'#13#10'====='#13#10#13#10'-Added send message buttons to player and ' +
        'team pages.'#13#10'-Vip transfer enabled.'#13#10'-Mostly gameserver&masterse' +
        'rver patch.'#13#10#13#10'2.0072'#13#10'====='#13#10#13#10'-Ball cant be throw out again on' +
        ' throwins.'#13#10'-Ball cant be kicked out again on corners.'#13#10'-Fixed t' +
        'eam founder bug.'#13#10'-Some fixes to gameserver and masterserver.'#13#10#13 +
        #10'2.0070'#13#10'====='#13#10#13#10'-Fix to livescores.'#13#10'-Fixed bug where game fre' +
        'ezed if challenge were full.'#13#10'-Join button in team matches wont ' +
        'show if players isnt in each teams.'#13#10'-Some fixes to gameserver a' +
        'nd masterserver.'#13#10#13#10'2.0069'#13#10'====='#13#10#13#10'-Modified right click area,' +
        ' slide tackle area and ball control area.'#13#10'-Live scores will get' +
        ' updated.'#13#10#13#10'2.0068'#13#10'====='#13#10#13#10'-Added possibility to kick players' +
        ' from team.'#13#10'-Increased throwin & freekick area where player get' +
        's locked.'#13#10'-Fixed bug, which freezed lobby window, used CPU and ' +
        'lost cursor sometimes after exited from ingame.'#13#10'-Increased keep' +
        'ers running speed.'#13#10'-Increased rigth button area, tackle area an' +
        'd ball control area.'#13#10#13#10'2.0066 & 2.0067'#13#10'==========='#13#10#13#10'-Added 3' +
        ' seconds spam filter.'#13#10'-Possibility to enable/disable slow movin' +
        'g from settings.'#13#10'-Increased keepers running speed little bit.'#13#10 +
        '-Added yellow circle to own player.'#13#10'-Possibility to modify nati' +
        'onality.'#13#10'-Fixed freezing bug which occured sometimes on public ' +
        'training list.'#13#10#13#10'2.0065'#13#10'====='#13#10#13#10'-Fixed keeper bug, where keep' +
        'er started to chasing ball after passed by own player.'#13#10'-Modifie' +
        'd ingame teamchat color.'#13#10'-Fixed keeper bug, where keeper dives ' +
        'at wrong direction.'#13#10'-Modified player turning.'#13#10'-Added whistle t' +
        'o offsides.'#13#10'-Disabled empty message sending in chat.'#13#10'-Added op' +
        'tion to disable sounds.'#13#10'-Added ball animation.'#13#10'-Changed font s' +
        'ize in halftime/fulltime stats.'#13#10'-Added ingame player counter.'#13#10
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
    end
  end
  object sPanel21: TsPanel
    Left = 120
    Top = 64
    Width = 713
    Height = 473
    TabOrder = 22
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Label19: TLabel
      Left = 0
      Top = 0
      Width = 34
      Height = 13
      Caption = 'buy vip'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabelFX156: TsLabelFX
      Left = 160
      Top = 152
      Width = 83
      Height = 21
      Caption = 'Phone Payment'
    end
    object sLabelFX159: TsLabelFX
      Left = 160
      Top = 280
      Width = 390
      Height = 24
      Caption = 'In problem cases, please contact to johannes_eski@luukku.com'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object WebBrowser1: TWebBrowser
      Left = 472
      Top = 1
      Width = 744
      Height = 447
      TabOrder = 0
      ControlData = {
        4C000000E54C0000332E00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
    object sBitBtn1: TsBitBtn
      Left = 160
      Top = 176
      Width = 113
      Height = 57
      Cursor = crHandPoint
      TabOrder = 1
      OnClick = sBitBtn1Click
      Glyph.Data = {
        EE3B0000424DEE3B000000000000360000002800000068000000310000000100
        180000000000B83B0000C40E0000C40E00000000000000000000A1A1A1838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        838383838383838383838383838383838383C1C1C1CBCBCBB8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8C1C1C1DFDFDFE6E6E6DBDBDBADB9A6738D6759794B5A
        794B5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C
        5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B79
        4C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B
        794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C
        5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B79
        4C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B
        794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794C5B794B
        6481567D9470A1B09ACCCFC9DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBB8
        B8B8C1C1C1DFDFDFF1F1F1A1B996356624386824396824326424316224316224
        3162243162243162243162243162243162243162243162243162243162243162
        2431622431622431622431622431622431622431622431622431622431622431
        6224316224316224316224316224316224316224316224316224316224316224
        3162243162243162243162243162243162243162243162243162243162243162
        2431622431622431622431622431622431622431622431622431622431622431
        6224316224316224316224316224316224316224316224316224316224316224
        3162243162243162243162243162243162243162243162243263243566243968
        244B763696AE8AE7E9E5F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        C7D4C23E732D306917296316326B1C6690517DA26E7DA36F7DA36E7DA36E7DA3
        6E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7D
        A36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E
        7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA3
        6E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7D
        A36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E
        7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA36E7DA3
        6E7DA36E7DA36E7DA36F7DA26D729B5F54853E326B1C2561162B65162B65165A
        8744D3E0CEFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF789D6941782D2C69
        183C7826C9DBC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFDFEFDD5E3CF7DA56C23650C1459001A5D002E6C14CFDEC8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF5E8C4B427D2D3A7824DAE6D3FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8E6E6
        E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF4F4F4FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9DBDADAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCDDE5D9BE
        D0B7B0C5A5A8BF9DADC1A1B9CAAFD0DCCAF4F6F1FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD0DFC942802C115C001C6300307216CCDDC5FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDF5F904E3C7B2D7DAB6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFD2D1D26F6C6EE4E4E4FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFFFFFFFA9A8A9B4B3B4
        FCFAFCFFFFFFFFFFFFFFFFFFFFFFFFF8F8F97D7B7DB2B1B2FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFDFDFDBFD1B8769B643F7128245B09165100134E00124D00
        134E001650001C56053268195D894CA5BE9AECF1EAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFEEF4EB4C8A39115E001C67012A7015E2ECDEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        5F92513C7E2DA3C599FFFFFFFFFFFFB4B3B4CACACAFEFFFEA3A2A3FFFFFFB5B4
        B5D7D7D7AEADAE7D7B7C9A999AF9F8F9FFFFFFFFFFFF8C898AE3E3E3918F90E2
        E2E2C7C6C7858284868485BDBCBDC5C4C56B686AFFFFFFFFFFFFFFFFFFAEADAE
        A1A0A1C3C1C3767376848284EDEDEDFFFFFFC8C7C85F5C5E8886878F8D8FDFDE
        DE8583849190918D8A8CF7F7F7575456E6E5E5999798EEEDEEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDABC5A0
        447B301657001051001555001959001B5B001C5B001C5C00165600145400195A
        001758001153001152002D691782A775E8F0E6FFFFFFFFFFFFFFFFFFFFFFFFEF
        F5ED4F8E3D1163001A6905377C23EAF2E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF5F93553C802FA4C7
        9CFFFFFFFFFFFFA6A4A58D8C8DFFFFFF716E70EDEDEDABA9AB8D8A8D6A686AC0
        BFBF8A8889DFDEDFFFFFFFF6F6F64F4C4E989798615E60918F91959495989697
        807E7FA2A1A2BFBEBF484547D0CFD0FFFFFFFFFFFF878586AFAEAF737173E5E5
        E5AFAEAF898788FFFFFFEBEBEB595658F5F5F5A2A1A26F6D6F797778AEADAE65
        6365ECECEC4F4C4E949293E2E1E2F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5E3CF51873D135900145A001C60001D62
        001D62001D61001D62001C610013550034641F366025134502104E001C62001D
        6300175D001056002F6E19A6C399FFFFFFFFFFFFFFFFFFFFFFFFF0F6EF4D903F
        116602166A06327B23ECF3EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF5F95573C8233A3C79EFFFFFFFFFFFFD5
        D4D5727071FFFFFF949293ADABADDBDADA7371735F5D5F969495737172A6A4A6
        FFFFFFDCDBDC828081848283716F71858384B9B8B99E9B9E8C898C817E80908F
        90A8A7A87C7A7CF6F6F6FFFFFFB7B5B79A9999817F81D7D7D7ECEBEC676567FF
        FFFFFDFDFD6E6C6DE5E5E5D5D4D4797779AFAEAF9F9D9E676466AFAEAF939193
        878586D3D2D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA9C89F246C0D115D001C65001D66001D66001D66001D66001D66011C
        650011570078986AF1F3F0F8F8F8BFC8BC52734B0F43001458001E69011D6700
        176100145F0070A15FF6F9F5FFFFFFFFFFFFFFFFFFEFF6EF4D9141116906176D
        0B35812AECF4EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDF5E985B3B8536A3C9A0FFFFFFFFFFFFFFFFFF6D6B6DFFFFFF
        C5C4C4504E507876789E9B9EC4C3C4817F817A787AD8D7D8FFFFFFD2D2D2A3A1
        A2C4C3C37F7E7FD7D5D79897979594957B797B9D9A9B989797ECEBECA1A0A1C5
        C4C5FFFFFFABA9AB403E3FB9B8B97B7A7B737173ACABABFFFFFFFFFFFF989597
        777577757275C7C6C7B3B2B37E7C7D828082ACABACBCBBBCD8D8D8979597FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97BD8C16640117
        66021E6B061D6A061D6A061D6A061D6A061D6A061C6A04105A0084A479FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFACB9A92A53200E50001D6B061D6B061C69040F60
        00559142F1F7F0FFFFFFFFFFFFFFFFFFEFF6EE4B9344106B09166F0F378530ED
        F4ECFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        5E995E3B873BA3C9A2FFFFFFECECECA5A3A44E4A4D8C8A8C9F9D9E7F7D7FE8E7
        E8FFFFFFFFFFFFEAE8EAEFEFEFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFDFDFDFF
        FFFFFCFCFCFAFAFAE2E1E2FFFFFFFDFDFDFFFFFFFFFFFFF8F8F8FFFFFFF0F0F0
        817F81F7F7F7F3F3F3E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFF0F0F0EBEBEBFFFF
        FFFFFFFFE4E3E4F6F6F5FFFFFFFEFEFEFFFFFFF9F9F9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9EC3951467041A6C091E6F0D1D6F0D1D6F0D
        1D6F0D1D6F0D1D6F0D1D700D0F600079A06EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFE7E8E74D7245135D041E700D1D6E0D1D6E0D106400569549F8
        FAF7FFFFFFFFFFFFFFFFFFEDF5EC4A9448106D0E167113398837EEF5EEFFFFFF
        FFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF5E9A5F3B893CA3CA
        A3FFFFFFF3F3F3BDBCBCC4C3C4BBB9BBCDCDCDE2E2E2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFBFD9BC1A700F196F0E1D72131C72131C72131C72131C72131C72131D73
        141067065D9054FEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF99B3940F5E041D73131D72131D72131D72130E670477AD6FFFFFFFFFFFFF
        FFFFFFFFFFFFEDF5ED499549116F11167316398A3AEEF6EEFFFFFFFFFFFFFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF5E9B613B893FA3CBA6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF4EC34842F156F
        101D76191C76181C76181C76181C76181C76181D7619146F11387D31EFF3EEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E8E22A6F24177213
        1C76181C76181C76181C76181B7516136E0EB0D1AEFFFFFFFFFFFFFFFFFFFFFF
        FFEDF5ED49964D1172151675193B8D40EFF6EFFFFFFFFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDF5E9D643B8C41A3CBA6FFFFFFC8C7C7595658605D5F615E60
        575557B4B3B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFABA9AB565355615E60605E605B585AD3D2D3FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF908E8F595658615E60615D60595759CECDCDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA09FA0585557615E605F5D5F5F5D5FDEDEDEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AB27A0F6E0E1C781C1C781C1C781C1C
        781D1C781D1C781D1C781D1A771B1A6D18C8D9C6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5E8E590F690E1D7A1E1C781C1C781C1C78
        1C1C781C1C781C157215358735F0F6EFFFFFFFFFFFFFFFFFFFFFFFFFEEF5EF48
        974E11731815771C409045EEF5EFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        5E9D643B8C42A3CBA7FFFFFFA6A4A5010000090508090609000000868586FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C0C107
        0406070406090609040103403E407D7B7D7B797B7B797B7C7A7C767376171516
        0603050906090401031E1C1DEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6664
        65000000090609080407080407C9C8C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFDAEADA207C2419781D1C7A201C7A201C7A201C7A201C7A201C7A20
        1C7B210F6D1282AC81FFFFFFFFFFFFFFFFFFFFFAFE89B18985B887DDEBDEFFFF
        FFFFFFFFA7BFA51165111C7C211C7A201C7A201C7A201C7A201C7A201C7A201C
        7A201070138EBF90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF5ED45954D13761B
        16781E48954FF4F7F5F1F1F1DBDBDBB8B8B8C1C1C1DFDFDF5E9D653B8C44A3CC
        A8FFFFFFABA8A90B080A1310121411130905088F8E8FFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A47490A0709141113
        1511140D0A0D080507080507080507080507090608120F111511141511140704
        067F7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6D6E09060814111312
        0F11131012CECDCEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF79B37E
        1072161C7C241C7C241C7C241C7C241C7C241C7C241C7C2415771C3A853EF5F7
        F4FFFFFFFFFFFFFFFEFF83A68495BE9887BB8A50995568A76D95C0982A7A2E17
        781E1C7C241C7C241C7C241C7C241C7C241C7C241C7C241C7C2416781E348A3C
        F3F8F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4F0E52E883716792113771D9FC8
        A3F1F1F1DBDBDBB8B8B8C1C1C1DFDFDF5E9E653B8D44A3CCA9FFFFFFABA8A90B
        080A1310121411130905088D8C8DFEFEFEFDFDFDFDFDFDFDFDFDFEFEFEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A7A70A07091411131411131411131310
        120A07090906090D090C151114141113141113110D10181517DBDBDBFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF6E6C6E090608141113120F11110E11CECECE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F9F4318A3B1678201C7C251C7C
        251C7C251C7C251C7C251C7C251C7D2413701AB1CEB2FFFFFFFFFFFFFFFFFFA8
        BDA771A87714791E61A668A7CFAC92C3963F924713771C13771C1B7B241C7D26
        1C7C251C7C251C7C251C7C251C7C251C7C251C7C2513761CB2D5B7FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFA6CFAC13771E1A7C24338A3DE3E9E4DBDBDBB8
        B8B8C1C1C1DFDFDF5E9E663B8D45A3CCA9FFFFFFABA8A90B080A131012141113
        110E112B272A403E3F3F3C3E3E3C3E3D3A3C3F3D3F4C484B777376D3D3D3FFFF
        FFFFFFFFFFFFFFF4F4F42E2B2D0E0B0D1411130F0C0E2E2A2D9F9E9F9E9D9E7A
        787A110E111310121411130905075C5A5CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEBEAEB2B282B0F0C0E1411131411130A0709716E70FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFBBDABE15791F1C7D261C7E271C7E271C7E271C7E271C
        7E271C7E2712761C4F9254FFFEFEFFFFFFFFFFFFA9C3A9196E20B5D9BA288432
        0F751A187B23529F5BA4CEA9A9D0AE5AA3621B7D2511771C1B7C251D7E271C7E
        271C7E271C7E271C7E271C7E2711771C6AAD73FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFDFA3F9349167A21288231A7C7ABDBDBDBB8B8B8C1C1C1DFDFDF
        5E9E663B8D45A3CCA9FFFFFFABA8A90B080A1310121411131511140E0B0D0A06
        090A07090B080A0C090B0B080A0A0609060305191517BDBCBDFFFFFFFFFFFFFF
        FFFF817F81080507141113110E11181517E2E1E1FFFFFF8D8A8D080507141113
        1310120E0B0DBEBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A68690704
        06151114141113141113110E11120F11C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF81BA8810761C1C7E281C7E281C7E281C7E281C7E281C7E281C7E2715721F
        BDD4BEFFFFFFFFFFFFE8EDE72C75300970158FC19668AC7012771E1C7D261378
        1F15792045964F9AC8A0B1D4B568AC7020802B11771C1A7C241D7E281C7E281C
        7E281C7E28167A223A9044F7FAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        83BB8911771C2D86376AA472DBDBDBB8B8B8C1C1C1DFDFDF5E9E663B8D45A3CC
        A9FFFFFFABA8A90B080A131012141113141113141113131012110D10100D0E0C
        080B110E11151114141113090608363335F6F6F6FFFFFFFFFFFFDCDBDC191618
        110D10151114070406828082FFFFFF3632350D090C1411130C090B3E3B3DFDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBCBD0F0C0E110E11141113110D0F12
        0F111511140A0609454244FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF57A16012771E
        1C7E281C7E281C7E281C7E281C7E281C7E2814781F4B9252FEFEFEFFFFFFFFFF
        FF7DA27C0D6C17167B23479851A7D0AD1579201C7E281C7E281C7E2815792112
        771E3A91448EC094B4D7B978B48028853311761C187B241C7E281C7E281A7C25
        23812EDFEEE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1D4B51479203088
        394C9355DBDBDBB8B8B8C1C1C1DFDFDF5E9E663B8D45A3CCA9FFFFFFABA8A90B
        080A1310121411130A0709727072CFCFCFC4C3C4C1C1C19A989A201C1F110D10
        141113120F11110D10C9C8C9FFFFFFFFFFFFFFFFFF5C595C0906081411130D09
        0C454244C6C5C6110E11120F111411130906089A999AFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF7F7F73835370B080A1511140D090C4D4A4C2E2A2D100D0F141113
        0906089E9B9EFFFFFFFFFFFFFFFFFFFEFEFE40944B1579211C7E281C7E281C7E
        281C7E281C7E281C7F2812751DACCBAEFFFFFFFFFFFFE8ECE7266D2A187C241C
        7D27197C24AFD3B3378F42167B23167A22167A211C7E281C7E28167A2311771C
        2F8A3B81BA88B5D7BA7DB885298634167A221C7E281C7D27187B24C3DEC7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAE3CE197C253087394A9152DBDBDBB8
        B8B8C1C1C1DFDFDF5E9E663B8D45A3CCA9FFFFFFABA8A90B080A131012141113
        070406999798FFFFFFFFFFFFFFFFFFFFFFFF4440430B080A1411131310120D09
        0BB2B0B1FFFFFFFFFFFFFFFFFFBBBBBB0D0A0D131012110E112420235B595B0D
        0A0D1411130F0C0E262325EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868485
        0704061411131310120D090CC7C6C77A77790704061411130D0A0D272426EBEB
        EBFFFFFFFFFFFFF7FAF7378F42167A221C7E281C7E281C7E281C7E281C7E2818
        7B242F8439F0F5F0FFFFFFFFFFFF97B2960E66161D80291C7E2811761C75B27C
        77B37E0D751945974F42964D177B241C7E281C7E281D7E28147920066E112181
        2DA3CDA7EBF4ED5EA56614781F1C7E27157921B3D5B8FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFCAE2CE197C243087394A9151DBDBDBB8B8B8C1C1C1DFDFDF
        5E9E663B8D45A3CCA9FFFFFFABA8A90B080A1310121411130D0A0D525051908F
        908D8A8C8F8D8F615F61141113120F11141113120F11110D10CDCBCBFFFFFFFF
        FFFFFFFFFFFAFCFA3A383A0C090B141113141113131012141113141113080407
        787577FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D4D4171416100D0F1411130C09
        0B3A3739FFFFFFD1D0D1121011110E11141113060406706E70FFFFFFFFFFFFF3
        F8F4348C3F177A231C7E281C7E281C7E281C7E281C7E2811761D66A56DFFFFFF
        FFFFFFFFFEFF51855212721C1B7E2613781F0E751A489852DBECDDA3CDA7A1CB
        A6C0DDC53D924715792013781E12771D2E89396EAF77A2CDA796C59DDDEDDF51
        9E5B1479201C7E28147920AFD3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B0D4B414792030873952965BDBDBDBB8B8B8C1C1C1DFDFDF5E9E663B8D45A3CC
        A9FFFFFFABA8A90B080A1310121411131511140D0A0D08050708050708050709
        0609131012141113110E11040104484547F9F9F9FFFFFFFFFFFFFFFFFFFFFFFF
        969495080507141113141113131012141113110E11161215D5D4D5FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF4D4B4D0906081411131411130906089B9A9BFFFFFFFF
        FFFF555254090608141113110D10120F11CAC9CAFFFFFFF8FCF8388F42167A22
        1C7E281C7E281C7E281C7E281C7E2811751C9EC5A2FFFFFFFFFFFFF0F1EF256B
        270C721721812D58A2609DC9A2AED3B380BA873F93490D731866A96E87BE8F16
        792057A16099C8A0B0D4B485BC8C378F413C9145A4CEA8167A221C7E271C7E28
        157921B4D7B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82BA8811771C2B85
        3682B287DBDBDBB8B8B8C1C1C1DFDFDF5E9E663B8D45A3CCA9FFFFFFA6A5A603
        00020A07090B080A0B080A0B080A0B070A0B070A0B070A0B080A0B080A0D090C
        1511144A4749E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEBEC1F1C1E0604
        060B080A0B080A0B080A020002555254FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94
        93940200010B070A0B080A0602052B282AF1F1F1FFFFFFFFFFFFC5C5C50D0A0D
        0906090C090B0200013D3A3CF5F5F5FEFFFF42954D1579201C7E281C7E281C7E
        281C7E281B7D261A7924CEE1CFFFFFFFFFFFFFD5DED33D7F4085BD8DAFD3B39A
        C7A054A05E1E7F2A11761C167A22187B24268532C7E1CAABD1B097C69D55A15F
        248331187B2514792399C7A066AB701478201B7D25187B23187B24C6E1C9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF8FCF83D9247167A22298334BED5C1DBDBDBB8
        B8B8C1C1C1DFDFDF5E9E663B8D45A3CCA9FFFFFFE2E2E2A5A3A4A7A5A6A7A5A7
        A7A5A7A7A5A7A7A5A7A7A5A7A7A5A7A7A5A7A8A7A7B4B3B3D4D3D3FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C0C1A5A3A4A9A8A8A9A8A8A9
        A8A8A4A3A4DCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBB9BAA4A3A4A9A8A9
        A9A8A8A4A3A4CBCACBFFFFFFFFFFFFFFFFFFFFFFFFB9B8B9A6A5A6A9A8A9A8A7
        A8A4A3A4EFEEEFFFFFFF5AA36412771E1C7E291C7E291C7E291C7E29197C2529
        8133E6EEE6FFFFFFFFFFFFCDD1CA87A9896FB1792D873812781F1478201B7D27
        1C7E291C7E291C7E290E751B9DC9A173B27E25833A3E93554E9D684F9E6965AB
        7DC8E2D2519E6A4C9B644395592E8840288535E2EFE4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFA3CDA813781F187B244F9A58E9EDE9DBDBDBB8B8B8C1C1C1DFDFDF
        5E9E673B8D46A3CCA9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF86BC8D10761C1C7E291C7E291C7E291C7E29167A223F9048FCFDFCFFFFFF
        FFFFFFBCC6BA28772E09731612771E1C7E291C7E291C7E291C7E281A7C25197C
        251F7F2E6EAF7FB7D8C34F9D6B57A17155A1704A9A66A7CFB597C6A84B9A6756
        A17057A272519E6D6AAD80F9FCF9FFFFFFFFFFFFFFFFFFFFFFFFE2EFE42D8838
        167A23167A22CEE3D0F1F1F1DBDBDBB8B8B8C1C1C1DFDFDF5E9E673B8D46A3CC
        A9FFFFFFEBEBEBBFBEBFC3C1C1C3C1C1C3C1C1C3C1C1C3C1C1C3C1C1C3C1C1C0
        BFC0C3C3C3D2D1D2F3F3F3FFFFFFFFFFFFFFFFFFD7D5D7BAB9BABEBDBEBDBCBD
        BDBCBDF6F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD9D9BAB9BABEBDBEBEBD
        BEB9B8B9E5E4E4FFFFFFFFFFFFFFFFFFDBDBDBABA9A9868485716F7067646767
        6467737172939192C5C4C5FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFC3DEC7187B24
        197C241C7E281D7F291D7F29147920519959FFFFFFFFFFFFFFFFFFB0BCAE88A8
        889ACAA2469951147A21137820197C241C7E2628853640945654A06E59A375C8
        E1D161A77A529F6C529F6D5DA577CBE3D45DA57652A06D55A16F55A16F4B9A66
        98C7A9FFFFFFFFFFFFFFFFFFFFFFFFEAF4EB41954D12781F15792293C39AFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF5F9E673C8E46A3CDA9FFFFFFA9A7A809
        0607110D10110E11110E11110E11110E11110E11110E11110D10110E11161316
        292628656364E1E1E1FFFFFF9F9E9F070506100D0F100D0F080507828081E2E2
        E2DCDCDCDCDCDCDEDEDED7D7D7353234090709100D100D0A0D131011D1D0D1FF
        FFFFDEDDDD5956581916180B080A080507080507090507090508080507090507
        110D10393638AEACADFFFFFFFFFFFFFFFFFFFAFDFD5DA6712785381C7F291A7D
        241B7E2611781D5DA265FFFFFFFFFFFFFFFFFFD3DCD24271404F7F4F96BA97A2
        CEA752A05B2E893F3F935655A16F59A37556A2704B9A66A7D0B593C4A44C9B67
        4B9B6799C7A9A5CEB34A9A6655A16F55A16F55A16F4E9D6ACDE4D5FFFFFFFFFF
        FFFFFFFFEAF4EB45975011771C197C2577B17FFCFDFCFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDF5F9E673C8E46A3CDA9FFFFFFA9A7A8090609110E11120F11
        120F110D0A0D0A06090A07090A07090D090C110E11110E110E0B0D0502042B29
        2BDFDFDFF5F5F52A26290D090C120F11110E111310121C191C1C181B1C181B1C
        181B1A1619110E11120F11120F11070406545153FFFFFFD9D8D8282527060305
        110D10141113110D100906090906090906080D090C141113120F110907090A07
        09929091FFFFFFFFFFFFFFFFFFA6CFB74C9B684A9B6238904B2B883B167C246B
        A972FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEB1C4AF577E585E8367B5D2C0C8E2D3
        8DC0A055A16F4B9B6753A06D509E6B72B288C1DDCB4E9D6856A270CAE3D266AB
        7E529F6C55A16F55A16F4F9D6A6DAF85F9FDFAFFFFFFFFFFFFEBF4EC46985011
        771C197D2579B480FAFCFAFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        5F9E673C8F47A3CDA9FFFFFFABA8A90B080A131012141113110E112D2A2D4340
        42403E3F3F3C3E2B282B0D0A0D120F111411131511140502045E5B5DFFFFFF7F
        7C7E0804071411131411131310120F0C0E0906080906080B0709110E11141113
        1411131310120C090BB9B8B8FEFEFE4A47490604061511141411130F0C0E1C19
        1C716F71A2A1A28F8D8E3E3B3D0D090C1411131411140F0C0E131012D1D0D1FF
        FFFFFFFFFFEAF4ED5BA57754A17159A47657A3734799638EBC9DFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A89A397D4F75B78DB3D7C0C6E1D094C5
        A65AA4754A9B684E9E6AC5DFCE64AB7E86BE9AB2D5BF4B9D6855A27155A27055
        A2704A9B67B4D7C1FFFFFFFFFFFFECF5ED47995211781D197D2676B27EFAFCFA
        FFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF5F9E683C8F47A3CD
        A9FFFFFFABA8A90B080A131012141113090608969495FFFFFFFFFFFFFFFFFFEE
        EEEE8F8D8E100D0F131012141113100D0F1E1C1DEDEDEDE1E1E1181517110E11
        141113110E11201D1F433F413F3D3F3936381411131310121411130C090B3936
        38FEFEFECFCFCF100D0F120F11141113110E11191618C3C1C3FFFFFFFFFFFFFF
        FFFFF6F6F64542440C090B141113151114070406737173FFFFFFFFFFFFFFFFFF
        A6D0B54A9D6856A47256A4724D9E6A95C1A5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB8C6BC42875951A26F4C9E6A6AAF83A9D1B8CAE3D3A1CDB158
        A5758EC3A19FCBAFBBDBC771B28950A16D56A37156A4724E9F6B6FB288F8FCF9
        FFFFFFEDF6EE46995211781E1A7E2675B27DFAFDFBFFFFFFFFFFFFFFFFFFFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF609F693D9048A3CEAAFFFFFFABA8A90B
        080A131012141113090608969495FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C494B
        0A07091411131310120E0B0DBEBCBEFFFFFF5856580906091511140F0C0E2925
        28EDECEDFFFFFFA5A4A50C090A131012141113080507939293FFFFFF95949509
        06081411131411130906095B595AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B4B4
        0D090C1310121411130C080B464345FFFFFFFFFFFFFFFFFFF6FAF770B2894FA0
        6C57A4754D9E6A95C4A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88
        A59146926158A77658A57353A26F4D9F6A63AB7EA2CEB2C7E2D1B8DAC4F4F9F5
        B8DAC54EA06C57A47357A47355A37152A16FD0E6D8FFFFFFEDF5EE499B551179
        1F1B7E2875B27DF9FCFAFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDF60A06A3D9149A3CEAAFFFFFFABA8A90B080A131012141113
        090608959394FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A78790805071411131310
        120A070AA9A8A9FFFFFFB8B7B80D090B1310121411130A0609A8A6A7FFFFFF54
        52540906091411130F0C0E221F21E8E8E8FFFFFF7F7D7E090507141113141113
        080507858385FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D7D7161316110E111411
        130D0A0D343134F9F9F9FFFFFFFFFFFFFFFFFFDAECE15AA77753A37152A36F7B
        B891FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE648F714E9E6B59A777
        58A67658A67658A67655A4724EA06C5EA97A96C8A9D4EADC79B99151A26F58A6
        7557A5754CA06BA7D1B7FFFFFFEDF6EE4A9D56127A201B802972B17AF8FBF8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        60A16A3E9249A4CEABFFFFFFABA8A90B080A131012141113090608959394FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF726F710805071411131310120C090BB0AEAFFF
        FFFFF9F9F93936390C090B1411130906095B595BE8E8E81C191C110D10141113
        0805076F6C6EFFFFFFFFFFFF8886870905081411131411130805077A787AFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD3D2D2141113120F111411130D0A0D373336FA
        FAFAFFFFFFFFFFFFFFFFFFFFFFFFC4E1CF55A67555A67556A6758DC1A1DCECE2
        FFFFFFFFFFFFFFFFFFFFFFFFEEEFED52896556A77659A8785AA8785AA8785AA8
        785AA8785AA87857A77650A37058A77759A7775AA87859A8784EA26E92C6A6FF
        FFFFEEF6EF4C9E58137B221C802A71B17AF7FBF8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF61A26B3E934AA4CF
        ABFFFFFFABA8A90B080A1310121411130805079A9899FFFFFFFFFFFFFFFFFFFF
        FFFFF0EFEF302D2F0D0A0D141113120F11110E11CAC9CAFFFFFFFFFFFF929092
        070406141113100C0F2F2C2E8D8A8C0D090C141113120F11131113D2D1D1FFFF
        FFFFFFFFAFAEAF0B070A1411131411130D090C3D3A3CFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF9B999A0A06091411131411130A07094F4C4FFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC1DFCE5AAB7A56A87753A6735CA97B81BD98ACD2BAD4E7
        DCEBF3EEB9D0C04F986B5CAD7C5CAC7B5CAC7B5CAC7B5CAC7B5CAC7B5CAC7B5C
        AC7B5CAC7C5BAB7A5CAB7B5AA97A51A57193C8A8FFFFFFF0F7F04D9F5A137D23
        1C822C6FB079F7FBF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF61A36C3F954EA6CFACFFFFFFABA8A90B
        080A1310121411130B080A787678CAC9CAC9C8C9C6C5C6A09E9F3E3B3D0D090C
        1411131411130D090C2D2A2CF5F5F5FFFFFFFFFFFFE7E7E7211D20100D0F1310
        12171517262426110E111511140A06094E4B4EFFFFFFFFFFFFFFFFFFE7E6E71F
        1C1E0F0B0E1411131411130D090C777576EEEDEEFFFFFFFFFFFFBCBBBC252224
        0F0C0E141113141113060305959494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFD0E8DA6DB58955A9775CAE7C58AB7955A8765BAB7A65AF825FAB7C5E
        AE7E5FAF7F5FAF7E5FAF7E5FAF7E5FAF7E5FAF7E5FAF7E5FAF7E5FAF7F5FAF7E
        58AC795BAD7CA9D4BAFFFFFFF3F8F44EA15C147E251D842E6FB17AF7FBF8FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDF62A46D409650A7D1AEFFFFFFABA8A90B080A131012141113
        141113131012120F11120F11110D100B080A0D090C151114141113110D100402
        048F8D8FFFFFFFFFFFFFFFFFFFFFFFFF6A6769080507151114131012110D1015
        11141411130A0709AEADAEFFFFFFFFFFFFFFFFFFFFFFFF868586050204110E11
        1511141310120C090B2E2A2D504E4F3F3D3F1310120E0B0D1511141411130604
        06383537F0F0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED
        F7F195CBAB5EB17F5AAF7D61B28262B38360B18161B28263B38362B28362B283
        62B28362B28362B28363B38363B38362B2825DB07F59AE7B79BE95D0E8DAFFFF
        FFF1F8F350A35F1681281E86306DB279F7FBF7FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        64A670409952A6D1ADFFFFFFA6A4A50200020A07090B080A0B080A0A07090906
        090906090906090B080A0A07090906080704060E0B0D727071FEFEFEFFFFFFFF
        FFFFFFFFFFFFFFFFCBCACB0D090C0906080B080A0B080A0B080A040204302D2F
        F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE7673750D090C0704060D0A0D100D
        0F0D090C0905070A06090F0C0E0F0C0E0906090604063B383ADADADAFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3EBDD
        8FCAA867B8885DB38260B48363B58665B78766B88866B88866B88865B78864B7
        8761B5845EB38261B4857CC199BBDFCAF9FCFAFFFFFFF0F7F152A66216842B1F
        89336EB37BF6FAF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF64A872449B547EBD
        8CFFFFFFBEBCBD3C393B433F4244404344404344404344404344404344404344
        40434744465956587D7B7DC4C3C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF6866683D3A3C4440434440434440433938399E9B9DFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBBBABB5F5D5E2F2D2E1D1A1C151114120F1214
        11141A1619272426494548979697F7F6F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F1E7B4DE
        C68ECDA879C4996CBE9068BC8D67BC8C67BC8C6ABD8E72C19584C8A2A5D8BBD0
        EADBFAFDFCFFFFFFFFFFFFECF5EE53A76519862E228C386DB37BF4FAF5FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF65AA744AA15E409E53D1E8D7FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF8F8F8DFDFDFCDCBCDC7C6C7CBCBCBD9D9D9F0EFEF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FCF8E2
        F3EAD8EFE2D4EDDFD5EEE1DDF1E6EEF8F3FEFFFEFFFFFFFFFFFFFFFFFFFFFFFF
        C7E4CE46A25A1C8A3323903A6CB47CF4FAF6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDF85BC934AA561389C503FA156BFE2C8FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F9F5C9E6D175BD872A964321913C2594
        3F6FB881F5FAF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        D2E3D74CA86540A45A2798442A994857B16F72BE8673BE8772BE8772BE8772BE
        8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772
        BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE87
        72BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE
        8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772
        BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE87
        72BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8772BE8773BE
        8772BE8666B87C46A8602A994721953F2899462C9A498FCA9FF8FCF9FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1B7DBC241A8
        5E41A85F41A85F3BA45939A35639A35639A35639A35639A35639A35639A35639
        A35639A35639A35639A35639A35639A35639A35639A35639A35639A35639A356
        39A35639A35639A35639A35639A35639A35639A35639A35639A35639A35639A3
        5639A35639A35639A35639A35639A35639A35639A35639A35639A35639A35639
        A35639A35639A35639A35639A35639A35639A35639A35639A35639A35639A356
        39A35639A35639A35639A35639A35639A35639A35639A35639A35639A35639A3
        5639A35639A35639A35639A35639A35639A35639A35639A35639A3563AA3583C
        A45940A85E46AA6372BD89C9E6D0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFD
        FDF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBD6EBDD9DD2AE80C6967F
        C59580C69680C69680C69680C69680C69680C69680C69680C69680C69680C696
        80C69680C69680C69680C69680C69680C69680C69680C69680C69680C69680C6
        9680C69680C69680C69680C69680C69680C69680C69680C69680C69680C69680
        C69680C69680C69680C69680C69680C69680C69680C69680C69680C69680C696
        80C69680C69680C69680C69680C69680C69680C69680C69680C69680C69680C6
        9680C69680C69680C69680C69680C69680C69680C69680C69680C69680C69680
        C69680C69680C69680C69680C69680C6967FC69582C69896CFA9AFDABDD7EBDE
        F9FAF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF6F6F6DBDBDBB8
        B8B8C1C1C1DFDFDFF1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1E6E6E6B8B8B8C1C1C1DFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFCBCBCB}
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn2: TsBitBtn
      Left = 288
      Top = 176
      Width = 113
      Height = 57
      Cursor = crHandPoint
      TabOrder = 2
      OnClick = sBitBtn2Click
      Glyph.Data = {
        EE3B0000424DEE3B000000000000360000002800000068000000310000000100
        180000000000B83B0000C21E0000C21E00000000000000000000A1A1A1838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        838383838383838383838383838383838383C1C1C1CBCBCBB8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8B8C1C1C1DFDFDFE6E6E6DBDBDBDBDBDBDBDBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBB8
        B8B8C1C1C1DFDFDFF1F1F1F6F6F6F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        F1F1F1FBFBFBFDFDFDFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        F1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD
        FDD8CCC57F58417F58417F5841845E47B7A194F4F0EEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE9E2DE72472D65
        361A65361A65361A70452BD2C4BCFCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7F6BBA79B65361A65361A65361A
        65361A8A6651F2EEEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        F1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE6DFDA89655065361A65361A65361A65361AC2B0
        A5FEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFBF9F9C5B4A970452B65361A65361A65361A72482FEFEAE7FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFDFDFCF3F0EEEBE5E2EAE4E0EFEBE8FAF9F8FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9
        E3DF97786565361A65361A65361A65361A9F8270FAF9F8FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FDFCF7F4F0F2EBE4F1EBE4F7F4F0FDFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDFF1F1F1F6F4F4D9CFC9C8B8AEC8B8AEC8B8AED3C6BEF9F8F6
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF5F2F0D5C9C1AE9587997A68967663A38676BEAB9FDBD0CAE9E2DED0C2BAC8
        B8AEC8B8AEC8B8AEE7E0DCFDFDFDFFFFFFFFFFFFFFFFFFF7F5F4AD948565361A
        65361A65361A65361A6B3E22D1C4BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F3
        EEDFD0BFDBC9B6DBC9B6DCCBB8E8DDD1FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F2EEE0D1C1CAB094BB9A76
        BA9974C8AE91DBCAB6EEE7DEEEE6DDDDCCBBDBC9B6DBC9B6DDCCBAF7F4EFFFFF
        FFF9F7F4E0D0C0DBC9B6DBC9B6DECDBCF2ECE6FEFDFDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        F1F1F1EBE7E396766365361A65361A65361A795139DBD0CAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F7F6C7B6AC7F584166
        381C65361A65361A65361A67381D835D46997B6874493065361A65361A65361A
        A08472F9F7F6FFFFFFFFFFFFFFFFFFECE7E39C7E6C65361A65361A65361A6536
        1A65361A896651F1EDEAFFFFFFFFFFFFFFFFFFFFFFFFE6DACCA579499A68329A
        68329B6A34B5916AF1EBE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF9F6F3D2BCA5A67A4B9A68339A68329A68329A68329F6F
        3CB99772BB99759E6E3B9A68329A68329C6C38D4BFA8FFFFFFEEE6DEA375459A
        68329A68329E6E3ACEB69DF9F6F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1F2F0EE9A7C
        6965361A65361A65361A6A3D22B29A8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6DEDA92715D65361A65361A65361A65361A
        65361A65361A65361A66371C67391D65361A65361A65361A70442AF5F2F1FFFF
        FFFFFFFFFFFFFFE5DDD8906F5B65361A65361A65361A65361A65361A6B3E23BB
        A79AFFFFFFFFFFFFFFFFFFFFFFFFEDE4DAA77C4D9A68329A68329A6832A67A4A
        DDCDBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFE6DACDAE865B9A68329A68329A68329A68329A68329A68329A69349C6C389B
        69349A68329A68329A6832AB8256FFFFFFF0E8E0A77C4E9A68329A68329A6832
        B48F67F2EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBAA9182683A1F65361A65
        361A67381D957561FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8CCC57D563E65361A65361A65361A65361A987A67B6A093AC93
        848C6A556B3E2465361A65361A65361A65361ADED5CFFFFFFFFFFFFFFFFFFFDB
        D0C9825B4465361A65361A65361A65361A65361A66371B845E48E1D9D3FFFFFF
        FFFFFFFFFFFFFBF9F7AD855A9A68329A68329A6832A0713FCEB69CFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAC7B3A478479A
        68329A68329A68329B6934C1A282C8AC8FC2A484AC83579B6A359A68329A6832
        9A68329C6B36F7F4F0F4EFE9B8956F9A68329A68329A6832A37645EEE6DDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDFF1F1F1FBFBFBC2AFA571452B65361A65361A65361A835D46
        F0ECEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5C8
        C179503865361A65361A65361A70452BE9E2DEF9F7F5F3F0EEE2D9D4AC92846E
        422865361A65361A65361AB7A194FFFFFFFFFFFFFFFFFFD1C3BA72472E65361A
        65361A65361A65361A65361A65361A6B3E23A78D7DFAF9F9FFFFFFFFFFFFFFFF
        FFBF9F7E9B6A359A68329A68329B6A34BF9F7DFCFBFAFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8C6B1A376459A68329A68329A6832
        AD8559F4EEE8F7F3EFF4EFEAE7DCCFBA99759B6A359A68329A68329A6832E2D4
        C6F8F5F2CAB0949A68329A68329A68329B6934E1D3C3FDFDFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        F1F1F1FBFBFBDBD0CA7A513965361A65361A65361A784F37D5C9C1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2DAD58D6B5665361A65
        361A65361A683A1FEEE9E5FFFFFFFFFFFFFEFEFED3C6BE7E563F65361A65361A
        65361A916E5AFFFFFFFFFFFFFFFFFFC9B9AF67381D65361A65361A65361A6536
        1A65361A65361A65361A7D553DD0C2BAFFFFFFFFFFFFFFFFFFD6C1AB9D6D399A
        68329A68329A6832B38E66F0E9E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFDDCDBBA77C4D9A68329A68329A6832A67A4BFAF8F6FFFF
        FFFFFFFFFEFEFDD2BCA4A172409A68329A68329A6832C9AF93FEFDFCDDCDBB9A
        68329A68329A68329A6832D0B9A0FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBF0EB
        E9815A4365361A65361A65361A693B1F957461D8CCC5DDD3CDDDD3CDF5F3F1FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F3F1AD9585683A1F65361A65361A65361A
        86614CD0C1B9F8F5F5FFFFFFE5DDD8916F5B65361A65361A65361A71462CFFFF
        FFFFFFFFF8F6F5B7A29565361A65361A65361A65361A73493065361A65361A65
        361A67381D997B68EEE9E6FFFFFFFFFFFFE8DCD09F6F3C9A68329A68329A6832
        A27544CBB297E9DDD2E9DDD2F5F1ECFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFEFE8E0B5916A9A68329A68329A68329B6A35BC9B78E9DFD4FFFFFFFFFFFFE1
        D2C2AA80529A68329A68329A6832B08960FFFFFFE6DACDA476469A68329A6832
        9A6832BB9A75FAF7F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFDFDFD94736066381D65
        361A65361A65361A66381C693C21693C21693C216B3E2373492F977865C0ADA1
        F6F4F3FFFFFFFEFEFEE1D8D38C695565361A65361A65361A65371B693B206D40
        267D553D8B6853744A3065361A65361A65361A65361AE4DCD7FFFFFFF3EFEDA9
        8F7F65361A65361A65361A65361AC6B5AB70442965361A65361A65361A72472D
        C3B1A6FFFFFFFFFFFFFEFDFDA172409A68329A68329A68329A68329B6A359D6C
        389D6C389D6D399E6E3AAA8053C4A788E0D1C0FAF8F6FFFFFFFEFEFDE2D3C4A9
        7F519A68329A68329A68329B69349D6C38A47747B38D65B59169A275449A6832
        9A68329A6832A17342FAF7F4EEE5DDB48F679A68329A68329A6832AA7F53F8F5
        F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEB49E906B3E2365361A65361A65361A
        65361A65361A65361A65361A65361A65361A65361A65361A6E4228B8A296F4F1
        EFFEFEFDE9E3E09B7E6C6E422867391E66371C65361A65361A65361A65361A65
        361A65361A65361A65361A65361ABBA89BFFFFFFEBE5E196756265361A65361A
        65361A66371CECE6E3B69F9265371B65361A65361A65361A8E6D58E3DAD5FEFE
        FEFFFFFFB997729A68329A68329A68329A68329A68329A68329A68329A68329A
        68329A68329A68329B6934AC8357DDCCBBFCFBFAFEFEFEE9DED3AF885E9D6D39
        9B6A349A68339A68329A68329A68329A68329A68329A68329A68329A68329F6F
        3CE3D7C8F4EFE9C1A2819A68329A68329A68329A6832F0E9E0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        F1F1F1FBFBFBFEFEFECDBFB56E432865361A65361A65361A65361A65361A6536
        1A65361A65361A65361A65361A65361A65361A693B20967764E6DFDAFEFEFEFF
        FFFFDED4CEB0988A92725E795037754B3273492F70452B6D402667391D65361A
        65361A65361A957562FFFFFFE6DEDA88644E65361A65361A65361A855F49F1ED
        EAF6F3F3805A4365361A65361A65361A693B20B9A498F8F7F6FFFFFFD1BBA49A
        68329A68329A68329A68329A68329A68329A68329A68329A68329A68329A6832
        9A68329A6832A0713FCCB399F8F4F0FEFEFEFFFFFFE0D1C1C2A483B18A60A679
        4AA47746A27443A0713F9E6E3B9A69339A68329A68329D6C38CEB69CFBFAF8D0
        BAA19A68329A68329A68329A6832DCCBB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFE
        FEEDE7E4754B3265361A65361A65361A65361A72472D85604A86614C80594273
        492F65361B65361A65361A65361A67391DA18473F0ECEAFDFDFCF7F5F4FEFDFD
        FFFFFFFCFCFBE6DFDBDCD1CBCBBBB2AF97887A523965361A65361A65361A7950
        38FFFFFFE0D6D0784F3665361A65361A65361A957461F3F0EEFFFFFFCFC1B86B
        3E2465361A65361A65361A805A43DACFC8FDFDFCE6DBCD9A68329A68329A6832
        9A68329B6934A67B4BAF885DAD855AA97F519F703D9A68329A68329A68329A68
        32A17341D2BCA5FAF7F4FDFDFCFBF9F6FFFFFFFEFEFDF6F2EDEBE1D7E2D3C4D7
        C3AEC2A483A072409A68329A68329B6A35BC9B78FFFFFFDCCAB89F703E9A6832
        9A68329A6832C2A585FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEFFFFFF86614B65
        361A65361A65361A65361AA18574FBFAFAFFFFFFEBE5E2C2B0A585604A65361A
        65361A65361A65361A71462CC3B0A6EFEAE8C1AEA3CFC1B8DED4CEEBE5E1F3EF
        EDF2EEECEBE5E2C3B1A67C553D65361A65361A65361A6B3D22FEFDFDD4C7BF65
        361A65361A65361A65361AA98F7FF7F4F3FFFFFFF7F4F39B7D6A65361A65361A
        65361A65361AA48979F3F0EEFBF9F69F703D9A68329A68329A68329E6F3BD4BF
        A9FDFCFBF8F4F1EAE0D5CAB195AB82559A68329A68329A68329A6832AC8358E9
        DFD3EEE6DDD4C0A9E4D7C8ECE3DAF4EFE9F7F3EFF6F2EDF1EAE2CAB195A17240
        9A68329A68329A6832AC8357FFFFFFE6D9CCAC83589A68329A68329A6832AB82
        56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEFFFFFFA58A7965361A65361A65361A
        65361A9E816FF7F5F4FFFFFFFFFFFFFFFFFFDDD3CD7A523A65361A65361A6536
        1A65361AA38777D8CDC67F58406A3C21815B459A7C69AA9182A88F7F9B7D6B7C
        533B67381D65361A65361A65361A6E4228FBF9F9C4B2A765361A65361A65361A
        65361AC0AEA3FAF9F8FFFFFFFDFDFDDCD2CB774E3665361A65361A65361A7146
        2CD4C6BFFDFCFCB5916B9A68329A68329A68329B6A35CFB89FFCFBF9FFFFFFFF
        FFFFFFFFFFE2D3C4A0703E9A68329A68329A68329A6832D6C2ACD8C5B19E6E3B
        A27442B38D64C2A383C8AC8FC6A98BBB9A76A375449A68329A68329A68329A68
        32B08960FFFFFFEFE7DEB8956F9A68329A68329A68329D6D39F7F4EFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        F1F1F1FBFBFBFEFEFEFFFFFFCABAB165361A65361A65361A65361A8D6A55E3DB
        D6FFFFFFFFFFFFFFFFFFFFFFFFA5897965361A65361A65361A65361A93725FDD
        D3CC835D4765361A65361A65361A65361A65361A65361A65361A65361A65361A
        65361A65361A93725EF7F5F3B0998B65361A65361A65361A65361AD0C2B9FDFC
        FCFFFFFFFFFFFFF5F2F0AF978967391E65361A65361A65361A92705CF3F0EECD
        B49A9A68329A68329A68329A6832C2A484F5F0EBFFFFFFFFFFFFFFFFFFF9F6F3
        B5916A9A68329A68329A68329A6832C4A889E4D8CAA0713E9A68329A68329A68
        329A68329A68329A68329A68329A68329A68329A68329C6C37CAB094FFFFFFF9
        F7F4C6AA8B9A68329A68329A68329A6832E3D6C7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFE
        FEFFFFFFEFEBE865361A65361A65361A65361A7B533BCFC0B8FFFFFFFFFFFFFF
        FFFFFFFFFFA4887765361A65361A65361A65361A906F5BE6DED9A488786E4227
        65361A65361A65361A65361A65361A65361A65361A65361A6D4127987966DED4
        CFF4F1EFA1857465361A65361A65361A73482FE1D7D2FFFFFFFFFFFFFFFFFFFE
        FDFDE1D8D28B685265361A65361A65361A683A1FC3B0A6E4D7C99A68329A6832
        9A68329A6832B59069EDE4DBFFFFFFFFFFFFFFFFFFF9F7F4BA98739A68329A68
        329A68329A6832BD9D7AF1EAE2AE865B9A68329A68329A68329A68329A68329A
        68329A68329A68329A6832A17240C4A889F1EAE3FFFFFFFFFFFFD2BBA49E6E3A
        9A68329A68329A6832CCB297FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEFFFFFFFFFFFF78
        4F3665361A65361A65361A6A3D22AE9587F5F2F1FFFFFFF4F1EFCEC0B7784F36
        65361A65361A65361A65361A906F5BE6DED9E7E0DCCFC0B7C3B0A6AF9789A68B
        7A9777649777649A7B69A88F7FB9A497CCBDB4E9E2DEFFFFFFFAF8F7CCBCB397
        77649777649A7C69BFACA0F4F1EFFFFFFFFFFFFFFFFFFFFFFFFFFAF8F7D7CBC4
        A68B7B977764977764977764AD9385F7F3EFA172409A68329A68329A6832A376
        45DAC8B5FCFAF9FFFFFFF6F2EED9C6B2A375449A68329A68329A68329A6832C1
        A280F6F2EDE6DACDDBCAB7D2BCA4C8AD90BD9D7ABA9874BA9874BA9874C7AB8E
        D2BCA4E0D0C0F4EFEAFFFFFFFFFFFFFFFFFFDECEBDA87D4E9A68329A68329A68
        32B59069FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEFFFFFFFFFFFF9F817065361A65361A
        65361A65361A744A3188644F8C695588644E79503865361A65361A65361A6536
        1A65361A9D7F6DEDE7E4FFFFFFFFFFFFFCFBFBF4F1EFF1ECEAEBE4E1EBE4E1EC
        E6E3F2EEECF8F6F5FEFDFDFFFFFFFFFFFFFEFEFEF8F5F4EBE4E1EBE4E1ECE6E3
        F7F5F3FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFAF1ECEAEBE4E1EBE4
        E1EBE4E1EBE4E1FCFBF9B18A609A68329A68329A68329A6933A87D4FB28D64B4
        8E66B08A60A5794A9A68329A68329A68329A68329A6832D0B89FFAF8F5FFFFFF
        FEFEFEFBF9F7F7F3EFF3EDE6F1EBE4F1EBE4F1EBE4F6F2EEFBF9F7FEFEFEFFFF
        FFFFFFFFFFFFFFFFFFFFE9DFD3B18A619A68329A68329A6832A17240FBF9F6FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        F1F1F1FBFBFBFEFEFEFFFFFFFFFFFFC8B7AD65361A65361A65361A65361A6536
        1A65361A65361A65361A65361A65361A65361A65361A65361A74492FC6B4A9FC
        FBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FCFBC7AB8D9A68329A68329A68329A68329A68329A68329A68329A68329A6832
        9A68329A68329A68329A6832A67B4BE5D9CBFEFEFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF6F2EDBB99759A68329A68329A68329B6A35ECE2D8F7F5F4DED5CFD7CCC5
        CEC0B7EEE9E6FCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFE
        FEFFFFFFFFFFFFE9E2DE65361A65361A65361A65361A65361A65361A65361A65
        361A65361A65361A65361A65361A71462CB6A093F6F4F3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDDECFBD9A6832
        9A68329A68329A68329A68329A68329A68329A68329A68329A68329A68329A68
        32A57949D9C6B1FBF9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDC5A889
        9B6A359A68329A68329B6934D4BFA9EEE8E5B59E909D7F6D7A5139CFC0B8FCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFF
        FFFF997A6765361A65361A65361A65361A65361A65361A65361A65361A65371B
        7C543DA38877E0D6D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EEE8A87D4F9A68329A68329A68
        329A68329A68329A68329A68329A68329B6934A77C4DC8AD90EFE7DFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8DCD0AC83579A68329A68
        329A6833B79671C6B5AB8C685398786693725FD3C6BEFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFDFCFCE9E3DF
        DBD1CBDBD1CBDBD1CBDBD1CBDBD1CBE3DAD5FDFCFCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF9F6F3E8DCD0E8DCD0E8DCD0E8DCD0E8DCD0E8
        DCD0E8DCD0F4EFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        F1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        F1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8
        B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDF
        F1F1F1FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFD
        FDF1F1F1DBDBDBB8B8B8C1C1C1DFDFDFF1F1F1FBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF6F6F6DBDBDBB8
        B8B8C1C1C1DFDFDFF1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1E6E6E6B8B8B8C1C1C1DFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFCBCBCB}
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton40: TsButton
      Left = 16
      Top = 384
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Back'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = sButton40Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sRadioButton1: TsRadioButton
      Left = 160
      Top = 240
      Width = 91
      Height = 17
      Cursor = crHandPoint
      Caption = 'Vip for 1 month'
      TabOrder = 4
      SkinData.CustomFont = True
      SkinData.SkinSection = 'RADIOBUTTON'
    end
    object sRadioButton2: TsRadioButton
      Left = 160
      Top = 256
      Width = 96
      Height = 17
      Cursor = crHandPoint
      Caption = 'Vip for 3 months'
      TabOrder = 5
      SkinData.CustomFont = True
      SkinData.SkinSection = 'RADIOBUTTON'
    end
    object sBitBtn3: TsBitBtn
      Left = 416
      Top = 176
      Width = 113
      Height = 57
      Cursor = crHandPoint
      Caption = 'EU bank transfer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = sBitBtn3Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel22: TsPanel
    Left = 808
    Top = 376
    Width = 105
    Height = 17
    TabOrder = 23
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Label20: TLabel
      Left = 0
      Top = 0
      Width = 59
      Height = 13
      Caption = 'change nick'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabelFX112: TsLabelFX
      Left = 32
      Top = 64
      Width = 105
      Height = 21
      Caption = 'Enter new username'
    end
    object sLabelFX155: TsLabelFX
      Left = 168
      Top = 64
      Width = 78
      Height = 21
      Caption = 'New password'
      Visible = False
    end
    object sLabelFX158: TsLabelFX
      Left = 296
      Top = 64
      Width = 33
      Height = 21
      Caption = 'Code'
      Visible = False
    end
    object sEdit19: TsEdit
      Left = 32
      Top = 88
      Width = 121
      Height = 21
      MaxLength = 15
      TabOrder = 0
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
    object sButton36: TsButton
      Left = 32
      Top = 112
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Change'
      TabOrder = 1
      OnClick = sButton36Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sEdit16: TsEdit
      Left = 168
      Top = 88
      Width = 121
      Height = 21
      MaxLength = 15
      TabOrder = 2
      Visible = False
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
    object sEdit17: TsEdit
      Left = 296
      Top = 88
      Width = 121
      Height = 21
      MaxLength = 15
      TabOrder = 3
      Visible = False
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
    object sButton28: TsButton
      Left = 168
      Top = 112
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Change'
      TabOrder = 4
      Visible = False
      OnClick = sButton28Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton41: TsButton
      Left = 32
      Top = 336
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Request code'
      TabOrder = 5
      Visible = False
      OnClick = sButton41Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel23: TsPanel
    Left = 656
    Top = 216
    Width = 105
    Height = 17
    TabOrder = 24
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Label21: TLabel
      Left = 0
      Top = 0
      Width = 62
      Height = 13
      Caption = 'match details'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabelFX161: TsLabelFX
      Left = 152
      Top = 56
      Width = 151
      Height = 37
      Caption = 'sLabelFX161'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sLabelFX162: TsLabelFX
      Left = 416
      Top = 56
      Width = 21
      Height = 37
      Caption = '0'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sLabelFX163: TsLabelFX
      Left = 552
      Top = 56
      Width = 151
      Height = 37
      Caption = 'sLabelFX163'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sLabelFX164: TsLabelFX
      Left = 816
      Top = 56
      Width = 47
      Height = 37
      Caption = '123'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object MDScorerH1: TsLabelFX
      Left = 152
      Top = 120
      Width = 70
      Height = 21
      Caption = 'MDScorerH1'
    end
    object MDScorerA1: TsLabelFX
      Left = 552
      Top = 120
      Width = 69
      Height = 21
      Caption = 'MDScorerA1'
    end
    object MDScorerH2: TsLabelFX
      Left = 152
      Top = 136
      Width = 70
      Height = 21
      Caption = 'MDScorerH2'
    end
    object MDScorerH3: TsLabelFX
      Left = 152
      Top = 152
      Width = 70
      Height = 21
      Caption = 'MDScorerH3'
    end
    object MDScorerH4: TsLabelFX
      Left = 152
      Top = 168
      Width = 70
      Height = 21
      Caption = 'MDScorerH4'
    end
    object MDScorerH5: TsLabelFX
      Left = 152
      Top = 184
      Width = 70
      Height = 21
      Caption = 'MDScorerH5'
    end
    object MDScorerH6: TsLabelFX
      Left = 152
      Top = 200
      Width = 70
      Height = 21
      Caption = 'MDScorerH6'
    end
    object MDScorerH7: TsLabelFX
      Left = 152
      Top = 216
      Width = 70
      Height = 21
      Caption = 'MDScorerH7'
    end
    object MDScorerH8: TsLabelFX
      Left = 152
      Top = 232
      Width = 70
      Height = 21
      Caption = 'MDScorerH8'
    end
    object MDScorerH9: TsLabelFX
      Left = 152
      Top = 248
      Width = 70
      Height = 21
      Caption = 'MDScorerH9'
    end
    object MDScorerH10: TsLabelFX
      Left = 152
      Top = 264
      Width = 76
      Height = 21
      Caption = 'MDScorerH10'
    end
    object MDScorerH11: TsLabelFX
      Left = 152
      Top = 280
      Width = 76
      Height = 21
      Caption = 'MDScorerH11'
    end
    object MDScorerH12: TsLabelFX
      Left = 152
      Top = 296
      Width = 76
      Height = 21
      Caption = 'MDScorerH12'
    end
    object MDScorerH13: TsLabelFX
      Left = 152
      Top = 312
      Width = 76
      Height = 21
      Caption = 'MDScorerH13'
    end
    object MDScorerH14: TsLabelFX
      Left = 152
      Top = 328
      Width = 76
      Height = 21
      Caption = 'MDScorerH14'
    end
    object MDScorerH15: TsLabelFX
      Left = 152
      Top = 344
      Width = 76
      Height = 21
      Caption = 'MDScorerH15'
    end
    object MDScorerA2: TsLabelFX
      Left = 552
      Top = 136
      Width = 70
      Height = 21
      Caption = 'sLabelFX167'
    end
    object MDScorerA3: TsLabelFX
      Left = 552
      Top = 152
      Width = 70
      Height = 21
      Caption = 'sLabelFX168'
    end
    object MDScorerA4: TsLabelFX
      Left = 552
      Top = 168
      Width = 70
      Height = 21
      Caption = 'sLabelFX169'
    end
    object MDScorerA5: TsLabelFX
      Left = 552
      Top = 184
      Width = 70
      Height = 21
      Caption = 'sLabelFX170'
    end
    object MDScorerA6: TsLabelFX
      Left = 552
      Top = 200
      Width = 70
      Height = 21
      Caption = 'sLabelFX171'
    end
    object MDScorerA7: TsLabelFX
      Left = 552
      Top = 216
      Width = 70
      Height = 21
      Caption = 'sLabelFX172'
    end
    object MDScorerA8: TsLabelFX
      Left = 552
      Top = 232
      Width = 70
      Height = 21
      Caption = 'sLabelFX173'
    end
    object MDScorerA9: TsLabelFX
      Left = 552
      Top = 248
      Width = 70
      Height = 21
      Caption = 'sLabelFX174'
    end
    object MDScorerA10: TsLabelFX
      Left = 552
      Top = 264
      Width = 70
      Height = 21
      Caption = 'sLabelFX175'
    end
    object MDScorerA11: TsLabelFX
      Left = 552
      Top = 280
      Width = 70
      Height = 21
      Caption = 'sLabelFX176'
    end
    object MDScorerA12: TsLabelFX
      Left = 552
      Top = 296
      Width = 70
      Height = 21
      Caption = 'sLabelFX177'
    end
    object MDScorerA13: TsLabelFX
      Left = 552
      Top = 312
      Width = 70
      Height = 21
      Caption = 'sLabelFX178'
    end
    object MDScorerA14: TsLabelFX
      Left = 552
      Top = 328
      Width = 70
      Height = 21
      Caption = 'sLabelFX179'
    end
    object MDScorerA15: TsLabelFX
      Left = 552
      Top = 344
      Width = 75
      Height = 21
      Caption = 'MDScorerA15'
    end
    object Image24: TImage
      Left = 821
      Top = 24
      Width = 28
      Height = 17
      AutoSize = True
    end
    object acZoneLabel1: TsLabelFX
      Left = 1080
      Top = 32
      Width = 77
      Height = 21
      Caption = 'acZoneLabel1'
    end
    object acZoneLabel2: TsLabelFX
      Left = 1040
      Top = 40
      Width = 77
      Height = 21
      Caption = 'acZoneLabel2'
    end
    object acZoneLabel3: TsLabelFX
      Left = 1052
      Top = 32
      Width = 77
      Height = 21
      Caption = 'acZoneLabel3'
    end
    object acZoneLabel4: TsLabelFX
      Left = 1060
      Top = 40
      Width = 77
      Height = 21
      Caption = 'acZoneLabel4'
    end
    object acZoneLabel5: TsLabelFX
      Left = 1104
      Top = 32
      Width = 77
      Height = 21
      Caption = 'acZoneLabel5'
    end
    object acZoneLabel6: TsLabelFX
      Left = 1048
      Top = 32
      Width = 77
      Height = 21
      Caption = 'acZoneLabel6'
    end
    object sLabelFX165: TsLabelFX
      Left = 248
      Top = 96
      Width = 26
      Height = 21
      Caption = 'Pas'
    end
    object sLabelFX166: TsLabelFX
      Left = 272
      Top = 96
      Width = 29
      Height = 21
      Caption = 'Cmp'
    end
    object sLabelFX167: TsLabelFX
      Left = 304
      Top = 96
      Width = 27
      Height = 21
      Caption = 'Tck'
    end
    object sLabelFX168: TsLabelFX
      Left = 328
      Top = 96
      Width = 31
      Height = 21
      Caption = 'Won'
    end
    object sLabelFX169: TsLabelFX
      Left = 360
      Top = 96
      Width = 28
      Height = 21
      Caption = 'Hea'
    end
    object sLabelFX170: TsLabelFX
      Left = 384
      Top = 96
      Width = 31
      Height = 21
      Caption = 'Won'
    end
    object sLabelFX171: TsLabelFX
      Left = 416
      Top = 96
      Width = 27
      Height = 21
      Caption = 'Sho'
    end
    object sLabelFX172: TsLabelFX
      Left = 440
      Top = 96
      Width = 24
      Height = 21
      Caption = 'Sot'
    end
    object sLabelFX173: TsLabelFX
      Left = 504
      Top = 96
      Width = 23
      Height = 21
      Caption = 'Ast'
    end
    object sLabelFX174: TsLabelFX
      Left = 528
      Top = 96
      Width = 23
      Height = 21
      Caption = 'Gls'
    end
    object MDpas1: TsLabelFX
      Left = 256
      Top = 120
      Width = 48
      Height = 21
      Caption = 'MDpas1'
    end
    object MDpas2: TsLabelFX
      Left = 256
      Top = 136
      Width = 48
      Height = 21
      Caption = 'MDpas2'
    end
    object MDpas3: TsLabelFX
      Left = 256
      Top = 152
      Width = 48
      Height = 21
      Caption = 'MDpas3'
    end
    object MDpas4: TsLabelFX
      Left = 256
      Top = 168
      Width = 48
      Height = 21
      Caption = 'MDpas4'
    end
    object MDpas5: TsLabelFX
      Left = 256
      Top = 184
      Width = 48
      Height = 21
      Caption = 'MDpas5'
    end
    object MDpas6: TsLabelFX
      Left = 256
      Top = 200
      Width = 48
      Height = 21
      Caption = 'MDpas6'
    end
    object MDpas7: TsLabelFX
      Left = 256
      Top = 216
      Width = 48
      Height = 21
      Caption = 'MDpas7'
    end
    object MDpas8: TsLabelFX
      Left = 256
      Top = 232
      Width = 48
      Height = 21
      Caption = 'MDpas8'
    end
    object MDpas9: TsLabelFX
      Left = 256
      Top = 248
      Width = 48
      Height = 21
      Caption = 'MDpas9'
    end
    object MDpas10: TsLabelFX
      Left = 256
      Top = 264
      Width = 54
      Height = 21
      Caption = 'MDpas10'
    end
    object MDpas11: TsLabelFX
      Left = 256
      Top = 280
      Width = 54
      Height = 21
      Caption = 'MDpas11'
    end
    object MDpas12: TsLabelFX
      Left = 256
      Top = 296
      Width = 54
      Height = 21
      Caption = 'MDpas12'
    end
    object MDpas13: TsLabelFX
      Left = 256
      Top = 312
      Width = 54
      Height = 21
      Caption = 'MDpas13'
    end
    object MDpas14: TsLabelFX
      Left = 256
      Top = 328
      Width = 54
      Height = 21
      Caption = 'MDpas14'
    end
    object MDpas15: TsLabelFX
      Left = 256
      Top = 344
      Width = 54
      Height = 21
      Caption = 'MDpas15'
    end
    object MDsho1: TsLabelFX
      Left = 1064
      Top = 120
      Width = 48
      Height = 21
      Caption = 'MDsho1'
    end
    object MDsho2: TsLabelFX
      Left = 1064
      Top = 136
      Width = 48
      Height = 21
      Caption = 'MDpas2'
    end
    object MDsho3: TsLabelFX
      Left = 1064
      Top = 152
      Width = 48
      Height = 21
      Caption = 'MDpas3'
    end
    object MDsho4: TsLabelFX
      Left = 1064
      Top = 168
      Width = 48
      Height = 21
      Caption = 'MDpas4'
    end
    object MDsho5: TsLabelFX
      Left = 1064
      Top = 184
      Width = 48
      Height = 21
      Caption = 'MDpas5'
    end
    object MDsho6: TsLabelFX
      Left = 1064
      Top = 200
      Width = 48
      Height = 21
      Caption = 'MDpas6'
    end
    object MDsho7: TsLabelFX
      Left = 1064
      Top = 216
      Width = 48
      Height = 21
      Caption = 'MDpas7'
    end
    object MDsho8: TsLabelFX
      Left = 1064
      Top = 232
      Width = 48
      Height = 21
      Caption = 'MDpas8'
    end
    object MDsho9: TsLabelFX
      Left = 1064
      Top = 248
      Width = 48
      Height = 21
      Caption = 'MDpas9'
    end
    object MDsho10: TsLabelFX
      Left = 1064
      Top = 264
      Width = 54
      Height = 21
      Caption = 'MDpas10'
    end
    object MDsho11: TsLabelFX
      Left = 1064
      Top = 280
      Width = 54
      Height = 21
      Caption = 'MDpas11'
    end
    object MDsho12: TsLabelFX
      Left = 1064
      Top = 296
      Width = 54
      Height = 21
      Caption = 'MDpas12'
    end
    object MDsho13: TsLabelFX
      Left = 1064
      Top = 312
      Width = 54
      Height = 21
      Caption = 'MDpas13'
    end
    object MDsho14: TsLabelFX
      Left = 1064
      Top = 328
      Width = 54
      Height = 21
      Caption = 'MDpas14'
    end
    object MDsho15: TsLabelFX
      Left = 1064
      Top = 344
      Width = 54
      Height = 21
      Caption = 'MDpas15'
    end
    object MDheab1: TsLabelFX
      Left = 1008
      Top = 120
      Width = 55
      Height = 21
      Caption = 'MDheab1'
    end
    object MDheab2: TsLabelFX
      Left = 1008
      Top = 136
      Width = 48
      Height = 21
      Caption = 'MDpas2'
    end
    object MDheab3: TsLabelFX
      Left = 1008
      Top = 152
      Width = 48
      Height = 21
      Caption = 'MDpas3'
    end
    object MDheab4: TsLabelFX
      Left = 1008
      Top = 168
      Width = 48
      Height = 21
      Caption = 'MDpas4'
    end
    object MDheab5: TsLabelFX
      Left = 1008
      Top = 184
      Width = 48
      Height = 21
      Caption = 'MDpas5'
    end
    object MDheab6: TsLabelFX
      Left = 1008
      Top = 200
      Width = 48
      Height = 21
      Caption = 'MDpas6'
    end
    object MDheab7: TsLabelFX
      Left = 1008
      Top = 216
      Width = 48
      Height = 21
      Caption = 'MDpas7'
    end
    object MDheab8: TsLabelFX
      Left = 1008
      Top = 232
      Width = 48
      Height = 21
      Caption = 'MDpas8'
    end
    object MDheab9: TsLabelFX
      Left = 1008
      Top = 248
      Width = 48
      Height = 21
      Caption = 'MDpas9'
    end
    object MDheab10: TsLabelFX
      Left = 1008
      Top = 264
      Width = 54
      Height = 21
      Caption = 'MDpas10'
    end
    object MDheab11: TsLabelFX
      Left = 1008
      Top = 280
      Width = 54
      Height = 21
      Caption = 'MDpas11'
    end
    object MDheab12: TsLabelFX
      Left = 1008
      Top = 296
      Width = 54
      Height = 21
      Caption = 'MDpas12'
    end
    object MDheab13: TsLabelFX
      Left = 1008
      Top = 312
      Width = 54
      Height = 21
      Caption = 'MDpas13'
    end
    object MDheab14: TsLabelFX
      Left = 1008
      Top = 328
      Width = 54
      Height = 21
      Caption = 'MDpas14'
    end
    object MDheab15: TsLabelFX
      Left = 1008
      Top = 344
      Width = 54
      Height = 21
      Caption = 'MDpas15'
    end
    object MDhea1: TsLabelFX
      Left = 952
      Top = 120
      Width = 49
      Height = 21
      Caption = 'MDhea1'
    end
    object MDhea2: TsLabelFX
      Left = 952
      Top = 136
      Width = 48
      Height = 21
      Caption = 'MDpas2'
    end
    object MDhea3: TsLabelFX
      Left = 952
      Top = 152
      Width = 48
      Height = 21
      Caption = 'MDpas3'
    end
    object MDhea4: TsLabelFX
      Left = 952
      Top = 168
      Width = 48
      Height = 21
      Caption = 'MDpas4'
    end
    object MDhea5: TsLabelFX
      Left = 952
      Top = 184
      Width = 48
      Height = 21
      Caption = 'MDpas5'
    end
    object MDhea6: TsLabelFX
      Left = 952
      Top = 200
      Width = 48
      Height = 21
      Caption = 'MDpas6'
    end
    object MDhea7: TsLabelFX
      Left = 952
      Top = 216
      Width = 48
      Height = 21
      Caption = 'MDpas7'
    end
    object MDhea8: TsLabelFX
      Left = 952
      Top = 232
      Width = 48
      Height = 21
      Caption = 'MDpas8'
    end
    object MDhea9: TsLabelFX
      Left = 952
      Top = 248
      Width = 48
      Height = 21
      Caption = 'MDpas9'
    end
    object MDhea10: TsLabelFX
      Left = 952
      Top = 264
      Width = 54
      Height = 21
      Caption = 'MDpas10'
    end
    object MDhea11: TsLabelFX
      Left = 952
      Top = 280
      Width = 54
      Height = 21
      Caption = 'MDpas11'
    end
    object MDhea12: TsLabelFX
      Left = 952
      Top = 296
      Width = 54
      Height = 21
      Caption = 'MDpas12'
    end
    object MDhea13: TsLabelFX
      Left = 952
      Top = 312
      Width = 54
      Height = 21
      Caption = 'MDpas13'
    end
    object MDhea14: TsLabelFX
      Left = 952
      Top = 328
      Width = 54
      Height = 21
      Caption = 'MDpas14'
    end
    object MDhea15: TsLabelFX
      Left = 952
      Top = 344
      Width = 54
      Height = 21
      Caption = 'MDpas15'
    end
    object MDtckb1: TsLabelFX
      Left = 896
      Top = 120
      Width = 52
      Height = 21
      Caption = 'MDtckb1'
    end
    object MDtckb2: TsLabelFX
      Left = 896
      Top = 136
      Width = 48
      Height = 21
      Caption = 'MDpas2'
    end
    object MDtckb3: TsLabelFX
      Left = 896
      Top = 152
      Width = 48
      Height = 21
      Caption = 'MDpas3'
    end
    object MDtckb4: TsLabelFX
      Left = 896
      Top = 168
      Width = 48
      Height = 21
      Caption = 'MDpas4'
    end
    object MDtckb5: TsLabelFX
      Left = 896
      Top = 184
      Width = 48
      Height = 21
      Caption = 'MDpas5'
    end
    object MDtckb6: TsLabelFX
      Left = 896
      Top = 200
      Width = 48
      Height = 21
      Caption = 'MDpas6'
    end
    object MDtckb7: TsLabelFX
      Left = 896
      Top = 216
      Width = 48
      Height = 21
      Caption = 'MDpas7'
    end
    object MDtckb8: TsLabelFX
      Left = 896
      Top = 232
      Width = 48
      Height = 21
      Caption = 'MDpas8'
    end
    object MDtckb9: TsLabelFX
      Left = 896
      Top = 248
      Width = 48
      Height = 21
      Caption = 'MDpas9'
    end
    object MDtckb10: TsLabelFX
      Left = 896
      Top = 264
      Width = 54
      Height = 21
      Caption = 'MDpas10'
    end
    object MDtckb11: TsLabelFX
      Left = 896
      Top = 280
      Width = 54
      Height = 21
      Caption = 'MDpas11'
    end
    object MDtckb12: TsLabelFX
      Left = 896
      Top = 296
      Width = 54
      Height = 21
      Caption = 'MDpas12'
    end
    object MDtckb13: TsLabelFX
      Left = 896
      Top = 312
      Width = 54
      Height = 21
      Caption = 'MDpas13'
    end
    object MDtckb14: TsLabelFX
      Left = 896
      Top = 328
      Width = 54
      Height = 21
      Caption = 'MDpas14'
    end
    object MDtckb15: TsLabelFX
      Left = 896
      Top = 344
      Width = 54
      Height = 21
      Caption = 'MDpas15'
    end
    object MDpasb1: TsLabelFX
      Left = 768
      Top = 120
      Width = 54
      Height = 21
      Caption = 'MDpasb1'
    end
    object MDpasb2: TsLabelFX
      Left = 768
      Top = 136
      Width = 48
      Height = 21
      Caption = 'MDpas2'
    end
    object MDpasb3: TsLabelFX
      Left = 768
      Top = 152
      Width = 48
      Height = 21
      Caption = 'MDpas3'
    end
    object MDpasb4: TsLabelFX
      Left = 768
      Top = 168
      Width = 48
      Height = 21
      Caption = 'MDpas4'
    end
    object MDpasb5: TsLabelFX
      Left = 768
      Top = 184
      Width = 48
      Height = 21
      Caption = 'MDpas5'
    end
    object MDpasb6: TsLabelFX
      Left = 768
      Top = 200
      Width = 48
      Height = 21
      Caption = 'MDpas6'
    end
    object MDpasb7: TsLabelFX
      Left = 768
      Top = 216
      Width = 48
      Height = 21
      Caption = 'MDpas7'
    end
    object MDpasb8: TsLabelFX
      Left = 768
      Top = 232
      Width = 48
      Height = 21
      Caption = 'MDpas8'
    end
    object MDpasb9: TsLabelFX
      Left = 768
      Top = 248
      Width = 48
      Height = 21
      Caption = 'MDpas9'
    end
    object MDpasb10: TsLabelFX
      Left = 768
      Top = 264
      Width = 54
      Height = 21
      Caption = 'MDpas10'
    end
    object MDpasb11: TsLabelFX
      Left = 768
      Top = 280
      Width = 54
      Height = 21
      Caption = 'MDpas11'
    end
    object MDpasb12: TsLabelFX
      Left = 768
      Top = 296
      Width = 54
      Height = 21
      Caption = 'MDpas12'
    end
    object MDpasb13: TsLabelFX
      Left = 768
      Top = 312
      Width = 54
      Height = 21
      Caption = 'MDpas13'
    end
    object MDpasb14: TsLabelFX
      Left = 768
      Top = 328
      Width = 54
      Height = 21
      Caption = 'MDpas14'
    end
    object MDpasb15: TsLabelFX
      Left = 768
      Top = 344
      Width = 54
      Height = 21
      Caption = 'MDpas15'
    end
    object MDshob1: TsLabelFX
      Left = 1120
      Top = 120
      Width = 54
      Height = 21
      Caption = 'MDshob1'
    end
    object MDshob2: TsLabelFX
      Left = 1120
      Top = 136
      Width = 48
      Height = 21
      Caption = 'MDpas2'
    end
    object MDshob3: TsLabelFX
      Left = 1120
      Top = 152
      Width = 48
      Height = 21
      Caption = 'MDpas3'
    end
    object MDshob4: TsLabelFX
      Left = 1120
      Top = 168
      Width = 48
      Height = 21
      Caption = 'MDpas4'
    end
    object MDshob5: TsLabelFX
      Left = 1120
      Top = 184
      Width = 48
      Height = 21
      Caption = 'MDpas5'
    end
    object MDshob6: TsLabelFX
      Left = 1120
      Top = 200
      Width = 48
      Height = 21
      Caption = 'MDpas6'
    end
    object MDshob7: TsLabelFX
      Left = 1120
      Top = 216
      Width = 48
      Height = 21
      Caption = 'MDpas7'
    end
    object MDshob8: TsLabelFX
      Left = 1120
      Top = 232
      Width = 48
      Height = 21
      Caption = 'MDpas8'
    end
    object MDshob9: TsLabelFX
      Left = 1120
      Top = 248
      Width = 48
      Height = 21
      Caption = 'MDpas9'
    end
    object MDshob10: TsLabelFX
      Left = 1120
      Top = 264
      Width = 54
      Height = 21
      Caption = 'MDpas10'
    end
    object MDshob11: TsLabelFX
      Left = 1120
      Top = 280
      Width = 54
      Height = 21
      Caption = 'MDpas11'
    end
    object MDshob12: TsLabelFX
      Left = 1120
      Top = 296
      Width = 54
      Height = 21
      Caption = 'MDpas12'
    end
    object MDshob13: TsLabelFX
      Left = 1120
      Top = 312
      Width = 54
      Height = 21
      Caption = 'MDpas13'
    end
    object MDshob14: TsLabelFX
      Left = 1120
      Top = 328
      Width = 54
      Height = 21
      Caption = 'MDpas14'
    end
    object MDshob15: TsLabelFX
      Left = 1120
      Top = 344
      Width = 54
      Height = 21
      Caption = 'MDpas15'
    end
    object MDast1: TsLabelFX
      Left = 1176
      Top = 120
      Width = 45
      Height = 21
      Caption = 'MDast1'
    end
    object MDast2: TsLabelFX
      Left = 1176
      Top = 136
      Width = 48
      Height = 21
      Caption = 'MDpas2'
    end
    object MDast3: TsLabelFX
      Left = 1176
      Top = 152
      Width = 48
      Height = 21
      Caption = 'MDpas3'
    end
    object MDast4: TsLabelFX
      Left = 1176
      Top = 168
      Width = 48
      Height = 21
      Caption = 'MDpas4'
    end
    object MDast5: TsLabelFX
      Left = 1176
      Top = 184
      Width = 48
      Height = 21
      Caption = 'MDpas5'
    end
    object MDast6: TsLabelFX
      Left = 1176
      Top = 200
      Width = 48
      Height = 21
      Caption = 'MDpas6'
    end
    object MDast7: TsLabelFX
      Left = 1176
      Top = 216
      Width = 48
      Height = 21
      Caption = 'MDpas7'
    end
    object MDast8: TsLabelFX
      Left = 1176
      Top = 232
      Width = 48
      Height = 21
      Caption = 'MDpas8'
    end
    object MDast9: TsLabelFX
      Left = 1176
      Top = 248
      Width = 48
      Height = 21
      Caption = 'MDpas9'
    end
    object MDast10: TsLabelFX
      Left = 1176
      Top = 264
      Width = 54
      Height = 21
      Caption = 'MDpas10'
    end
    object MDast11: TsLabelFX
      Left = 1176
      Top = 280
      Width = 54
      Height = 21
      Caption = 'MDpas11'
    end
    object MDast12: TsLabelFX
      Left = 1176
      Top = 296
      Width = 54
      Height = 21
      Caption = 'MDpas12'
    end
    object MDast13: TsLabelFX
      Left = 1176
      Top = 312
      Width = 54
      Height = 21
      Caption = 'MDpas13'
    end
    object MDast14: TsLabelFX
      Left = 1176
      Top = 328
      Width = 54
      Height = 21
      Caption = 'MDpas14'
    end
    object MDast15: TsLabelFX
      Left = 1176
      Top = 344
      Width = 54
      Height = 21
      Caption = 'MDpas15'
    end
    object MDgls1: TsLabelFX
      Left = 1232
      Top = 120
      Width = 44
      Height = 21
      Caption = 'MDgls1'
    end
    object MDgls2: TsLabelFX
      Left = 1232
      Top = 136
      Width = 48
      Height = 21
      Caption = 'MDpas2'
    end
    object MDgls3: TsLabelFX
      Left = 1232
      Top = 152
      Width = 48
      Height = 21
      Caption = 'MDpas3'
    end
    object MDgls4: TsLabelFX
      Left = 1232
      Top = 168
      Width = 48
      Height = 21
      Caption = 'MDpas4'
    end
    object MDgls5: TsLabelFX
      Left = 1232
      Top = 184
      Width = 48
      Height = 21
      Caption = 'MDpas5'
    end
    object MDgls6: TsLabelFX
      Left = 1232
      Top = 200
      Width = 48
      Height = 21
      Caption = 'MDpas6'
    end
    object MDgls7: TsLabelFX
      Left = 1232
      Top = 216
      Width = 48
      Height = 21
      Caption = 'MDpas7'
    end
    object MDgls8: TsLabelFX
      Left = 1232
      Top = 232
      Width = 48
      Height = 21
      Caption = 'MDpas8'
    end
    object MDgls9: TsLabelFX
      Left = 1232
      Top = 248
      Width = 48
      Height = 21
      Caption = 'MDpas9'
    end
    object MDgls10: TsLabelFX
      Left = 1232
      Top = 264
      Width = 54
      Height = 21
      Caption = 'MDpas10'
    end
    object MDgls11: TsLabelFX
      Left = 1232
      Top = 280
      Width = 54
      Height = 21
      Caption = 'MDpas11'
    end
    object MDgls12: TsLabelFX
      Left = 1232
      Top = 296
      Width = 54
      Height = 21
      Caption = 'MDpas12'
    end
    object MDgls13: TsLabelFX
      Left = 1232
      Top = 312
      Width = 54
      Height = 21
      Caption = 'MDpas13'
    end
    object MDgls14: TsLabelFX
      Left = 1232
      Top = 328
      Width = 54
      Height = 21
      Caption = 'MDpas14'
    end
    object MDgls15: TsLabelFX
      Left = 1232
      Top = 344
      Width = 54
      Height = 21
      Caption = 'MDpas15'
    end
    object MDtck1: TsLabelFX
      Left = 848
      Top = 120
      Width = 46
      Height = 21
      Caption = 'MDtck1'
    end
    object MDtck2: TsLabelFX
      Left = 848
      Top = 136
      Width = 48
      Height = 21
      Caption = 'MDpas2'
    end
    object MDtck3: TsLabelFX
      Left = 848
      Top = 152
      Width = 48
      Height = 21
      Caption = 'MDpas3'
    end
    object MDtck4: TsLabelFX
      Left = 848
      Top = 168
      Width = 48
      Height = 21
      Caption = 'MDpas4'
    end
    object MDtck5: TsLabelFX
      Left = 848
      Top = 184
      Width = 48
      Height = 21
      Caption = 'MDpas5'
    end
    object MDtck6: TsLabelFX
      Left = 848
      Top = 200
      Width = 48
      Height = 21
      Caption = 'MDpas6'
    end
    object MDtck7: TsLabelFX
      Left = 848
      Top = 216
      Width = 48
      Height = 21
      Caption = 'MDpas7'
    end
    object MDtck8: TsLabelFX
      Left = 848
      Top = 232
      Width = 48
      Height = 21
      Caption = 'MDpas8'
    end
    object MDtck9: TsLabelFX
      Left = 848
      Top = 248
      Width = 48
      Height = 21
      Caption = 'MDpas9'
    end
    object MDtck10: TsLabelFX
      Left = 848
      Top = 264
      Width = 54
      Height = 21
      Caption = 'MDpas10'
    end
    object MDtck11: TsLabelFX
      Left = 848
      Top = 280
      Width = 54
      Height = 21
      Caption = 'MDpas11'
    end
    object MDtck12: TsLabelFX
      Left = 848
      Top = 296
      Width = 54
      Height = 21
      Caption = 'MDpas12'
    end
    object MDtck13: TsLabelFX
      Left = 848
      Top = 312
      Width = 54
      Height = 21
      Caption = 'MDpas13'
    end
    object MDtck14: TsLabelFX
      Left = 848
      Top = 328
      Width = 54
      Height = 21
      Caption = 'MDpas14'
    end
    object MDtck15: TsLabelFX
      Left = 848
      Top = 344
      Width = 54
      Height = 21
      Caption = 'MDpas15'
    end
    object MDoff1: TsLabelFX
      Left = 1288
      Top = 120
      Width = 43
      Height = 21
      Caption = 'MDoff1'
    end
    object MDoff2: TsLabelFX
      Left = 1288
      Top = 136
      Width = 48
      Height = 21
      Caption = 'MDpas2'
    end
    object MDoff3: TsLabelFX
      Left = 1288
      Top = 152
      Width = 48
      Height = 21
      Caption = 'MDpas3'
    end
    object MDoff4: TsLabelFX
      Left = 1288
      Top = 168
      Width = 48
      Height = 21
      Caption = 'MDpas4'
    end
    object MDoff5: TsLabelFX
      Left = 1288
      Top = 184
      Width = 48
      Height = 21
      Caption = 'MDpas5'
    end
    object MDoff6: TsLabelFX
      Left = 1288
      Top = 200
      Width = 48
      Height = 21
      Caption = 'MDpas6'
    end
    object MDoff7: TsLabelFX
      Left = 1288
      Top = 216
      Width = 48
      Height = 21
      Caption = 'MDpas7'
    end
    object MDoff8: TsLabelFX
      Left = 1288
      Top = 232
      Width = 48
      Height = 21
      Caption = 'MDpas8'
    end
    object MDoff9: TsLabelFX
      Left = 1288
      Top = 248
      Width = 48
      Height = 21
      Caption = 'MDpas9'
    end
    object MDoff10: TsLabelFX
      Left = 1288
      Top = 264
      Width = 54
      Height = 21
      Caption = 'MDpas10'
    end
    object MDoff11: TsLabelFX
      Left = 1288
      Top = 280
      Width = 54
      Height = 21
      Caption = 'MDpas11'
    end
    object MDoff12: TsLabelFX
      Left = 1288
      Top = 296
      Width = 54
      Height = 21
      Caption = 'MDpas12'
    end
    object MDoff13: TsLabelFX
      Left = 1288
      Top = 312
      Width = 54
      Height = 21
      Caption = 'MDpas13'
    end
    object MDoff14: TsLabelFX
      Left = 1288
      Top = 328
      Width = 54
      Height = 21
      Caption = 'MDpas14'
    end
    object MDoff15: TsLabelFX
      Left = 1288
      Top = 344
      Width = 54
      Height = 21
      Caption = 'MDpas15'
    end
    object MDmin1: TsLabelFX
      Left = 1352
      Top = 120
      Width = 47
      Height = 21
      Caption = 'MDmin1'
    end
    object MDmin2: TsLabelFX
      Left = 1352
      Top = 136
      Width = 48
      Height = 21
      Caption = 'MDpas2'
    end
    object MDmin3: TsLabelFX
      Left = 1352
      Top = 152
      Width = 48
      Height = 21
      Caption = 'MDpas3'
    end
    object MDmin4: TsLabelFX
      Left = 1352
      Top = 168
      Width = 48
      Height = 21
      Caption = 'MDpas4'
    end
    object MDmin5: TsLabelFX
      Left = 1352
      Top = 184
      Width = 48
      Height = 21
      Caption = 'MDpas5'
    end
    object MDmin6: TsLabelFX
      Left = 1352
      Top = 200
      Width = 48
      Height = 21
      Caption = 'MDpas6'
    end
    object MDmin7: TsLabelFX
      Left = 1352
      Top = 216
      Width = 48
      Height = 21
      Caption = 'MDpas7'
    end
    object MDmin8: TsLabelFX
      Left = 1352
      Top = 232
      Width = 48
      Height = 21
      Caption = 'MDpas8'
    end
    object MDmin9: TsLabelFX
      Left = 1352
      Top = 248
      Width = 48
      Height = 21
      Caption = 'MDpas9'
    end
    object MDmin10: TsLabelFX
      Left = 1352
      Top = 264
      Width = 54
      Height = 21
      Caption = 'MDpas10'
    end
    object MDmin11: TsLabelFX
      Left = 1352
      Top = 280
      Width = 54
      Height = 21
      Caption = 'MDpas11'
    end
    object MDmin12: TsLabelFX
      Left = 1352
      Top = 296
      Width = 54
      Height = 21
      Caption = 'MDpas12'
    end
    object MDmin13: TsLabelFX
      Left = 1352
      Top = 312
      Width = 54
      Height = 21
      Caption = 'MDpas13'
    end
    object MDmin14: TsLabelFX
      Left = 1352
      Top = 328
      Width = 54
      Height = 21
      Caption = 'MDpas14'
    end
    object MDmin15: TsLabelFX
      Left = 1352
      Top = 344
      Width = 54
      Height = 21
      Caption = 'MDpas15'
    end
    object sLabelFX175: TsLabelFX
      Left = 472
      Top = 96
      Width = 22
      Height = 21
      Caption = 'Off'
    end
    object sLabelFX176: TsLabelFX
      Left = 560
      Top = 96
      Width = 30
      Height = 21
      Caption = 'Mins'
    end
    object sButton44: TsButton
      Left = 8
      Top = 88
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Caption = 'Overview'
      TabOrder = 0
      OnClick = sButton44Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton45: TsButton
      Left = 8
      Top = 392
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Back'
      TabOrder = 1
      OnClick = sButton45Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object acZone1: TsPanel
      Left = 928
      Top = 12
      Width = 57
      Height = 41
      Color = clRed
      TabOrder = 2
      SkinData.CustomColor = True
      SkinData.SkinSection = 'PANEL'
    end
    object acZone2: TsPanel
      Left = 936
      Top = 20
      Width = 57
      Height = 41
      TabOrder = 3
      SkinData.CustomColor = True
      SkinData.SkinSection = 'PANEL'
    end
    object acZone3: TsPanel
      Left = 940
      Top = 28
      Width = 57
      Height = 41
      TabOrder = 4
      SkinData.CustomColor = True
      SkinData.SkinSection = 'PANEL'
    end
    object acZone4: TsPanel
      Left = 940
      Top = 36
      Width = 57
      Height = 41
      TabOrder = 5
      SkinData.CustomColor = True
      SkinData.SkinSection = 'PANEL'
    end
    object acZone5: TsPanel
      Left = 960
      Top = 44
      Width = 57
      Height = 41
      TabOrder = 6
      SkinData.CustomColor = True
      SkinData.SkinSection = 'PANEL'
    end
    object acZone6: TsPanel
      Left = 968
      Top = 28
      Width = 57
      Height = 41
      TabOrder = 7
      SkinData.CustomColor = True
      SkinData.SkinSection = 'PANEL'
    end
    object sButton43: TsButton
      Left = 8
      Top = 120
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Caption = 'Match stats'
      TabOrder = 8
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton46: TsButton
      Left = 8
      Top = 152
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Caption = 'Action zones'
      TabOrder = 9
      OnClick = sButton46Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton47: TsButton
      Left = 8
      Top = 184
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Caption = 'Home stats'
      TabOrder = 10
      OnClick = sButton47Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton48: TsButton
      Left = 8
      Top = 216
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Caption = 'Away stats'
      TabOrder = 11
      OnClick = sButton48Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel24: TsPanel
    Left = 752
    Top = 120
    Width = 41
    Height = 17
    TabOrder = 25
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Label22: TLabel
      Left = 0
      Top = 0
      Width = 18
      Height = 13
      Caption = 'mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
  end
  object sPanel25: TsPanel
    Left = 648
    Top = 448
    Width = 137
    Height = 25
    TabOrder = 26
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Image9: TImage
      Left = 0
      Top = 0
      Width = 89
      Height = 17
    end
    object Label23: TLabel
      Left = 0
      Top = 0
      Width = 64
      Height = 13
      Caption = 'private server'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object kit_imageb1: TImage
      Left = 80
      Top = 56
      Width = 70
      Height = 60
      Transparent = True
      OnClick = kit_imageb1Click
    end
    object kit_imageb2: TImage
      Left = 360
      Top = 56
      Width = 70
      Height = 60
      Transparent = True
      OnClick = kit_imageb2Click
    end
    object kit_imageb3: TImage
      Left = 80
      Top = 116
      Width = 70
      Height = 35
      Transparent = True
      OnClick = kit_imageb3Click
    end
    object kit_imageb4: TImage
      Left = 360
      Top = 116
      Width = 70
      Height = 35
      Transparent = True
      OnClick = kit_imageb4Click
    end
    object kit_imageb5: TImage
      Left = 80
      Top = 151
      Width = 70
      Height = 25
      Transparent = True
      OnClick = kit_imageb5Click
    end
    object kit_imageb6: TImage
      Left = 360
      Top = 151
      Width = 70
      Height = 25
      Transparent = True
      OnClick = kit_imageb6Click
    end
    object sLabelFX189: TsLabelFX
      Left = 48
      Top = 336
      Width = 30
      Height = 21
      Caption = 'Host'
    end
    object sLabelFX190: TsLabelFX
      Left = 48
      Top = 248
      Width = 37
      Height = 21
      Caption = '5 vs 5'
    end
    object sLabelFX187: TsLabelFX
      Left = 48
      Top = 296
      Width = 54
      Height = 21
      Caption = 'Password'
    end
    object sButton55: TsButton
      Left = 48
      Top = 392
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Start'
      TabOrder = 0
      OnClick = sButton55Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
    object sComboBox19: TsComboBox
      Left = 48
      Top = 360
      Width = 97
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 1
      Text = 'sComboBox21'
    end
    object sTrackBar4: TsTrackBar
      Left = 40
      Top = 264
      Width = 150
      Height = 33
      Cursor = crHandPoint
      Min = 5
      Position = 5
      TabOrder = 2
      ThumbLength = 16
      OnChange = sTrackBar4Change
      SkinData.SkinSection = 'TRACKBAR'
    end
    object sEdit23: TsEdit
      Left = 56
      Top = 32
      Width = 121
      Height = 21
      MaxLength = 20
      TabOrder = 3
      Text = 'Home team'
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
    object sEdit24: TsEdit
      Left = 336
      Top = 32
      Width = 121
      Height = 21
      MaxLength = 20
      TabOrder = 4
      Text = 'Away team'
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
    object sCheckBox16: TsCheckBox
      Left = 80
      Top = 184
      Width = 75
      Height = 17
      Cursor = crHandPoint
      Caption = 'Main colour'
      Checked = True
      State = cbChecked
      TabOrder = 5
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox17: TsCheckBox
      Left = 352
      Top = 184
      Width = 75
      Height = 17
      Cursor = crHandPoint
      Caption = 'Main colour'
      Checked = True
      State = cbChecked
      TabOrder = 6
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sTrackBar5: TsTrackBar
      Left = 72
      Top = 200
      Width = 97
      Height = 25
      Max = 3
      TabOrder = 7
      ThumbLength = 15
      OnChange = sTrackBar5Change
      SkinData.SkinSection = 'TRACKBAR'
    end
    object sTrackBar6: TsTrackBar
      Left = 344
      Top = 200
      Width = 97
      Height = 25
      Max = 3
      TabOrder = 8
      ThumbLength = 15
      OnChange = sTrackBar6Change
      SkinData.SkinSection = 'TRACKBAR'
    end
    object sEdit25: TsEdit
      Left = 48
      Top = 312
      Width = 121
      Height = 21
      MaxLength = 15
      TabOrder = 9
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
  object sPanel26: TsPanel
    Left = 680
    Top = 88
    Width = 105
    Height = 17
    TabOrder = 27
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Label24: TLabel
      Left = 0
      Top = 0
      Width = 79
      Height = 13
      Caption = 'publicserver filter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabelFX191: TsLabelFX
      Left = 40
      Top = 128
      Width = 79
      Height = 21
      Caption = 'Server location'
    end
    object sCheckBox18: TsCheckBox
      Left = 40
      Top = 56
      Width = 95
      Height = 17
      Caption = 'Hide full servers'
      TabOrder = 0
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox19: TsCheckBox
      Left = 40
      Top = 80
      Width = 110
      Height = 17
      Caption = 'Hide empty servers'
      TabOrder = 1
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox20: TsCheckBox
      Left = 40
      Top = 104
      Width = 139
      Height = 17
      Caption = 'Hide passworded servers'
      TabOrder = 2
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sComboBox23: TsComboBox
      Left = 40
      Top = 152
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 3
      Text = 'sComboBox23'
      Items.Strings = (
        'Any'
        'Europe'
        'South america')
    end
    object sButton54: TsButton
      Left = 40
      Top = 376
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Save'
      TabOrder = 4
      OnClick = sButton54Click
      SkinData.CustomFont = True
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sSkinManager1: TsSkinManager
    Active = False
    InternalSkins = <>
    MenuSupport.IcoLineSkin = 'ICOLINE'
    MenuSupport.ExtraLineFont.Charset = DEFAULT_CHARSET
    MenuSupport.ExtraLineFont.Color = clWindowText
    MenuSupport.ExtraLineFont.Height = -11
    MenuSupport.ExtraLineFont.Name = 'MS Sans Serif'
    MenuSupport.ExtraLineFont.Style = []
    SkinDirectory = 'data\Images\skins'
    SkinName = 'BlueGlass'
    SkinInfo = 'N/A'
    ThirdParty.ThirdEdits = 
      'TEdit'#13#10'TMemo'#13#10'TMaskEdit'#13#10'TLabeledEdit'#13#10'THotKey'#13#10'TListBox'#13#10'TCheck' +
      'ListBox'#13#10'TDBListBox'#13#10'TRichEdit'#13#10'TDBMemo'#13#10'TSynEdit'#13#10'TSynMemo'#13#10'TDB' +
      'SynEdit'#13#10'TDBLookupListBox'#13#10'TDBRichEdit'#13#10'TDBCtrlGrid'#13#10'TDateTimePi' +
      'cker'#13#10'TDBEdit'
    ThirdParty.ThirdButtons = 'TButton'
    ThirdParty.ThirdBitBtns = 'TBitBtn'
    ThirdParty.ThirdCheckBoxes = 
      'TCheckBox'#13#10'TRadioButton'#13#10'TDBCheckBox'#13#10'TDBCheckBoxEh'#13#10'TGroupButto' +
      'n'
    ThirdParty.ThirdGroupBoxes = 'TGroupBox'#13#10'TDBRadioGroup'#13#10'TRadioGroup'
    ThirdParty.ThirdListViews = 'TListView'
    ThirdParty.ThirdPanels = 'TPanel'#13#10'TDBCtrlPanel'
    ThirdParty.ThirdGrids = 
      'TStringGrid'#13#10'TDrawGrid'#13#10'TRichView'#13#10'TDBRichViewEdit'#13#10'TRichViewEdi' +
      't'#13#10'TDBRichView'#13#10'TwwDBGrid'#13#10'TAdvStringGrid'#13#10'TDBAdvGrid'#13#10'TValueLis' +
      'tEditor'#13#10'TDBGrid'
    ThirdParty.ThirdTreeViews = 'TTreeView'#13#10'TRzTreeView'#13#10'TDBTreeView'
    ThirdParty.ThirdComboBoxes = 'TComboBox'#13#10'TColorBox'#13#10'TDBComboBox'
    ThirdParty.ThirdWWEdits = 
      'TDBLookupComboBox'#13#10'TwwDBComboBox'#13#10'TwwDBCustomCombo'#13#10'TwwDBCustomL' +
      'ookupCombo'
    ThirdParty.ThirdVirtualTrees = 
      'TVirtualStringTree'#13#10'TVirtualStringTreeDB'#13#10'TEasyListview'#13#10'TVirtua' +
      'lExplorerListview'#13#10'TVirtualExplorerTreeview'#13#10'TVirtualExplorerTre' +
      'e'#13#10'TVirtualDrawTree'
    ThirdParty.ThirdGridEh = 'TDBGridEh'
    Top = 64
  end
  object sSkinProvider1: TsSkinProvider
    SkinData.SkinSection = 'FORM'
    ShowAppIcon = False
    TitleButtons = <>
    Top = 88
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Top = 120
    object popup1_1: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Free practise'
      OnClick = popup1_1Click
    end
    object popup1_2: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Training'
      OnClick = popup1_2Click
    end
    object Livescores1: TMenuItem
      Caption = 'Team matches'
      OnClick = Livescores1Click
    end
    object popup1_3: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Challenge'
      OnClick = popup1_3Click
    end
  end
  object PopupMenu2: TPopupMenu
    AutoHotkeys = maManual
    Top = 152
    object popup2_1: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Create team'
      OnClick = popup2_1Click
    end
    object name1: TMenuItem
      AutoHotkeys = maManual
      Caption = 'name'
      OnClick = name1Click
    end
    object popup2_2: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Player stats'
      OnClick = popup2_2Click
    end
    object popup2_3: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Team stats'
      OnClick = popup2_3Click
    end
  end
  object sColorDialog1: TsColorDialog
    Top = 248
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = Timer1Timer
    Top = 304
  end
  object Timer2: TTimer
    Interval = 3000
    OnTimer = Timer2Timer
    Top = 336
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 20000
    OnTimer = Timer3Timer
    Top = 368
  end
  object PopupMenu3: TPopupMenu
    Top = 184
    object popup3_1: TMenuItem
      Caption = 'Mail'
      Visible = False
      OnClick = popup3_1Click
    end
    object popup3_2: TMenuItem
      Caption = 'Settings'
      OnClick = popup3_2Click
    end
    object popup3_3: TMenuItem
      Caption = 'Version log'
      OnClick = popup3_3Click
    end
  end
end
