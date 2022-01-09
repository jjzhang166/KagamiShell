object OpenSaveForm: TOpenSaveForm
  Left = 314
  Top = 234
  ActiveControl = FileNameEdit
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = ' - '
  ClientHeight = 303
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 32
    Height = 13
    Caption = #1055#1072#1087#1082#1072
    FocusControl = FolderComboBox
  end
  object CreateFolder: TSpeedButton
    Left = 320
    Top = 4
    Width = 105
    Height = 21
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102
    Flat = True
    Glyph.Data = {
      EE030000424DEE03000000000000360000002800000012000000110000000100
      180000000000B803000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF0000000000000000000000
      00000000000000000000000000000000000000000000000000FF00FFFF00FFFF
      00FFFF00FFFF00FF0000FF00FF000000FF00FF00FFFFFF00FF00FFFFFF00FF00
      FFFFFF00FF00FFFFFF00FF00FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FF
      0000FF00FF00000000FFFFFF00FF00FFFFFF00FF00FFFFFF00FF00FFFFFF00FF
      00FFFFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
      FF00FF00FFFFFF00FF00FFFFFF00FF00FFFFFF00FF00FFFFFF00FF00FFFF0000
      00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF00000000FFFFFF00FF00FF
      FFFF00FF00FFFFFF00FF00FFFFFF00FF00FFFFFF00FF000000FF00FFFF00FFFF
      00FFFF00FFFF00FF0000FF00FF000000FF00FF00FFFFFF00FF00FFFFFF00FF00
      FFFFFF00FF00FFFFFF00FF00FFFF000000FF00FFFF00FF000000FF00FFFF00FF
      0000FF00FF00000000FFFFFF00FF00FFFFFF00FF00FFFFFF00FF00FFFFFF00FF
      00FFFFFF00FF000000FF00FF000000FF00FFFF00FFFF00FF0000FF00FF000000
      FF00FF00FFFFFF00FF00FFFFFF00FF00FFFFFF00FF00FFFFFF00FF00FFFF0000
      00000000FF00FFFF00FFFF00FFFF00FF0000FF00FF0000000000000000000000
      00000000000000000000000000000000000000000000FF00FFFF00FF000000FF
      00FF000000FF00FF0000FF00FFFF00FF00000000FFFFFF00FF00FFFFFF00FF00
      0000FF00FFFF00FFFF00FF000000FF00FF000000FF00FFFF00FFFF00FFFF00FF
      0000FF00FFFF00FFFF00FF000000000000000000000000FF00FFFF00FFFF00FF
      000000FF00FF000000FF00FF000000FF00FFFF00FFFF00FF0000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00
      FFFF00FFFF00FF000000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF
      00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF0000}
    OnClick = CreateFolderClick
  end
  object Label2: TLabel
    Left = 8
    Top = 276
    Width = 60
    Height = 13
    Caption = #1058#1080#1087' '#1092#1072#1081#1083#1086#1074
  end
  object Label3: TLabel
    Left = 8
    Top = 246
    Width = 57
    Height = 13
    Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
  end
  object FolderComboBox: TComboBox
    Left = 48
    Top = 4
    Width = 265
    Height = 19
    Style = csOwnerDrawVariable
    ItemHeight = 13
    TabOrder = 0
    OnChange = FolderComboBoxChange
    OnDrawItem = FolderComboBoxDrawItem
  end
  object FilesListView: TListView
    Left = 8
    Top = 32
    Width = 417
    Height = 201
    Columns = <>
    ReadOnly = True
    SmallImages = FilesImages
    TabOrder = 1
    ViewStyle = vsList
    OnDblClick = FilesListViewDblClick
    OnSelectItem = FilesListViewSelectItem
  end
  object ExtComboBox: TComboBox
    Left = 72
    Top = 272
    Width = 257
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    OnChange = ExtComboBoxChange
  end
  object FileNameEdit: TEdit
    Left = 72
    Top = 242
    Width = 257
    Height = 21
    TabOrder = 2
  end
  object OpenButton: TButton
    Left = 352
    Top = 240
    Width = 75
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100
    Default = True
    ModalResult = 1
    TabOrder = 4
    OnClick = OpenButtonClick
  end
  object CancelButton: TButton
    Left = 352
    Top = 272
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 5
  end
  object FolderImages: TImageList
    Left = 24
    Top = 160
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F500DDDDDD00D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100DDDDDD00F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F500C5C5C500898989007070
      7000707070007070700070707000707070007070700070707000707070007070
      70007070700089898900C5C5C500F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDD000D73A5000D73A5000D73
      A5000D73A5000D73A5000D73A5000D73A5000D73A5000D73A5000D73A5000D73
      A5000D73A5006464640089898900DDDDDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC6001C9CC7009CFFFF006CD7
      FF006CD7FF006CD7FF006CD7FF006CD7FF006CD7FF006CD7FF006CD7FF006CD7
      FF002999BF000D73A50070707000D1D1D1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC6001A9AC6007AE4F0009CFF
      FF007CE3FF007CE3FF007CE3FF007CE3FF007CE3FF007CE3FF007CE3FF007CDF
      FF0043B2DE001A7B9D0064646400B9B9B9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC60026A2CF0040B8D7009CFF
      FF0084EBFF0084EBFF0084EBFF0084EBFF0084EBFF0084EBFF0084EBFF0084E7
      FF0043BAEF00199AC60064646400898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC60043B3E20021A0C900A5FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0053BEE7005CBCCE000D73A500707070000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC60070D5FD00199AC60089F0
      F7009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF005BC7FF0096F9FB00197B9B00707070000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC60084D7FF00199AC6006CBF
      DA00FFFFFF00FFFFFF00F7FBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084E7FF00FFFFFF00197EA100898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC60084EBFF0050C1E200199A
      C600199AC600199AC600199AC600199AC600199AC600199AC600199AC600199A
      C600199AC600199AC6001989B100C5C5C5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC6009CF3FF008CF3FF008CF3
      FF008CF3FF008CF3FF008CF3FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00199AC6001A7B9D00C5C5C500F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC600FFFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF00FFFFFF00199AC600199AC600199AC600199AC600199A
      C600199AC600DDDDDD00F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000022A2CE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00199AC600C5C5C500F5F5F50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000022A2CE0022A2
      CE0022A2CE0022A2CE00DDDDDD00F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000008001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000001000000000000807F000000000000
      C0FF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object FilesImages: TImageList
    Left = 56
    Top = 160
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F500DDDDDD00D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100DDDDDD00F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F500C5C5C500898989007070
      7000707070007070700070707000707070007070700070707000707070007070
      70007070700089898900C5C5C500F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDD000D73A5000D73A5000D73
      A5000D73A5000D73A5000D73A5000D73A5000D73A5000D73A5000D73A5000D73
      A5000D73A5006464640089898900DDDDDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC6001C9CC7009CFFFF006CD7
      FF006CD7FF006CD7FF006CD7FF006CD7FF006CD7FF006CD7FF006CD7FF006CD7
      FF002999BF000D73A50070707000D1D1D1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC6001A9AC6007AE4F0009CFF
      FF007CE3FF007CE3FF007CE3FF007CE3FF007CE3FF007CE3FF007CE3FF007CDF
      FF0043B2DE001A7B9D0064646400B9B9B9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC60026A2CF0040B8D7009CFF
      FF0084EBFF0084EBFF0084EBFF0084EBFF0084EBFF0084EBFF0084EBFF0084E7
      FF0043BAEF00199AC60064646400898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC60043B3E20021A0C900A5FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0053BEE7005CBCCE000D73A500707070000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC60070D5FD00199AC60089F0
      F7009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF005BC7FF0096F9FB00197B9B00707070000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC60084D7FF00199AC6006CBF
      DA00FFFFFF00FFFFFF00F7FBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084E7FF00FFFFFF00197EA100898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC60084EBFF0050C1E200199A
      C600199AC600199AC600199AC600199AC600199AC600199AC600199AC600199A
      C600199AC600199AC6001989B100C5C5C5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC6009CF3FF008CF3FF008CF3
      FF008CF3FF008CF3FF008CF3FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00199AC6001A7B9D00C5C5C500F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000199AC600FFFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF00FFFFFF00199AC600199AC600199AC600199AC600199A
      C600199AC600DDDDDD00F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000022A2CE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00199AC600C5C5C500F5F5F50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000022A2CE0022A2
      CE0022A2CE0022A2CE00DDDDDD00F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000008001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000001000000000000807F000000000000
      C0FF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
end
