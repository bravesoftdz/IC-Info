object PreOrderMXFrm: TPreOrderMXFrm
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #35746#39184#26126#32454#26174#31034#31383#21475
  ClientHeight = 681
  ClientWidth = 900
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxGroupBox1: TcxGroupBox
    AlignWithMargins = True
    Left = 0
    Top = 0
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 2
    Align = alClient
    Alignment = alCenterCenter
    TabOrder = 0
    Height = 371
    Width = 900
    object DataGrid: TcxGrid
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 890
      Height = 361
      Align = alClient
      TabOrder = 0
      object DataGridDBTV: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        Styles.StyleSheet = GridTableViewStyleSheetDevExpress
      end
      object DataGridLL: TcxGridLevel
        GridView = DataGridDBTV
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    AlignWithMargins = True
    Left = 0
    Top = 410
    Margins.Left = 0
    Margins.Top = 2
    Margins.Right = 0
    Margins.Bottom = 2
    Align = alBottom
    Alignment = alCenterCenter
    TabOrder = 1
    Height = 35
    Width = 900
    object CBMXExportProgressBar: TcxProgressBar
      Left = 2
      Top = 2
      Align = alClient
      Properties.ShowTextStyle = cxtsText
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.Color = clLime
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 896
    end
  end
  object cxGroupBox3: TcxGroupBox
    AlignWithMargins = True
    Left = 0
    Top = 646
    Margins.Left = 0
    Margins.Top = 2
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Alignment = alCenterCenter
    TabOrder = 2
    Height = 35
    Width = 900
    object Panel2: TPanel
      Left = 67
      Top = 2
      Width = 831
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      Color = clCream
      ParentBackground = False
      TabOrder = 0
      object CBMXExportBTN: TcxButton
        Left = 588
        Top = 3
        Width = 75
        Height = 25
        Caption = #23548'   '#20986
        LookAndFeel.NativeStyle = True
        TabOrder = 0
        OnClick = CBMXExportBTNClick
      end
      object CBMXExitBTN: TcxButton
        Left = 749
        Top = 3
        Width = 75
        Height = 25
        Caption = #36864'   '#20986
        LookAndFeel.NativeStyle = True
        TabOrder = 1
        OnClick = CBMXExitBTNClick
      end
      object PreviewBTN: TcxButton
        Left = 669
        Top = 3
        Width = 75
        Height = 25
        Caption = #25171#21360#39044#35272
        LookAndFeel.NativeStyle = True
        TabOrder = 2
        OnClick = PreviewBTNClick
      end
    end
  end
  object cxGroupBox4: TcxGroupBox
    Left = 0
    Top = 373
    Align = alBottom
    Alignment = alCenterCenter
    TabOrder = 3
    Height = 35
    Width = 900
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 896
      Height = 31
      Align = alClient
      BevelOuter = bvNone
      Caption = #23548#20986#25968#25454#38656#35201'XLS'#36719#20214#25903#25345#65292#35831#30830#35748#31995#32479#20013#23433#35013'XLS'#36719#20214#65292#21542#21017#26080#27861#23436#25104#23548#20986'!'
      Color = 8421631
      ParentBackground = False
      TabOrder = 0
    end
  end
  object cxGroupBox5: TcxGroupBox
    Left = 0
    Top = 447
    Align = alBottom
    Caption = #20449#24687#32479#35745
    TabOrder = 4
    Height = 197
    Width = 900
    object cxGroupBox6: TcxGroupBox
      Left = 718
      Top = 21
      Align = alClient
      Caption = #24635#21644#32479#35745
      TabOrder = 0
      Height = 174
      Width = 180
      object Label21: TLabel
        Left = 7
        Top = 27
        Width = 60
        Height = 16
        Caption = #35746#39184#27425#25968
      end
      object Label22: TLabel
        Left = 7
        Top = 57
        Width = 60
        Height = 16
        Caption = #35746#39184#37329#39069
      end
      object Label23: TLabel
        Left = 8
        Top = 87
        Width = 60
        Height = 16
        Caption = #28040#36153#27425#25968
      end
      object Label24: TLabel
        Left = 8
        Top = 117
        Width = 60
        Height = 16
        Caption = #28040#36153#37329#39069
      end
      object Label25: TLabel
        Left = 22
        Top = 147
        Width = 45
        Height = 16
        Caption = #24635#37329#39069
      end
      object DCCSTextEdit: TcxTextEdit
        Left = 72
        Top = 23
        Properties.ReadOnly = True
        TabOrder = 0
        Width = 101
      end
      object DCJETextEdit: TcxTextEdit
        Left = 72
        Top = 53
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 101
      end
      object XFCSTextEdit: TcxTextEdit
        Left = 72
        Top = 83
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 101
      end
      object XFJETextEdit: TcxTextEdit
        Left = 72
        Top = 113
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 101
      end
      object ZETextEdit: TcxTextEdit
        Left = 72
        Top = 143
        Properties.ReadOnly = True
        TabOrder = 4
        Width = 101
      end
    end
    object cxGroupBox7: TcxGroupBox
      Left = 539
      Top = 21
      Align = alLeft
      Caption = #22812#23477#32479#35745
      TabOrder = 1
      Height = 174
      Width = 179
      object Label16: TLabel
        Left = 7
        Top = 27
        Width = 60
        Height = 16
        Caption = #35746#39184#27425#25968
      end
      object Label17: TLabel
        Left = 7
        Top = 57
        Width = 60
        Height = 16
        Caption = #35746#39184#37329#39069
      end
      object Label18: TLabel
        Left = 8
        Top = 87
        Width = 60
        Height = 16
        Caption = #28040#36153#27425#25968
      end
      object Label19: TLabel
        Left = 8
        Top = 117
        Width = 60
        Height = 16
        Caption = #28040#36153#37329#39069
      end
      object Label20: TLabel
        Left = 22
        Top = 147
        Width = 45
        Height = 16
        Caption = #24635#37329#39069
      end
      object NTDCCSTextEdit: TcxTextEdit
        Left = 72
        Top = 23
        Properties.ReadOnly = True
        TabOrder = 0
        Width = 101
      end
      object NTDCJETextEdit: TcxTextEdit
        Left = 72
        Top = 53
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 101
      end
      object NTXFCSTextEdit: TcxTextEdit
        Left = 72
        Top = 83
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 101
      end
      object NTXFJETextEdit: TcxTextEdit
        Left = 72
        Top = 113
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 101
      end
      object NTZETextEdit: TcxTextEdit
        Left = 72
        Top = 143
        Properties.ReadOnly = True
        TabOrder = 4
        Width = 101
      end
    end
    object cxGroupBox8: TcxGroupBox
      Left = 360
      Top = 21
      Align = alLeft
      Caption = #26202#39184#32479#35745
      TabOrder = 2
      Height = 174
      Width = 179
      object Label6: TLabel
        Left = 7
        Top = 27
        Width = 60
        Height = 16
        Caption = #35746#39184#27425#25968
      end
      object Label7: TLabel
        Left = 7
        Top = 57
        Width = 60
        Height = 16
        Caption = #35746#39184#37329#39069
      end
      object Label8: TLabel
        Left = 8
        Top = 87
        Width = 60
        Height = 16
        Caption = #28040#36153#27425#25968
      end
      object Label14: TLabel
        Left = 8
        Top = 117
        Width = 60
        Height = 16
        Caption = #28040#36153#37329#39069
      end
      object Label15: TLabel
        Left = 22
        Top = 147
        Width = 45
        Height = 16
        Caption = #24635#37329#39069
      end
      object SPDCCSTextEdit: TcxTextEdit
        Left = 72
        Top = 23
        Properties.ReadOnly = True
        TabOrder = 0
        Width = 101
      end
      object SPDCJETextEdit: TcxTextEdit
        Left = 72
        Top = 53
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 101
      end
      object SPXFCSTextEdit: TcxTextEdit
        Left = 72
        Top = 83
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 101
      end
      object SPXFJETextEdit: TcxTextEdit
        Left = 72
        Top = 113
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 101
      end
      object SPZETextEdit: TcxTextEdit
        Left = 72
        Top = 143
        Properties.ReadOnly = True
        TabOrder = 4
        Width = 101
      end
    end
    object cxGroupBox9: TcxGroupBox
      Left = 181
      Top = 21
      Align = alLeft
      Caption = #21320#39184#32479#35745
      TabOrder = 3
      Height = 174
      Width = 179
      object Label1: TLabel
        Left = 7
        Top = 27
        Width = 60
        Height = 16
        Caption = #35746#39184#27425#25968
      end
      object Label2: TLabel
        Left = 7
        Top = 57
        Width = 60
        Height = 16
        Caption = #35746#39184#37329#39069
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 60
        Height = 16
        Caption = #28040#36153#27425#25968
      end
      object Label4: TLabel
        Left = 8
        Top = 117
        Width = 60
        Height = 16
        Caption = #28040#36153#37329#39069
      end
      object Label5: TLabel
        Left = 22
        Top = 147
        Width = 45
        Height = 16
        Caption = #24635#37329#39069
      end
      object LHDCCSTextEdit: TcxTextEdit
        Left = 72
        Top = 23
        Properties.ReadOnly = True
        TabOrder = 0
        Width = 101
      end
      object LHDCJETextEdit: TcxTextEdit
        Left = 72
        Top = 53
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 101
      end
      object LHXFCSTextEdit: TcxTextEdit
        Left = 72
        Top = 83
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 101
      end
      object LHXFJETextEdit: TcxTextEdit
        Left = 72
        Top = 113
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 101
      end
      object LHZETextEdit: TcxTextEdit
        Left = 72
        Top = 143
        Properties.ReadOnly = True
        TabOrder = 4
        Width = 101
      end
    end
    object cxGroupBox10: TcxGroupBox
      Left = 2
      Top = 21
      Align = alLeft
      Caption = #26089#39184#32479#35745
      TabOrder = 4
      Height = 174
      Width = 179
      object Label9: TLabel
        Left = 7
        Top = 27
        Width = 60
        Height = 16
        Caption = #35746#39184#27425#25968
      end
      object Label10: TLabel
        Left = 7
        Top = 57
        Width = 60
        Height = 16
        Caption = #35746#39184#37329#39069
      end
      object Label11: TLabel
        Left = 8
        Top = 117
        Width = 60
        Height = 16
        Caption = #28040#36153#37329#39069
      end
      object Label12: TLabel
        Left = 8
        Top = 87
        Width = 60
        Height = 16
        Caption = #28040#36153#27425#25968
      end
      object Label13: TLabel
        Left = 22
        Top = 147
        Width = 45
        Height = 16
        Caption = #24635#37329#39069
      end
      object BFDCCSTextEdit: TcxTextEdit
        Left = 72
        Top = 23
        Properties.ReadOnly = True
        TabOrder = 0
        Width = 101
      end
      object BFDCJETextEdit: TcxTextEdit
        Left = 72
        Top = 53
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 101
      end
      object BFXFCSTextEdit: TcxTextEdit
        Left = 72
        Top = 83
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 101
      end
      object BFXFJETextEdit: TcxTextEdit
        Left = 72
        Top = 113
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 101
      end
      object BFZETextEdit: TcxTextEdit
        Left = 72
        Top = 143
        Properties.ReadOnly = True
        TabOrder = 4
        Width = 101
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 80
    Top = 248
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.FilterBox = cxStyle5
      Styles.Inactive = cxStyle10
      Styles.IncSearch = cxStyle11
      Styles.Selection = cxStyle14
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      BuiltIn = True
    end
  end
  object CBMXADOQuery: TADOQuery
    AutoCalcFields = False
    Connection = SDIAppForm.ADOConnection1
    CommandTimeout = 100
    Parameters = <>
    Left = 80
    Top = 192
  end
  object CBMXDataSource: TDataSource
    DataSet = CBMXADOQuery
    Left = 80
    Top = 136
  end
  object SaveDialog: TSaveDialog
    FileName = #37325#21629#21517
    Filter = 'xls'
    Left = 192
    Top = 256
  end
  object ADOQInThread: TADOQuery
    Connection = SDIAppForm.ADOConnection1
    Parameters = <>
    Left = 80
    Top = 312
  end
  object frxDCMXReport: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40953.899492187500000000
    ReportOptions.LastChange = 40953.910096747680000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 304
    Top = 160
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 257.000000000000000000
      PaperHeight = 182.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 224.519775350000000000
        Top = 18.897650000000000000
        Width = 895.748610000000000000
        object Memo2: TfrxMemoView
          Left = 362.834880000000000000
          Width = 173.858380000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #35746#39184#26126#32454#25253#34920)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 34.015770000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #26597#35810#26089#39184)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 356.205010000000000000
          Top = 33.795300000000000000
          Width = 75.590600000000000000
          Height = 21.165354330000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #26597#35810#26202#39184)
          ParentFont = False
        end
        object BFMemo: TfrxMemoView
          Left = 75.590600000000000000
          Top = 34.015770000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object LHDCJEMemo: TfrxMemoView
          Left = 253.803340000000000000
          Top = 76.370130000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 178.181200000000000000
          Top = 34.015770000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #26597#35810#21320#39184)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = -0.031540000000000000
          Top = 55.472480000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #35746#39184#27425#25968)
          ParentFont = False
        end
        object LHMemo: TfrxMemoView
          Left = 253.771800000000000000
          Top = 34.015770000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object BFDCCSMemo: TfrxMemoView
          Left = 75.559060000000000000
          Top = 55.472480000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 178.149660000000000000
          Top = 76.590600000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #35746#39184#37329#39069)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 178.149660000000000000
          Top = 55.472480000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #35746#39184#27425#25968)
          ParentFont = False
        end
        object SRMemo: TfrxMemoView
          Left = 431.953000000000000000
          Top = 34.015770000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object LHDCCSMemo: TfrxMemoView
          Left = 253.740260000000000000
          Top = 55.472480000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 356.362400000000000000
          Top = 55.472480000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #35746#39184#27425#25968)
          ParentFont = False
        end
        object SRDCCSMemo: TfrxMemoView
          Left = 431.953000000000000000
          Top = 55.472480000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 76.590600000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #35746#39184#37329#39069)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 476.315400000000000000
          Top = 160.181200000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #29983#25104#26085#26399)
          ParentFont = False
        end
        object BFDCJEMemo: TfrxMemoView
          Left = 75.590600000000000000
          Top = 76.590600000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object SCRQMemo: TfrxMemoView
          Left = 551.906000000000000000
          Top = 160.181200000000000000
          Width = 162.519685040000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 0.063080000000000000
          Top = 160.401670000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #36215#22987#26085#26399)
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 238.189240000000000000
          Top = 160.181200000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #25130#27490#26085#26399)
          ParentFont = False
        end
        object QSRQMemo: TfrxMemoView
          Left = 75.653680000000000000
          Top = 160.401670000000000000
          Width = 162.519685040000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object JZRQMemo: TfrxMemoView
          Left = 313.779840000000000000
          Top = 160.181200000000000000
          Width = 162.519685040000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Top = 180.944960000000000000
          Width = 894.992125980000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #27880#37322#65306#28040#36153#31867#22411#20013#23383#27597' '#39' O '#39#20195#34920#23454#38469#28040#36153#65292#39'S'#39' '#20195#34920#35746#26089#39184#65292#8216'D'#8217#20195#34920#35746#21320#39184#65292#8216'F'#8217#20195#34920#35746#26202#39184#65292#8216'G'#8217#20195#34920#35746#22812#23477)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = -0.220470000000000000
          Top = 201.842610000000000000
          Width = 894.992125980000000000
          Height = 22.677165350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #35814#32454#35746#39184#28040#36153#24773#20917)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 355.748300000000000000
          Top = 76.590600000000000000
          Width = 76.346456690000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #35746#39184#37329#39069)
          ParentFont = False
        end
        object SRDCJEMemo: TfrxMemoView
          Left = 432.338900000000000000
          Top = 76.590600000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object NTDCJEMemo: TfrxMemoView
          Left = 611.315400000000000000
          Top = 76.370130000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 535.693260000000000000
          Top = 34.015770000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #26597#35810#22812#23477)
          ParentFont = False
        end
        object NTMemo: TfrxMemoView
          Left = 611.283860000000000000
          Top = 34.015770000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 535.661720000000000000
          Top = 76.590600000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #35746#39184#37329#39069)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 535.661720000000000000
          Top = 55.472480000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #35746#39184#27425#25968)
          ParentFont = False
        end
        object NTDCCSMemo: TfrxMemoView
          Left = 611.252320000000000000
          Top = 55.472480000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object ZDCZEMemo: TfrxMemoView
          Left = 790.276130000000000000
          Top = 76.370130000000000000
          Width = 105.070866140000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 714.653990000000000000
          Top = 34.015770000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #39184#21381)
          ParentFont = False
        end
        object CTMemo: TfrxMemoView
          Left = 790.244590000000000000
          Top = 34.015770000000000000
          Width = 105.448818900000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 714.622450000000000000
          Top = 76.590600000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #35746#39184#24635#39069)
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 714.622450000000000000
          Top = 55.472480000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #24635#35746#39184#27425#25968)
          ParentFont = False
        end
        object ZDCCSMemo: TfrxMemoView
          Left = 790.213050000000000000
          Top = 55.472480000000000000
          Width = 105.448818900000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 714.110700000000000000
          Top = 160.267780000000000000
          Width = 76.346456690000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #25253#34920#25805#20316#21592)
          ParentFont = False
        end
        object BBCZYMemo: TfrxMemoView
          Left = 790.465060000000000000
          Top = 160.267780000000000000
          Width = 105.070866140000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object LHXFJEMemo: TfrxMemoView
          Left = 253.834880000000000000
          Top = 118.165430000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 97.267780000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #28040#36153#27425#25968)
          ParentFont = False
        end
        object BFXFCSMemo: TfrxMemoView
          Left = 75.590600000000000000
          Top = 97.267780000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 178.181200000000000000
          Top = 118.385900000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #28040#36153#37329#39069)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 178.181200000000000000
          Top = 97.267780000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #28040#36153#27425#25968)
          ParentFont = False
        end
        object LHXFCSMemo: TfrxMemoView
          Left = 253.771800000000000000
          Top = 97.267780000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 356.393940000000000000
          Top = 97.267780000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #28040#36153#27425#25968)
          ParentFont = False
        end
        object SRXFCSMemo: TfrxMemoView
          Left = 431.984540000000000000
          Top = 97.267780000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 0.031540000000000000
          Top = 118.385900000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #28040#36153#37329#39069)
          ParentFont = False
        end
        object BFXFJEMemo: TfrxMemoView
          Left = 75.622140000000000000
          Top = 118.385900000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 355.779840000000000000
          Top = 118.385900000000000000
          Width = 76.346456690000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #28040#36153#37329#39069)
          ParentFont = False
        end
        object SRXFJEMemo: TfrxMemoView
          Left = 432.370440000000000000
          Top = 118.385900000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object NTXFJEMemo: TfrxMemoView
          Left = 611.346940000000000000
          Top = 118.165430000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 535.693260000000000000
          Top = 118.385900000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #28040#36153#37329#39069)
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 535.693260000000000000
          Top = 97.267780000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #28040#36153#27425#25968)
          ParentFont = False
        end
        object NTXFCSMemo: TfrxMemoView
          Left = 611.283860000000000000
          Top = 97.267780000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object XFZEMemo: TfrxMemoView
          Left = 790.307670000000000000
          Top = 118.165430000000000000
          Width = 105.070866140000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 714.653990000000000000
          Top = 118.385900000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #28040#36153#24635#39069)
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 714.653990000000000000
          Top = 97.267780000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #24635#28040#36153#27425#25968)
          ParentFont = False
        end
        object ZXFCSMemo: TfrxMemoView
          Left = 790.244590000000000000
          Top = 97.267780000000000000
          Width = 105.448818900000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object LHZEMemo: TfrxMemoView
          Left = 253.803340000000000000
          Top = 138.842610000000000000
          Width = 102.803149610000000000
          Height = 21.165354330000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 178.149660000000000000
          Top = 139.063080000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #21320#39184#24635#39069)
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Top = 139.063080000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #26089#39184#24635#39069)
          ParentFont = False
        end
        object BFZEMemo: TfrxMemoView
          Left = 75.590600000000000000
          Top = 139.063080000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 355.748300000000000000
          Top = 139.063080000000000000
          Width = 76.346456690000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #26202#39184#24635#39069)
          ParentFont = False
        end
        object SRZEMemo: TfrxMemoView
          Left = 432.338900000000000000
          Top = 139.063080000000000000
          Width = 102.803149610000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object NTZEMemo: TfrxMemoView
          Left = 611.315400000000000000
          Top = 138.842610000000000000
          Width = 102.803149610000000000
          Height = 21.165354330000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 535.661720000000000000
          Top = 139.063080000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #22812#23477#24635#39069)
          ParentFont = False
        end
        object ZEMemo: TfrxMemoView
          Left = 790.276130000000000000
          Top = 138.842610000000000000
          Width = 105.070866140000000000
          Height = 21.165354330000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 714.622450000000000000
          Top = 139.063080000000000000
          Width = 75.590600000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #24635#37329#39069)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 20.787401570000000000
        Top = 347.716760000000000000
        Width = 895.748610000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object KH: TfrxMemoView
          Width = 94.488188980000000000
          Height = 20.787401570000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object BH: TfrxMemoView
          Left = 94.590600000000000000
          Width = 94.488188980000000000
          Height = 20.787401570000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object XM: TfrxMemoView
          Left = 189.181200000000000000
          Width = 83.149606300000000000
          Height = 20.787401570000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object BM: TfrxMemoView
          Left = 271.771800000000000000
          Width = 86.929133860000000000
          Height = 20.787401570000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object SFYE: TfrxMemoView
          Left = 358.362400000000000000
          Width = 79.370078740000000000
          Height = 20.787401570000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object SFJE: TfrxMemoView
          Left = 437.953000000000000000
          Width = 79.370078740000000000
          Height = 20.787401570000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object SYCS: TfrxMemoView
          Left = 517.134200000000000000
          Width = 71.811023620000000000
          Height = 20.787401570000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object JYNO: TfrxMemoView
          Left = 589.165740000000000000
          Width = 37.795275590000000000
          Height = 20.787401570000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object CT: TfrxMemoView
          Left = 627.197280000000000000
          Width = 75.590551180000000000
          Height = 20.787401570000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object SFLX: TfrxMemoView
          Left = 703.228820000000000000
          Width = 37.795275590000000000
          Height = 20.787401570000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object SFRQ: TfrxMemoView
          Left = 740.921770000000000000
          Width = 154.204724410000000000
          Height = 20.787401570000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 430.866420000000000000
        Width = 895.748610000000000000
        object Memo1: TfrxMemoView
          Left = 819.158010000000000000
          Top = 2.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 20.787401570000000000
        Top = 264.567100000000000000
        Width = 895.748610000000000000
        object Memo29: TfrxMemoView
          Width = 94.488188980000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #21345#21495)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 94.590600000000000000
          Width = 94.488188980000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #32534#21495)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 189.181200000000000000
          Width = 83.149606299212600000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #22995#21517)
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 271.771800000000000000
          Width = 86.929133860000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #37096#38376)
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 358.362400000000000000
          Width = 79.370078740000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #21345#20313#39069)
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 437.953000000000000000
          Width = 79.370078740157500000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #28040#36153#37329#39069)
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 517.134200000000000000
          Width = 71.811023620000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #20351#29992#27425#25968)
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 589.165740000000000000
          Width = 37.795275590000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #26426#21495)
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 627.197280000000000000
          Width = 75.590551180000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #39184#21381)
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 703.228820000000000000
          Width = 37.795275590000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #31867#22411)
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 740.921770000000000000
          Width = 154.204724410000000000
          Height = 20.787401570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #28040#36153#26102#38388)
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = CBMXDataSource
    BCDToCurrency = False
    Left = 304
    Top = 248
  end
  object TJADOQuery: TADOQuery
    AutoCalcFields = False
    Connection = SDIAppForm.ADOConnection1
    CommandTimeout = 100
    Parameters = <>
    Left = 192
    Top = 160
  end
end
