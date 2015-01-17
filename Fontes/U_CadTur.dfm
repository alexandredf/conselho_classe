inherited FRM_CADTUR: TFRM_CADTUR
  Left = 459
  Top = 142
  Caption = 'FRM_CADTUR'
  ClientHeight = 516
  ClientWidth = 717
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 717
    Caption = 'CADASTRO DE TURMAS'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 497
    Width = 717
    inherited RzStatusPane2: TRzStatusPane
      Left = 572
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 427
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 427
    Width = 717
    inherited BtBuscar: TRzBitBtn
      OnClick = BtBuscarClick
    end
    inherited BtStatus: TRzBitBtn
      OnClick = BtStatusClick
    end
    inherited BtSair: TRzBitBtn
      Left = 596
      Width = 114
    end
  end
  inherited PanDados: TRzPanel
    Width = 717
    Height = 376
    inherited Paginas: TRzPageControl
      Width = 709
      Height = 368
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 20
          Top = 21
          Width = 42
          Height = 13
          Caption = 'C'#211'DIGO'
        end
        object Label3: TLabel
          Left = 20
          Top = 64
          Width = 38
          Height = 13
          Caption = 'CURSO'
        end
        object E: TLabel
          Left = 20
          Top = 112
          Width = 48
          Height = 13
          Caption = 'N'#218'MERO'
        end
        object Label4: TLabel
          Left = 144
          Top = 112
          Width = 39
          Height = 13
          Caption = 'TURNO'
        end
        object Label5: TLabel
          Left = 269
          Top = 112
          Width = 23
          Height = 13
          Caption = 'ANO'
        end
        object RzPanel1: TRzPanel
          Left = 5
          Top = 160
          Width = 697
          Height = 178
          TabOrder = 0
          object Label2: TLabel
            Left = 280
            Top = 8
            Width = 140
            Height = 37
            Caption = 'ALUNOS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -32
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RzDBGrid1: TRzDBGrid
            Left = 11
            Top = 41
            Width = 670
            Height = 128
            Hint = '<F5> Adicionar disciplina'#13'<F6> Editar disciplina'
            DataSource = Dsturalu
            DefaultDrawing = True
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnKeyDown = RzDBGrid1KeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'IDRELTURALU'
                Title.Caption = 'C'#211'DIGO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_ALU'
                Title.Caption = 'ALUNO'
                Width = 430
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_RELTURALU'
                Title.Caption = 'DATA'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUS_RELTURALU'
                Title.Caption = 'STATUS'
                Visible = True
              end>
          end
        end
        object EditCurso: TRzDBButtonEdit
          Left = 20
          Top = 80
          Width = 121
          Height = 21
          DataSource = DStur
          DataField = 'IDCURSO'
          Alignment = taRightJustify
          TabOrder = 1
          AltBtnKind = bkFind
          ButtonKind = bkFolder
          AltBtnVisible = True
          OnAltBtnClick = EditCursoAltBtnClick
          OnButtonClick = EditCursoButtonClick
        end
        object NomeCurso: TRzDBEdit
          Left = 144
          Top = 80
          Width = 409
          Height = 21
          DataSource = DStur
          DataField = 'DESCRICAO_CUR'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 2
        end
        object EditNum: TRzDBEdit
          Left = 20
          Top = 128
          Width = 121
          Height = 21
          DataSource = DStur
          DataField = 'NUM_TUR'
          TabOrder = 3
        end
        object EditTur: TRzDBEdit
          Left = 144
          Top = 128
          Width = 121
          Height = 21
          DataSource = DStur
          DataField = 'TURNO_TUR'
          TabOrder = 4
        end
        object EditAno: TRzDBEdit
          Left = 269
          Top = 128
          Width = 121
          Height = 21
          DataSource = DStur
          DataField = 'ANO_TUR'
          Alignment = taRightJustify
          TabOrder = 5
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Left = 24
    Top = 112
    OnKeyDown = BuscaRapidaKeyDown
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLtur
    Left = 96
    Top = 8
  end
  object CDStur: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 160
    Top = 8
    object CDSturIDTUR: TIntegerField
      FieldName = 'IDTUR'
      Required = True
    end
    object CDSturIDCURSO: TIntegerField
      FieldName = 'IDCURSO'
      Required = True
      OnValidate = CDSturIDCURSOValidate
    end
    object CDSturNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      Required = True
      Size = 10
    end
    object CDSturTURNO_TUR: TStringField
      FieldName = 'TURNO_TUR'
      Size = 1
    end
    object CDSturANO_TUR: TIntegerField
      FieldName = 'ANO_TUR'
      Required = True
    end
    object CDSturSTATUS_TUR: TStringField
      FieldName = 'STATUS_TUR'
      Required = True
      Size = 1
    end
    object CDSturDESCRICAO_CUR: TStringField
      FieldName = 'DESCRICAO_CUR'
      ProviderFlags = []
    end
    object CDSturSQlturalu: TDataSetField
      FieldName = 'SQlturalu'
    end
  end
  object SQLtur: TSQLDataSet
    CommandText = 
      'SELECT '#13#10#13#10' TURMAS.IDTUR,'#13#10' TURMAS.IDCURSO,'#13#10' TURMAS.NUM_TUR,'#13#10' ' +
      'TURMAS.TURNO_TUR,'#13#10' TURMAS.ANO_TUR,'#13#10' TURMAS.STATUS_TUR,'#13#10#13#10' CUR' +
      'SOS.DESCRICAO_CUR'#13#10#13#10'FROM TURMAS'#13#10#13#10'LEFT OUTER JOIN CURSOS ON (C' +
      'URSOS.IDCURSO=TURMAS.IDCURSO)'#13#10#13#10'WHERE TURMAS.IDTUR= :PARTUR'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 24
    Top = 8
    object SQLturIDTUR: TIntegerField
      FieldName = 'IDTUR'
      Required = True
    end
    object SQLturIDCURSO: TIntegerField
      FieldName = 'IDCURSO'
      Required = True
    end
    object SQLturNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      Required = True
      Size = 10
    end
    object SQLturTURNO_TUR: TStringField
      FieldName = 'TURNO_TUR'
      Size = 1
    end
    object SQLturANO_TUR: TIntegerField
      FieldName = 'ANO_TUR'
      Required = True
    end
    object SQLturSTATUS_TUR: TStringField
      FieldName = 'STATUS_TUR'
      Required = True
      Size = 1
    end
    object SQLturDESCRICAO_CUR: TStringField
      FieldName = 'DESCRICAO_CUR'
      ProviderFlags = []
    end
  end
  object DSliga: TDataSource
    DataSet = SQLtur
    Left = 328
    Top = 8
  end
  object DStur: TDataSource
    DataSet = CDStur
    Left = 160
    Top = 64
  end
  object SQlturalu: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10' RELTURALU.IDRELTURALU,'#13#10' RELTURALU.IDALU,'#13#10' RELTURALU' +
      '.IDTUR,'#13#10' RELTURALU.DATA_RELTURALU,'#13#10' RELTURALU.HORA_RELTURALU,'#13 +
      #10' RELTURALU.OBS_RELTURALU,'#13#10' RELTURALU.STATUS_RELTURALU,'#13#10#13#10' ALU' +
      'NOS.NOME_ALU,'#13#10' ALUNOS.STATUS_ALU'#13#10#13#10'FROM RELTURALU'#13#10#13#10'LEFT OUTE' +
      'R JOIN ALUNOS ON (ALUNOS.IDALU=RELTURALU.IDALU)'#13#10#13#10'WHERE RELTURA' +
      'LU.IDTUR= :IDTUR'
    DataSource = DSliga
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDTUR'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DM.Conexao
    Left = 488
    Top = 8
    object SQlturaluIDRELTURALU: TIntegerField
      FieldName = 'IDRELTURALU'
      Required = True
    end
    object SQlturaluIDALU: TIntegerField
      FieldName = 'IDALU'
      Required = True
    end
    object SQlturaluIDTUR: TIntegerField
      FieldName = 'IDTUR'
      Required = True
    end
    object SQlturaluDATA_RELTURALU: TDateField
      FieldName = 'DATA_RELTURALU'
    end
    object SQlturaluHORA_RELTURALU: TTimeField
      FieldName = 'HORA_RELTURALU'
    end
    object SQlturaluOBS_RELTURALU: TStringField
      FieldName = 'OBS_RELTURALU'
      Size = 200
    end
    object SQlturaluSTATUS_RELTURALU: TStringField
      FieldName = 'STATUS_RELTURALU'
      Required = True
      Size = 1
    end
    object SQlturaluNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      ProviderFlags = []
      Size = 50
    end
    object SQlturaluSTATUS_ALU: TStringField
      FieldName = 'STATUS_ALU'
      ProviderFlags = []
      Size = 1
    end
  end
  object CDSturalu: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = CDSturSQlturalu
    Params = <>
    Left = 560
    Top = 8
    object CDSturaluIDRELTURALU: TIntegerField
      FieldName = 'IDRELTURALU'
      Required = True
    end
    object CDSturaluIDTUR: TIntegerField
      FieldName = 'IDTUR'
      Required = True
    end
    object CDSturaluIDALU: TIntegerField
      FieldName = 'IDALU'
      Required = True
      OnValidate = CDSturaluIDALUValidate
    end
    object CDSturaluDATA_RELTURALU: TDateField
      FieldName = 'DATA_RELTURALU'
    end
    object CDSturaluHORA_RELTURALU: TTimeField
      FieldName = 'HORA_RELTURALU'
    end
    object CDSturaluOBS_RELTURALU: TStringField
      FieldName = 'OBS_RELTURALU'
      Size = 200
    end
    object CDSturaluSTATUS_RELTURALU: TStringField
      FieldName = 'STATUS_RELTURALU'
      Required = True
      Size = 1
    end
    object CDSturaluNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      ProviderFlags = []
      Size = 50
    end
    object CDSturaluSTATUS_ALU: TStringField
      FieldName = 'STATUS_ALU'
      ProviderFlags = []
      Size = 1
    end
  end
  object Dsturalu: TDataSource
    DataSet = CDSturalu
    Left = 624
    Top = 8
  end
end
