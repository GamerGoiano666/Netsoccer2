object Form3: TForm3
  Left = 281
  Top = 261
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Netsoccer'
  ClientHeight = 388
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClick = FormClick
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnMouseMove = FormMouseMove
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object OmegaScreen1: TOmegaScreen
    Pool = plManaged
    ScaleX = 1.000000000000000000
    ScaleY = 1.000000000000000000
    CenterX = 0
    CenterY = 0
    OffsetX = 0
    OffsetY = 0
    Red = 255
    Green = 255
    Blue = 255
    Alpha = 255
    Width = 800
    Height = 600
    BackBufferAccess = False
    BBCount = 0
    Left = 24
    Top = 40
  end
  object OmegaTimer1: TOmegaTimer
    Enabled = False
    TargetFPS = 59
    MinFPS = 10
    MaxFPS = 120
    FPSWarningFrames = 10
    LossyMode = False
    OnTimer = OmegaTimer1Timer
    Left = 72
    Top = 40
  end
  object OmegaInput1: TOmegaInput
    Keyboard.Enabled = True
    Keyboard.ForegroundOnly = True
    Keyboard.Exclusive = False
    Keyboard.Assigns = {
      C8000000D0000000CB000000CD000000390000001D0000001C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000100000038000000}
    Mouse.Enabled = True
    Mouse.ForegroundOnly = True
    Mouse.Exclusive = False
    Joystick.Enabled = False
    Joystick.ForegroundOnly = True
    Joystick.Exclusive = False
    Joystick.Autocenter = True
    Joystick.DeadZoneX = 20
    Joystick.DeadZoneY = 20
    Joystick.DeadZoneZ = 20
    Joystick.RangeX = 1000
    Joystick.RangeY = 1000
    Joystick.RangeZ = 1000
    Left = 112
    Top = 40
  end
  object OmegaBitmapFont1: TOmegaBitmapFont
    OmegaScreen = OmegaScreen1
    OmegaImageIndex = 0
    Red = 255
    Green = 255
    Blue = 255
    Alpha = 255
    LineSpace = 10
    ScaleX = 1.000000000000000000
    ScaleY = 1.000000000000000000
    Spacing = 0
    PositionMode = pmTopLeft
    Left = 24
    Top = 72
  end
  object OmegaImageList1: TOmegaImageList
    ImageList = <
      item
        Name = 'field'
        TileHeight = 1722
        TileWidth = 1262
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'panel1'
        TileHeight = 500
        TileWidth = 800
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'panel2'
        TileHeight = 50
        TileWidth = 200
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'panel3'
        TileHeight = 30
        TileWidth = 70
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'readysign'
        TileHeight = 17
        TileWidth = 20
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'edit1'
        TileHeight = 20
        TileWidth = 700
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'edit2'
        TileHeight = 20
        TileWidth = 200
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'button1'
        TileHeight = 21
        TileWidth = 95
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'hairs'
        TileHeight = 40
        TileWidth = 40
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'norgb'
        TileHeight = 40
        TileWidth = 40
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'pants'
        TileHeight = 40
        TileWidth = 40
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'shirts1'
        TileHeight = 40
        TileWidth = 40
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'shirts2'
        TileHeight = 40
        TileWidth = 40
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'shirts3'
        TileHeight = 40
        TileWidth = 40
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'shirts4'
        TileHeight = 40
        TileWidth = 40
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'skins'
        TileHeight = 40
        TileWidth = 40
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'socks'
        TileHeight = 40
        TileWidth = 40
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'shoes'
        TileHeight = 40
        TileWidth = 40
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'pshadow'
        TileHeight = 40
        TileWidth = 40
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'keepers'
        TileHeight = 40
        TileWidth = 40
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'ball'
        TileHeight = 7
        TileWidth = 7
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'ballshadow'
        TileHeight = 41
        TileWidth = 41
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'cursor'
        TileHeight = 29
        TileWidth = 29
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'power'
        TileHeight = 10
        TileWidth = 150
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'powerback'
        TileHeight = 10
        TileWidth = 150
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'smallfield'
        TileHeight = 261
        TileWidth = 208
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'pradar'
        TileHeight = 9
        TileWidth = 9
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'lref'
        TileHeight = 40
        TileWidth = 40
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'unet'
        TileHeight = 52
        TileWidth = 196
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'lnet'
        TileHeight = 89
        TileWidth = 216
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'flag'
        TileHeight = 40
        TileWidth = 40
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'circle'
        TileHeight = 40
        TileWidth = 40
        TransparentColor = clBlack
        Transparent = False
      end
      item
        Name = 'flags'
        TileHeight = 15
        TileWidth = 20
        TransparentColor = clFuchsia
        Transparent = True
      end>
    OmegaScreen = OmegaScreen1
    Left = 72
    Top = 72
  end
  object OmegaBitmapFont2: TOmegaBitmapFont
    OmegaScreen = OmegaScreen1
    OmegaImageIndex = 0
    Red = 255
    Green = 255
    Blue = 255
    Alpha = 255
    LineSpace = 10
    ScaleX = 1.000000000000000000
    ScaleY = 1.000000000000000000
    Spacing = 0
    PositionMode = pmCenter
    Left = 24
    Top = 104
  end
end
