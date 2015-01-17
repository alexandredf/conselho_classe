inherited FRM_BUSAUTO: TFRM_BUSAUTO
  Left = 332
  Caption = 'FRM_BUSAUTO'
  ClientWidth = 799
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlDados: TPanel
    Width = 799
    inherited RzBackground1: TRzBackground
      Width = 795
    end
    inherited GridDados: TRzDBGrid
      Width = 795
      DataSource = DataSource1
      OnDblClick = GridDadosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'IDAUTORIZA'
          Title.Caption = 'C'#211'DIGO'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_ALU'
          Title.Caption = 'ALUNO'
          Width = 233
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_FUNC'
          Title.Caption = 'FUNCION'#193'RIO'
          Width = 189
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_TUR'
          Title.Caption = 'TURMA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_AUTORIZA'
          Title.Caption = 'TIPO'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HR_AUTORIZA'
          Title.Caption = 'HORA'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_AUTORIZA'
          Title.Caption = 'DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS_AUTORIZA'
          Title.Caption = 'STATUS'
          Visible = True
        end>
    end
  end
  inherited Status: TStatusBar
    Width = 799
  end
  inherited PNLTITULO: TRzPanel
    Width = 799
    Caption = 'BUSCA DE AUTORIZA'#199#213'ES'
  end
  inherited PNLFILTRO: TRzPanel
    Width = 799
    inherited GrupoFiltro: TRzCheckGroup
      Columns = 1
      Items.Strings = (
        'C'#243'digo'
        'Aluno'
        'Funcion'#225'rio'
        'Tipo')
      OnChange = GrupoFiltroChange
      CheckStates = (
        1
        0
        0
        0)
    end
    inherited GrupoSituacao: TRzRadioGroup
      ItemIndex = 0
      Items.Strings = (
        'Ativos'
        'Cancelados'
        'Todos')
    end
    inherited GrupoOrdem: TRzRadioGroup
      ItemIndex = 0
      Items.Strings = (
        'C'#243'digo'
        'Aluno'
        'Funcion'#225'rio'
        'Tipo')
    end
    inherited BtBuscar: TRzBitBtn
      Height = 30
      OnClick = bTbUSCARClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000330B0000330B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8ACDEE3E8E8
        E8E8E8E8E8E8E8E8E8E8E8ACDEE3E8E8E8E8E8E8E8E8E8E8E8E8AC807A81E3E8
        E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8E8CEA37A81E3
        E8E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A81
        E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A
        81E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA3
        7AACAD82828288E3E8E8E8E8E8E3ACE281ACE3818181E2E3E8E8E8E8E8E8D0CE
        E28288E6B3E6E682EBE8E8E8E8E8E3ACE281E2ACACACAC81E3E8E8E8E8E8E8E3
        8289B3B3B3D7D7D782E3E8E8E8E8E8E381E3ACACACE3E3E381E3E8E8E8E8E8AD
        88B3E6B3B3D7D7D7E688E8E8E8E8E8E3E2ACACACACE3E3E3ACE2E8E8E8E8E888
        89E6E6B3B3B3D7D7E682E8E8E8E8E8E2E3ACACACACACE3E3AC81E8E8E8E8E882
        E6E6E6E6B3B3B3B3B382E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E888
        E6B3E6E6E6B3B3B3E682E8E8E8E8E8E2ACACACACACACACACAC81E8E8E8E8E8AD
        88D7D7E6E6E6E6B38888E8E8E8E8E8E3E2E3E3ACACACACACE2E2E8E8E8E8E8E3
        82EBD7B3E6E6E68982E3E8E8E8E8E8E381E3E3ACACACACE381E3E8E8E8E8E8E8
        AD82ADE6E6E68882ADE8E8E8E8E8E8E8E381E3ACACACE281E3E8E8E8E8E8E8E8
        E8E38882828282E3E8E8E8E8E8E8E8E8E8E3E281818181E3E8E8}
      NumGlyphs = 2
    end
    inherited BTsair: TRzBitBtn
      Top = 83
      Height = 30
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730B0000730B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        EEE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8EEE8E8E8E8E8E8E8E8E8E8E8E8EEE3AC
        E3EEE8E8E8E8E8E8E8E8E8E8E8EEE8ACE3EEE8E8E8E8E8E8E8E8E8EEE3E28257
        57E2ACE3EEE8E8E8E8E8E8EEE8E2818181E2ACE8EEE8E8E8E8E8E382578282D7
        578181E2E3E8E8E8E8E8E881818181D7818181E2E8E8E8E8E8E857828989ADD7
        57797979EEE8E8E8E8E88181DEDEACD781818181EEE8E8E8E8E857898989ADD7
        57AAAAA2D7ADE8E8E8E881DEDEDEACD781DEDE81D7ACE8E8E8E857898989ADD7
        57AACEA3AD10E8E8E8E881DEDEDEACD781DEAC81AC81E8E8E8E85789825EADD7
        57ABCFE21110E8E8E8E881DE8181ACD781ACACE28181E8E8E8E8578957D7ADD7
        57ABDE101010101010E881DE56D7ACD781ACDE818181818181E857898257ADD7
        57E810101010101010E881DE8156ACD781E381818181818181E857898989ADD7
        57E882101010101010E881DEDEDEACD781E381818181818181E857898989ADD7
        57ACEE821110E8E8E8E881DEDEDEACD781ACEE818181E8E8E8E857898989ADD7
        57ABE8AB8910E8E8E8E881DEDEDEACD781ACE3ACDE81E8E8E8E857828989ADD7
        57ACE8A3E889E8E8E8E88181DEDEACD781ACE381E8DEE8E8E8E8E8DE5E8288D7
        57A2A2A2E8E8E8E8E8E8E8DE8181DED781818181E8E8E8E8E8E8E8E8E8AC8257
        57E8E8E8E8E8E8E8E8E8E8E8E8AC818181E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object CODINI: TLabeledEdit
      Left = 71
      Top = 125
      Width = 35
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'd. Inicial'
      Enabled = False
      LabelPosition = lpLeft
      TabOrder = 5
    end
    object CODFIM: TLabeledEdit
      Left = 159
      Top = 125
      Width = 35
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 47
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'd. Final'
      Enabled = False
      LabelPosition = lpLeft
      TabOrder = 6
    end
    object ALU: TLabeledEdit
      Left = 71
      Top = 149
      Width = 314
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = 'Aluno '
      Enabled = False
      LabelPosition = lpLeft
      TabOrder = 7
    end
    object TIPO: TLabeledEdit
      Left = 452
      Top = 149
      Width = 95
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 21
      EditLabel.Height = 13
      EditLabel.Caption = 'Tipo'
      Enabled = False
      LabelPosition = lpLeft
      TabOrder = 8
    end
    object FUNC: TLabeledEdit
      Left = 452
      Top = 125
      Width = 330
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 58
      EditLabel.Height = 13
      EditLabel.Caption = 'Funcion'#225'rio '
      Enabled = False
      LabelPosition = lpLeft
      TabOrder = 9
    end
    object bTiMPRIMIR: TRzBitBtn
      Left = 586
      Top = 48
      Width = 199
      Height = 30
      FrameColor = 7617536
      Caption = '&Imprimir'
      Color = 15791348
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 10
      OnClick = bTiMPRIMIRClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730E0000730E00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
        09090909090909E8E8E8E8E88181818181818181818181E8E8E8E85E89898989
        89898989895E5E09E8E8E8E2ACACACACACACACACACE2E281E8E85E5E5E5E5E5E
        5E5E5E5E5E5E095E09E8E2E2E2E2E2E2E2E2E2E2E2E281E281E85ED789898989
        8989898989895E0909E8E2E8ACACACACACACACACACACE28181E85ED789898989
        181289B490895E5E09E8E2E8ACACACACE281ACE281ACE2E281E85ED7D7D7D7D7
        D7D7D7D7D7D75E5E5E09E2E8E8E8E8E8E8E8E8E8E8E8E2E2E2815ED789898989
        8989898989895E5E5E09E2E8ACACACACACACACACACACE2E2E281E85E5E5E5E5E
        5E5E5E5E5E89895E5E09E8E2E2E2E2E2E2E2E2E2E2ACACE2E281E8E85ED7D7D7
        D7D7D7D7D75E89895E09E8E8E2E8E8E8E8E8E8E8E8E2ACACE281E8E8E85ED7E3
        E3E3E3E3D75E5E5E09E8E8E8E8E2E8ACACACACACE8E2E2E281E8E8E8E85ED7D7
        D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85ED7
        E3E3E3E3E3D75EE8E8E8E8E8E8E8E2E8ACACACACACE8E2E8E8E8E8E8E8E85ED7
        D7D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85E
        5E5E5E5E5E5E5E5EE8E8E8E8E8E8E8E2E2E2E2E2E2E2E2E2E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
  end
  object SQLbusauto: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10' AUTORIZACOES.IDAUTORIZA,'#13#10' AUTORIZACOES.IDFUNC,'#13#10' AUT' +
      'ORIZACOES.IDRELTURALU,'#13#10' AUTORIZACOES.DESCRI_AUTORIZA,'#13#10' AUTORIZ' +
      'ACOES.DT_AUTORIZA,'#13#10' AUTORIZACOES.HR_AUTORIZA,'#13#10' AUTORIZACOES.TI' +
      'PO_AUTORIZA,'#13#10' AUTORIZACOES.OBS_AUTORIZA,'#13#10' AUTORIZACOES.STATUS_' +
      'AUTORIZA,'#13#10#13#10#13#10' ALUNOS.NOME_ALU,'#13#10' FUNCIONARIO.NOME_FUNC,'#13#10' ALUN' +
      'OS.FOTO_ALU,'#13#10' ALUNOS.IDALU,'#13#10' TURMAS.IDTUR,'#13#10' TURMAS.NUM_TUR'#13#10#13 +
      #10#13#10#13#10' FROM AUTORIZACOES'#13#10#13#10' LEFT OUTER JOIN RELTURALU    ON   ( ' +
      'RELTURALU.IDRELTURALU  =AUTORIZACOES.IDRELTURALU )'#13#10' LEFT OUTER ' +
      'JOIN FUNCIONARIO ON   ( FUNCIONARIO.IDFUNC           = AUTORIZAC' +
      'OES.IDFUNC )'#13#10' LEFT OUTER JOIN ALUNOS           ON   ( ALUNOS.ID' +
      'ALU                        =RELTURALU.IDALU )'#13#10' LEFT OUTER JOIN ' +
      'TURMAS          ON   ( TURMAS.IDTUR                       = RELT' +
      'URALU.IDTUR )'#13#10#13#10'  '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.Conexao
    Left = 24
    Top = 8
    object SQLbusautoIDAUTORIZA: TIntegerField
      FieldName = 'IDAUTORIZA'
      Required = True
    end
    object SQLbusautoIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
    end
    object SQLbusautoIDRELTURALU: TIntegerField
      FieldName = 'IDRELTURALU'
    end
    object SQLbusautoDESCRI_AUTORIZA: TStringField
      FieldName = 'DESCRI_AUTORIZA'
      Size = 500
    end
    object SQLbusautoDT_AUTORIZA: TDateField
      FieldName = 'DT_AUTORIZA'
    end
    object SQLbusautoHR_AUTORIZA: TDateField
      FieldName = 'HR_AUTORIZA'
    end
    object SQLbusautoTIPO_AUTORIZA: TStringField
      FieldName = 'TIPO_AUTORIZA'
      Size = 1
    end
    object SQLbusautoOBS_AUTORIZA: TStringField
      FieldName = 'OBS_AUTORIZA'
      Size = 100
    end
    object SQLbusautoSTATUS_AUTORIZA: TStringField
      FieldName = 'STATUS_AUTORIZA'
      Size = 1
    end
    object SQLbusautoNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      ProviderFlags = []
      Size = 50
    end
    object SQLbusautoNOME_FUNC: TStringField
      FieldName = 'NOME_FUNC'
      ProviderFlags = []
      Size = 50
    end
    object SQLbusautoFOTO_ALU: TBlobField
      FieldName = 'FOTO_ALU'
      ProviderFlags = []
      Size = 1
    end
    object SQLbusautoIDALU: TIntegerField
      FieldName = 'IDALU'
      ProviderFlags = []
    end
    object SQLbusautoIDTUR: TIntegerField
      FieldName = 'IDTUR'
      ProviderFlags = []
    end
    object SQLbusautoNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      ProviderFlags = []
      Size = 10
    end
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLbusauto
    Left = 88
    Top = 8
  end
  object CDSbusauto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 160
    Top = 16
    object CDSbusautoIDAUTORIZA: TIntegerField
      FieldName = 'IDAUTORIZA'
      Required = True
    end
    object CDSbusautoIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
    end
    object CDSbusautoIDRELTURALU: TIntegerField
      FieldName = 'IDRELTURALU'
    end
    object CDSbusautoDESCRI_AUTORIZA: TStringField
      FieldName = 'DESCRI_AUTORIZA'
      Size = 500
    end
    object CDSbusautoDT_AUTORIZA: TDateField
      FieldName = 'DT_AUTORIZA'
    end
    object CDSbusautoHR_AUTORIZA: TDateField
      FieldName = 'HR_AUTORIZA'
    end
    object CDSbusautoTIPO_AUTORIZA: TStringField
      FieldName = 'TIPO_AUTORIZA'
      Size = 1
    end
    object CDSbusautoOBS_AUTORIZA: TStringField
      FieldName = 'OBS_AUTORIZA'
      Size = 100
    end
    object CDSbusautoSTATUS_AUTORIZA: TStringField
      FieldName = 'STATUS_AUTORIZA'
      Size = 1
    end
    object CDSbusautoNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      ProviderFlags = []
      Size = 50
    end
    object CDSbusautoNOME_FUNC: TStringField
      FieldName = 'NOME_FUNC'
      ProviderFlags = []
      Size = 50
    end
    object CDSbusautoFOTO_ALU: TBlobField
      FieldName = 'FOTO_ALU'
      ProviderFlags = []
      Size = 1
    end
    object CDSbusautoIDALU: TIntegerField
      FieldName = 'IDALU'
      ProviderFlags = []
    end
    object CDSbusautoIDTUR: TIntegerField
      FieldName = 'IDTUR'
      ProviderFlags = []
    end
    object CDSbusautoNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      ProviderFlags = []
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = CDSbusauto
    Left = 248
    Top = 16
  end
  object RaveProj: TRvProject
    Engine = RvSystem1
    Left = 208
    Top = 319
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 248
    Top = 319
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CDSbusauto
    Left = 288
    Top = 319
  end
end
