inherited FRM_CADALUOCO: TFRM_CADALUOCO
  Left = 471
  Top = 115
  Caption = 'FRM_CADALUOCO'
  ClientHeight = 469
  ClientWidth = 748
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 748
    Height = 89
    Caption = 'CADASTRO DE ALUNOS NAS OCORR'#202'NCIAS'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 450
    Width = 748
    inherited RzStatusPane2: TRzStatusPane
      Left = 603
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 458
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 380
    Width = 748
    inherited BtSair: TRzBitBtn
      Left = 597
      Top = 6
      Width = 143
      Height = 58
    end
  end
  inherited PanDados: TRzPanel
    Top = 89
    Width = 748
    Height = 291
    inherited Paginas: TRzPageControl
      Width = 740
      Height = 283
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 14
          Top = 14
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 12
          Top = 64
          Width = 89
          Height = 13
          Caption = 'Tipo da ocorr'#234'ncia'
        end
        object Label5: TLabel
          Left = 12
          Top = 168
          Width = 77
          Height = 13
          Caption = 'Vers'#227'o do aluno'
        end
        object Label6: TLabel
          Left = 12
          Top = 216
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object Label7: TLabel
          Left = 12
          Top = 112
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label8: TLabel
          Left = 108
          Top = 112
          Width = 23
          Height = 13
          Caption = 'Hora'
        end
        object Label9: TLabel
          Left = 204
          Top = 112
          Width = 23
          Height = 13
          Caption = 'Grau'
        end
        object RzDBEdit1: TRzDBEdit
          Left = 10
          Top = 80
          Width = 343
          Height = 21
          DataSource = FRM_CADOCO.DSoco
          DataField = 'TIPO_OCOR'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 0
        end
        object RzPanel1: TRzPanel
          Left = 359
          Top = 8
          Width = 377
          Height = 169
          Color = 10992524
          TabOrder = 1
          VisualStyle = vsClassic
          object Label3: TLabel
            Left = 19
            Top = 10
            Width = 74
            Height = 13
            Caption = 'Busca de aluno'
          end
          object Label4: TLabel
            Left = 19
            Top = 66
            Width = 72
            Height = 13
            Caption = 'Nome do aluno'
          end
          object EditAlu: TRzDBButtonEdit
            Left = 16
            Top = 24
            Width = 121
            Height = 21
            DataSource = FRM_CADOCO.DSaluoco
            DataField = 'IDALU'
            TabOrder = 0
            AltBtnKind = bkFind
            AltBtnVisible = True
            ButtonVisible = False
            OnAltBtnClick = EditAluAltBtnClick
          end
          object DBImage1: TDBImage
            Left = 232
            Top = 8
            Width = 137
            Height = 153
            DataField = 'FOTO_ALU'
            DataSource = FRM_CADOCO.DSaluoco
            TabOrder = 1
          end
          object EditNome: TRzDBEdit
            Left = 16
            Top = 80
            Width = 201
            Height = 21
            DataSource = FRM_CADOCO.DSaluoco
            DataField = 'NOME_ALU'
            DisabledColor = clSilver
            Enabled = False
            TabOrder = 2
          end
        end
        object EditV: TRzDBEdit
          Left = 10
          Top = 184
          Width = 711
          Height = 21
          DataSource = FRM_CADOCO.DSaluoco
          DataField = 'VERSAO_ALUOCO'
          DisabledColor = clSilver
          TabOrder = 2
        end
        object EditObs: TRzDBEdit
          Left = 10
          Top = 232
          Width = 711
          Height = 21
          DataSource = FRM_CADOCO.DSaluoco
          DataField = 'OBS_ALUOCO'
          DisabledColor = clSilver
          TabOrder = 3
        end
        object RzDBEdit4: TRzDBEdit
          Left = 10
          Top = 128
          Width = 87
          Height = 21
          DataSource = FRM_CADOCO.DSoco
          DataField = 'DT_OCOR'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 4
        end
        object RzDBEdit5: TRzDBEdit
          Left = 106
          Top = 128
          Width = 87
          Height = 21
          DataSource = FRM_CADOCO.DSoco
          DataField = 'DT_OCOR'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 5
        end
        object RzDBEdit6: TRzDBEdit
          Left = 202
          Top = 128
          Width = 87
          Height = 21
          DataSource = FRM_CADOCO.DSoco
          DataField = 'GRAU_OCOR'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 6
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Top = 144
  end
end
