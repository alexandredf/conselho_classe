inherited FRM_CADNUC: TFRM_CADNUC
  Left = 270
  Top = 167
  Caption = 'FRM_CADNUC'
  ClientHeight = 293
  ClientWidth = 726
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 726
    Caption = 'CADASTRO DE N'#218'CLEOS'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 274
    Width = 726
    inherited RzStatusPane2: TRzStatusPane
      Left = 581
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 436
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 204
    Width = 726
    inherited BtBuscar: TRzBitBtn
      OnClick = BtBuscarClick
    end
    inherited BtStatus: TRzBitBtn
      OnClick = BtStatusClick
    end
    inherited BtSair: TRzBitBtn
      Left = 596
      Top = 7
      Width = 118
      Height = 57
    end
  end
  inherited PanDados: TRzPanel
    Width = 726
    Height = 153
    inherited Paginas: TRzPageControl
      Width = 718
      Height = 145
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 19
          Top = 19
          Width = 42
          Height = 13
          Caption = 'C'#211'DIGO'
        end
        object Label2: TLabel
          Left = 19
          Top = 64
          Width = 62
          Height = 13
          Caption = 'DESCRI'#199#195'O'
        end
        object EditDes: TRzDBEdit
          Left = 16
          Top = 80
          Width = 681
          Height = 21
          DataSource = DsNuc
          DataField = 'DESCRICAO_NUC'
          TabOrder = 0
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Left = 21
    Top = 112
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLNuc
    Left = 80
    Top = 8
  end
  object CDSnuc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 136
    Top = 8
    object CDSnucIDNUC: TIntegerField
      FieldName = 'IDNUC'
      Required = True
    end
    object CDSnucDESCRICAO_NUC: TStringField
      FieldName = 'DESCRICAO_NUC'
      Required = True
      Size = 50
    end
    object CDSnucSTATUS_NUC: TStringField
      FieldName = 'STATUS_NUC'
      Required = True
      Size = 1
    end
  end
  object DsNuc: TDataSource
    DataSet = CDSnuc
    Left = 192
    Top = 8
  end
  object SQLNuc: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10' NUCLEOS.IDNUC,'#13#10' NUCLEOS.DESCRICAO_NUC,'#13#10' NUCLEOS.STA' +
      'TUS_NUC'#13#10#13#10' FROM NUCLEOS'#13#10#13#10' WHERE NUCLEOS.IDNUC = :PARNUC'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARNUC'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 21
    Top = 11
    object SQLNucIDNUC: TIntegerField
      FieldName = 'IDNUC'
      Required = True
    end
    object SQLNucDESCRICAO_NUC: TStringField
      FieldName = 'DESCRICAO_NUC'
      Required = True
      Size = 50
    end
    object SQLNucSTATUS_NUC: TStringField
      FieldName = 'STATUS_NUC'
      Required = True
      Size = 1
    end
  end
end
