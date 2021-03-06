object FCajaBancos: TFCajaBancos
  Left = 259
  Top = 177
  BorderStyle = bsDialog
  Caption = 'Libro Bancos'
  ClientHeight = 303
  ClientWidth = 590
  Color = 14869218
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Comic Sans MS'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object grbBCO: TGroupBox
    Left = 6
    Top = 68
    Width = 569
    Height = 111
    Caption = 'Banco - Cuenta Corriente'
    Color = 14869218
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object Label10: TLabel
      Left = 228
      Top = 17
      Width = 87
      Height = 15
      Caption = 'Cuenta Corriente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 7
      Top = 17
      Width = 31
      Height = 15
      Caption = 'Banco'
    end
    object Label2: TLabel
      Left = 8
      Top = 61
      Width = 130
      Height = 15
      Caption = 'Moneda Cuenta Corriente'
    end
    object dblcCtaCte: TwwDBLookupCombo
      Left = 229
      Top = 34
      Width = 128
      Height = 23
      Hint = 'Cuenta Corriente'
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CCBCOID'#9'30'#9'C'#243'digo'#9'F'
        'CCBCODES'#9'40'#9'Descripci'#243'n'#9'F')
      LookupTable = DMTE.cdsCCBco
      LookupField = 'CCBCOID'
      Options = [loColLines, loTitles]
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcCtaCteExit
      OnNotInList = NotInList
    end
    object dbeCtaCte: TwwDBEdit
      Left = 360
      Top = 34
      Width = 200
      Height = 23
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcBanco: TwwDBLookupCombo
      Left = 7
      Top = 34
      Width = 59
      Height = 23
      Hint = 'Banco'
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BANCOID'#9'3'#9'C'#243'digo'#9'F'
        'BANCONOM'#9'40'#9'Descripci'#243'n'#9'F'
        'BANCOABR'#9'15'#9'Abreviatura'#9'F')
      LookupTable = DMTE.cdsBanco
      LookupField = 'BANCOID'
      Options = [loColLines, loTitles]
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcBancoExit
      OnNotInList = NotInList
    end
    object dbeBanco: TwwDBEdit
      Left = 69
      Top = 34
      Width = 156
      Height = 23
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeMonCTACTE: TwwDBEdit
      Left = 6
      Top = 81
      Width = 219
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object grBFechas: TGroupBox
    Left = 367
    Top = -2
    Width = 207
    Height = 63
    Color = 14869218
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 16
      Top = 11
      Width = 50
      Height = 15
      Caption = 'A'#241'o Mes :'
    end
    object dbePeriodo: TwwDBLookupCombo
      Left = 8
      Top = 27
      Width = 73
      Height = 23
      Hint = 'A'#241'o Mes'
      DropDownAlignment = taLeftJustify
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dbePeriodoExit
      OnNotInList = NotInList
    end
  end
  object grbExpMon: TGroupBox
    Left = 5
    Top = 181
    Width = 236
    Height = 64
    Caption = 'Expresi'#243'n Monetaria'
    Color = 14869218
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 15
      Width = 40
      Height = 15
      Caption = 'Moneda'
    end
    object dbclMoneda: TwwDBLookupCombo
      Left = 8
      Top = 32
      Width = 59
      Height = 23
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TMONID'#9'3'#9'C'#243'digo'#9'F'
        'TMONDES'#9'30'#9'Descripci'#243'n'#9'F'
        'TMONABR'#9'8'#9'Abreviatura'#9'F')
      LookupTable = DMTE.cdsTMon
      LookupField = 'TMONID'
      Options = [loColLines, loTitles]
      Enabled = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dbclMonedaChange
      OnNotInList = NotInList
    end
    object dbeMoneda: TwwDBEdit
      Left = 70
      Top = 32
      Width = 156
      Height = 23
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 247
    Width = 586
    Height = 50
    BevelOuter = bvLowered
    Color = 14869218
    TabOrder = 4
    object Z2bbtnPrint: TBitBtn
      Left = 540
      Top = 7
      Width = 32
      Height = 32
      Hint = 'Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = z2bbtnOKCabClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object grBCIA: TGroupBox
    Left = 6
    Top = -4
    Width = 358
    Height = 65
    Color = 14869218
    ParentColor = False
    TabOrder = 0
    object Label11: TLabel
      Left = 7
      Top = 12
      Width = 49
      Height = 15
      Caption = 'Compa'#241#237'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dblcCIA: TwwDBLookupCombo
      Left = 7
      Top = 29
      Width = 59
      Height = 27
      Hint = 'Compa'#241#237'a'
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CIAID'#9'2'#9'C'#243'digo'#9'F'
        'CIADES'#9'40'#9'Descripci'#243'n'#9'F'
        'CIAABR'#9'15'#9'Abreviatura'#9'F')
      LookupTable = DMTE.cdsCia
      LookupField = 'CIAID'
      Options = [loColLines, loTitles]
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcCIAExit
      OnNotInList = NotInList
    end
    object dbeCIA: TwwDBEdit
      Left = 69
      Top = 29
      Width = 280
      Height = 27
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppLibCaja
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 360
    Top = 184
  end
  object dbpplEgrCaja: TppDBPipeline
    DataSource = DMTE.dsSQL
    UserName = 'dbpplEgrCaja'
    Left = 264
    Top = 192
  end
  object ppLibCaja: TppReport
    AutoStop = False
    DataPipeline = dbpplEgrCaja
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SolExes\SOLFormatos\Caja\DEMA\LibroBanco.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppLibCajaPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 416
    Top = 192
    Version = '7.02'
    mmColumnWidth = 284163
    DataPipelineName = 'dbpplEgrCaja'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 32015
      mmPrintPosition = 0
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'LIBRO BANCOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 89959
        mmTop = 3440
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'A'#209'O MES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 86784
        mmTop = 8467
        mmWidth = 13758
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 187855
        mmTop = 265
        mmWidth = 12171
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 191030
        mmTop = 5027
        mmWidth = 8996
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 182563
        mmTop = 10054
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Pagina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 167482
        mmTop = 10054
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'de'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 191559
        mmTop = 10054
        mmWidth = 2646
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        AutoSize = False
        VarType = vtPageCount
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 193146
        mmTop = 10054
        mmWidth = 7938
        BandType = 0
      end
      object pplblCIA: TppLabel
        UserName = 'lblCIA1'
        Caption = 'SYSTEMS - ON LINE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 265
        mmTop = 0
        mmWidth = 40217
        BandType = 0
      end
      object pplblPeriodo: TppLabel
        UserName = 'Label202'
        Caption = 'Junio 2002'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 101600
        mmTop = 8467
        mmWidth = 14552
        BandType = 0
      end
      object pplblBCO: TppLabel
        UserName = 'lblBCO1'
        Caption = '01 BANCO DE CR'#201'DITO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 69850
        mmTop = 12171
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'CUENTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 72231
        mmTop = 16140
        mmWidth = 11906
        BandType = 0
      end
      object pplblCuenta: TppLabel
        UserName = 'lblCuenta'
        Caption = '191-0167796007(CTA. CTE. SOLES- CREDITO)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 88371
        mmTop = 16140
        mmWidth = 61648
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 20373
        mmWidth = 201877
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 31221
        mmWidth = 202936
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        CharWrap = True
        AutoSize = False
        Caption = 'Operaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 1588
        mmTop = 22490
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        CharWrap = True
        AutoSize = False
        Caption = 'Fecha de Operaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 26194
        mmTop = 22490
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        CharWrap = True
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 80963
        mmTop = 22490
        mmWidth = 60854
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label101'
        CharWrap = True
        AutoSize = False
        Caption = 'Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 43921
        mmTop = 22490
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        CharWrap = True
        AutoSize = False
        Caption = 'INGRESO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 150284
        mmTop = 22490
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        CharWrap = True
        AutoSize = False
        Caption = 'EGRESO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 165629
        mmTop = 22490
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'SALDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 183357
        mmTop = 22490
        mmWidth = 10583
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'ECFCOMP'
        DataPipeline = dbpplEgrCaja
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpplEgrCaja'
        mmHeight = 2910
        mmLeft = 24871
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'ECNOCOMP'
        DataPipeline = dbpplEgrCaja
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpplEgrCaja'
        mmHeight = 2910
        mmLeft = 265
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'ECNOCHQ'
        DataPipeline = dbpplEgrCaja
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpplEgrCaja'
        mmHeight = 2910
        mmLeft = 60590
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'FPAGODES'
        DataPipeline = dbpplEgrCaja
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpplEgrCaja'
        mmHeight = 2910
        mmLeft = 43921
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ECGIRA'
        DataPipeline = dbpplEgrCaja
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpplEgrCaja'
        mmHeight = 2910
        mmLeft = 81756
        mmTop = 0
        mmWidth = 66411
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'INGRESO'
        DataPipeline = dbpplEgrCaja
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpplEgrCaja'
        mmHeight = 2910
        mmLeft = 154782
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'EGRESO'
        DataPipeline = dbpplEgrCaja
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpplEgrCaja'
        mmHeight = 2910
        mmLeft = 171450
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'SALDO'
        DataPipeline = dbpplEgrCaja
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpplEgrCaja'
        mmHeight = 2910
        mmLeft = 186002
        mmTop = 0
        mmWidth = 8467
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 136261
        mmTop = 1058
        mmWidth = 74083
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        AutoSize = True
        DataField = 'INGRESO'
        DataPipeline = dbpplEgrCaja
        DisplayFormat = '### ### ##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpplEgrCaja'
        mmHeight = 2910
        mmLeft = 143404
        mmTop = 2646
        mmWidth = 22490
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        AutoSize = True
        DataField = 'EGRESO'
        DataPipeline = dbpplEgrCaja
        DisplayFormat = '### ### ##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpplEgrCaja'
        mmHeight = 2910
        mmLeft = 160338
        mmTop = 2646
        mmWidth = 20902
        BandType = 7
      end
      object pplblSaldoF: TppLabel
        UserName = 'lblSaldoF1'
        AutoSize = False
        Caption = 'pplblSaldoF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 179388
        mmTop = 2646
        mmWidth = 15081
        BandType = 7
      end
    end
  end
end
