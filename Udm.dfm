object U_dm: TU_dm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 360
  Width = 534
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=curriculo'
      'User_Name=root'
      'DriverID=MySQL')
    Left = 168
    Top = 128
  end
  object tb_curriculo: TFDTable
    IndexFieldNames = 'codigo'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'curriculo'
    TableName = 'curriculo'
    Left = 328
    Top = 136
    object tb_curriculocodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tb_curriculonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tb_curriculoemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 50
    end
    object tb_curriculoformacao: TStringField
      FieldName = 'formacao'
      Origin = 'formacao'
      Required = True
      Size = 500
    end
    object tb_curriculoendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 50
    end
    object tb_curriculoexperiencias: TStringField
      FieldName = 'experiencias'
      Origin = 'experiencias'
      Required = True
      Size = 50
    end
    object tb_curriculoidiomas: TStringField
      FieldName = 'idiomas'
      Origin = 'idiomas'
      Required = True
      Size = 50
    end
    object tb_curriculotelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
    end
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 288
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = tb_curriculo
    Left = 96
    Top = 72
  end
  object Driver: TFDPhysMySQLDriverLink
    VendorLib = 'C:\3-52 A BRABA\Dyanna\dyanna & alessandro\lib\libmySQL (4).dll'
    Left = 72
    Top = 176
  end
  object sql_imprimir: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from curriculo')
    Left = 80
    Top = 248
  end
  object report_curriculo: TfrxReport
    Version = '2021.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44819.491239421300000000
    ReportOptions.LastChange = 44840.492973842590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 256
    Top = 248
    Datasets = <
      item
        DataSet = Ds_rel_curriculo
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 279.685220000000000000
        Top = 64.252010000000000000
        Width = 177.637910000000000000
        Height = 45.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'CURRICULO')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 34.015770000000000000
        Top = 226.771800000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          'Nome: ')
      end
      object frxDBDataset1nome: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 86.929190000000000000
        Top = 226.771800000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'nome'
        DataSet = Ds_rel_curriculo
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."nome"]')
      end
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 34.015770000000000000
        Top = 272.126160000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          'Telefone: ')
      end
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 34.015770000000000000
        Top = 317.480520000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        DataField = 'email'
        DataSet = Ds_rel_curriculo
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."email"]')
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795300000000000000
        Top = 362.834880000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        DataField = 'endereco'
        DataSet = Ds_rel_curriculo
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."endereco"]')
      end
      object Memo6: TfrxMemoView
        AllowVectorExport = True
        Left = 41.574830000000000000
        Top = 415.748300000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          'Idiomas: ')
      end
      object frxDBDataset1idiomas: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 113.385900000000000000
        Top = 415.748300000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'idiomas'
        DataSet = Ds_rel_curriculo
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."idiomas"]')
      end
      object Memo7: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795300000000000000
        Top = 472.441250000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          'Experiencias: ')
      end
      object frxDBDataset1experiencias: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 120.944960000000000000
        Top = 472.441250000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'experiencias'
        DataSet = Ds_rel_curriculo
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."experiencias"]')
      end
      object Memo8: TfrxMemoView
        AllowVectorExport = True
        Left = 34.015770000000000000
        Top = 646.299630000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          'Forma'#231#227'o: ')
      end
      object frxDBDataset1formacao: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 113.385900000000000000
        Top = 646.299630000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'formacao'
        DataSet = Ds_rel_curriculo
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."formacao"]')
      end
      object frxDBDataset1telefone: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 139.842610000000000000
        Top = 272.126160000000000000
        Width = 158.740260000000000000
        Height = 18.897650000000000000
        DataField = 'telefone'
        DataSet = Ds_rel_curriculo
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."telefone"]')
      end
    end
  end
  object Ds_rel_curriculo: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = sql_imprimir
    BCDToCurrency = False
    DataSetOptions = []
    Left = 344
    Top = 256
  end
end
