inherited FRM_CADCUR: TFRM_CADCUR
  Left = 329
  Top = 142
  Caption = 'Cadastro de Cursos'
  ClientHeight = 562
  ClientWidth = 724
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 724
    Caption = 'CURSOS'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 543
    Width = 724
    inherited RzStatusPane2: TRzStatusPane
      Left = 579
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 434
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 473
    Width = 724
    inherited BtBuscar: TRzBitBtn
      OnClick = BtBuscarClick
    end
    inherited BtStatus: TRzBitBtn
      OnClick = BtStatusClick
    end
    inherited BtSair: TRzBitBtn
      Left = 600
      Top = 7
      Width = 115
      Height = 57
    end
  end
  inherited PanDados: TRzPanel
    Width = 724
    Height = 422
    inherited Paginas: TRzPageControl
      Width = 716
      Height = 414
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 18
          Top = 20
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 16
          Top = 64
          Width = 34
          Height = 13
          Caption = 'N'#250'cleo'
        end
        object Label3: TLabel
          Left = 16
          Top = 112
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label4: TLabel
          Left = 624
          Top = 112
          Width = 23
          Height = 13
          Caption = 'Sigla'
        end
        object Label5: TLabel
          Left = 16
          Top = 346
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object NOMENUCLEO: TRzDBEdit
          Left = 144
          Top = 80
          Width = 553
          Height = 21
          DataSource = DScursos
          DataField = 'NOMENUC'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 0
        end
        object EditNuc: TRzDBButtonEdit
          Left = 16
          Top = 80
          Width = 121
          Height = 21
          DataSource = DScursos
          DataField = 'IDNUC'
          TabOrder = 1
          AltBtnKind = bkFind
          ButtonKind = bkFolder
          AltBtnVisible = True
          OnAltBtnClick = EditNucAltBtnClick
          OnButtonClick = EditNucButtonClick
        end
        object EditDesc: TRzDBEdit
          Left = 16
          Top = 128
          Width = 601
          Height = 21
          DataSource = DScursos
          DataField = 'DESCRICAO_CUR'
          TabOrder = 2
        end
        object EditSigla: TRzDBEdit
          Left = 624
          Top = 128
          Width = 73
          Height = 21
          DataSource = DScursos
          DataField = 'SIGLA_CUR'
          TabOrder = 3
        end
        object EditObs: TRzDBEdit
          Left = 16
          Top = 362
          Width = 679
          Height = 21
          DataSource = DSdiscur
          DataField = 'OBS_DISCUR'
          DisabledColor = clSilver
          Enabled = False
          FrameColor = clBackground
          TabOrder = 5
        end
        object Panel1: TPanel
          Left = 16
          Top = 160
          Width = 681
          Height = 177
          BorderStyle = bsSingle
          Caption = 'Panel1'
          TabOrder = 4
          object Label6: TLabel
            Left = 240
            Top = 4
            Width = 209
            Height = 37
            Caption = 'DISCIPLINAS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -31
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RzDBGrid1: TRzDBGrid
            Left = 3
            Top = 41
            Width = 670
            Height = 128
            Hint = '<F5> Adicionar disciplina'#13'<F6> Editar disciplina'
            DataSource = DSdiscur
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
                FieldName = 'IDDISCUR'
                Title.Caption = 'C'#211'DIGO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCR_DISC'
                Title.Caption = 'DISCIPLINA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOFASE_DISCUR'
                Title.Caption = 'ANO/FASE'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMAULAS_DISCUR'
                Title.Caption = 'N'#176' AULAS'
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPOSEMANU_DISCUR'
                Title.Caption = 'TIPO GRADE'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUS_DISCUR'
                Title.Caption = 'STATUS'
                Width = 50
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Left = 21
    Top = 112
    OnKeyDown = BuscaRapidaKeyDown
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLcursos
    Left = 80
    Top = 8
  end
  object CDScursos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 144
    Top = 8
    object CDScursosIDCURSO: TIntegerField
      FieldName = 'IDCURSO'
      Required = True
    end
    object CDScursosIDNUC: TIntegerField
      FieldName = 'IDNUC'
      Required = True
      OnValidate = CDScursosIDNUCValidate
    end
    object CDScursosDESCRICAO_CUR: TStringField
      FieldName = 'DESCRICAO_CUR'
      Required = True
    end
    object CDScursosSIGLA_CUR: TStringField
      FieldName = 'SIGLA_CUR'
      Required = True
      Size = 3
    end
    object CDScursosSTATUS_CUR: TStringField
      FieldName = 'STATUS_CUR'
      Required = True
      Size = 1
    end
    object CDScursosNOMENUC: TStringField
      FieldName = 'NOMENUC'
      ProviderFlags = []
      Size = 50
    end
    object CDScursosSQLdiscur: TDataSetField
      FieldName = 'SQLdiscur'
    end
  end
  object DScursos: TDataSource
    DataSet = CDScursos
    Left = 144
    Top = 64
  end
  object SQLcursos: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10' CURSOS.IDCURSO,'#13#10' CURSOS.IDNUC,'#13#10' CURSOS.DESCRICAO_CU' +
      'R,'#13#10' CURSOS.SIGLA_CUR,'#13#10' CURSOS.STATUS_CUR,'#13#10#13#10' '#13#10' NUCLEOS.DESCR' +
      'ICAO_NUC AS NOMENUC'#13#10#13#10'from CURSOS'#13#10#13#10'LEFT OUTER JOIN NUCLEOS ON' +
      ' (NUCLEOS.IDNUC=CURSOS.IDNUC)'#13#10#13#10#13#10'WHERE CURSOS.IDCURSO = :PARCU' +
      'R'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARCUR'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 24
    Top = 8
    object SQLcursosIDCURSO: TIntegerField
      FieldName = 'IDCURSO'
      Required = True
    end
    object SQLcursosIDNUC: TIntegerField
      FieldName = 'IDNUC'
      Required = True
    end
    object SQLcursosDESCRICAO_CUR: TStringField
      FieldName = 'DESCRICAO_CUR'
      Required = True
    end
    object SQLcursosSIGLA_CUR: TStringField
      FieldName = 'SIGLA_CUR'
      Required = True
      Size = 3
    end
    object SQLcursosSTATUS_CUR: TStringField
      FieldName = 'STATUS_CUR'
      Required = True
      Size = 1
    end
    object SQLcursosNOMENUC: TStringField
      FieldName = 'NOMENUC'
      ProviderFlags = []
      Size = 50
    end
  end
  object DSliga: TDataSource
    DataSet = SQLcursos
    Left = 376
    Top = 8
  end
  object SQLdiscur: TSQLDataSet
    CommandText = 
      'SELECT '#13#10#13#10' DISCURSO.IDDISCUR,'#13#10' DISCURSO.IDCURSO,'#13#10' DISCURSO.ID' +
      'DISC,'#13#10' DISCURSO.ANOFASE_DISCUR,'#13#10' DISCURSO.NUMAULAS_DISCUR,'#13#10' D' +
      'ISCURSO.TIPOSEMANU_DISCUR,'#13#10' DISCURSO.OBS_DISCUR,'#13#10' DISCURSO.STA' +
      'TUS_DISCUR,'#13#10#13#10' DISCIPLINAS.DESCR_DISC'#13#10#13#10#13#10' FROM DISCURSO'#13#10#13#10#13#10 +
      ' LEFT OUTER JOIN DISCIPLINAS ON (DISCIPLINAS.IDDISC=DISCURSO.IDD' +
      'ISC)'#13#10#13#10#13#10' WHERE DISCURSO.IDCURSO= :IDCURSO'#13#10
    DataSource = DSliga
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDCURSO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DM.Conexao
    Left = 576
    Top = 8
    object SQLdiscurIDDISCUR: TIntegerField
      FieldName = 'IDDISCUR'
      Required = True
    end
    object SQLdiscurIDCURSO: TIntegerField
      FieldName = 'IDCURSO'
      Required = True
    end
    object SQLdiscurIDDISC: TIntegerField
      FieldName = 'IDDISC'
      Required = True
    end
    object SQLdiscurANOFASE_DISCUR: TIntegerField
      FieldName = 'ANOFASE_DISCUR'
    end
    object SQLdiscurNUMAULAS_DISCUR: TIntegerField
      FieldName = 'NUMAULAS_DISCUR'
    end
    object SQLdiscurTIPOSEMANU_DISCUR: TStringField
      FieldName = 'TIPOSEMANU_DISCUR'
      Size = 1
    end
    object SQLdiscurOBS_DISCUR: TStringField
      FieldName = 'OBS_DISCUR'
      Size = 35
    end
    object SQLdiscurSTATUS_DISCUR: TStringField
      FieldName = 'STATUS_DISCUR'
      Required = True
      Size = 1
    end
    object SQLdiscurDESCR_DISC: TStringField
      FieldName = 'DESCR_DISC'
      ProviderFlags = []
      Size = 50
    end
  end
  object CDSdiscur: TClientDataSet
    Aggregates = <>
    DataSetField = CDScursosSQLdiscur
    Params = <>
    Left = 648
    Top = 8
    object CDSdiscurIDDISCUR: TIntegerField
      FieldName = 'IDDISCUR'
      Required = True
    end
    object CDSdiscurIDCURSO: TIntegerField
      FieldName = 'IDCURSO'
      Required = True
    end
    object CDSdiscurIDDISC: TIntegerField
      FieldName = 'IDDISC'
      Required = True
      OnValidate = CDSdiscurIDDISCValidate
    end
    object CDSdiscurANOFASE_DISCUR: TIntegerField
      FieldName = 'ANOFASE_DISCUR'
    end
    object CDSdiscurNUMAULAS_DISCUR: TIntegerField
      FieldName = 'NUMAULAS_DISCUR'
    end
    object CDSdiscurTIPOSEMANU_DISCUR: TStringField
      FieldName = 'TIPOSEMANU_DISCUR'
      Size = 1
    end
    object CDSdiscurOBS_DISCUR: TStringField
      FieldName = 'OBS_DISCUR'
      Size = 35
    end
    object CDSdiscurSTATUS_DISCUR: TStringField
      FieldName = 'STATUS_DISCUR'
      Required = True
      Size = 1
    end
    object CDSdiscurDESCR_DISC: TStringField
      FieldName = 'DESCR_DISC'
      ProviderFlags = []
      Size = 50
    end
  end
  object DSdiscur: TDataSource
    DataSet = CDSdiscur
    Left = 648
    Top = 64
  end
end
