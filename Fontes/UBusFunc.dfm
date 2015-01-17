inherited Frm_BusFunc: TFrm_BusFunc
  Left = 315
  Top = 204
  Caption = 'Frm_BusFunc'
  ClientHeight = 393
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlDados: TPanel
    Top = 265
    Height = 109
    inherited RzBackground1: TRzBackground
      Height = 105
    end
    inherited GridDados: TRzDBGrid
      Height = 105
      DataSource = DSbusFunc
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OnDblClick = GridDadosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'IDFUNC'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_FUNC'
          Title.Caption = 'Nome'
          Width = 229
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CID'
          Title.Caption = 'Cidade'
          Width = 172
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS_FUNC'
          Title.Caption = 'Status'
          Visible = True
        end>
    end
  end
  inherited Status: TStatusBar
    Top = 374
  end
  inherited PNLTITULO: TRzPanel
    Caption = 'Funcion'#225'rios'
  end
  inherited PNLFILTRO: TRzPanel
    Height = 208
    inherited Bevel1: TBevel
      Top = 128
      Height = 73
    end
    inherited GrupoFiltro: TRzCheckGroup
      Height = 113
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'CPF'
        'Cidade')
      OnChange = GrupoFiltroChange
      CheckStates = (
        0
        0
        0
        0)
    end
    inherited GrupoSituacao: TRzRadioGroup
      Height = 113
      ItemIndex = 0
      Items.Strings = (
        'Ativos'
        'Desativos'
        'Todos')
    end
    inherited GrupoOrdem: TRzRadioGroup
      Height = 113
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'CPF'
        'Cidade')
    end
    inherited BtBuscar: TRzBitBtn
      Top = 12
      OnClick = bTbUSCARClick
    end
    inherited BTsair: TRzBitBtn
      Top = 68
    end
    object CODINI: TLabeledEdit
      Left = 88
      Top = 136
      Width = 49
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
      Left = 264
      Top = 136
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 47
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'd. Final'
      Enabled = False
      LabelPosition = lpLeft
      TabOrder = 6
    end
    object NOME: TLabeledEdit
      Left = 88
      Top = 168
      Width = 225
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      Enabled = False
      LabelPosition = lpLeft
      TabOrder = 7
    end
    object CPF: TLabeledEdit
      Left = 374
      Top = 136
      Width = 193
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 20
      EditLabel.Height = 13
      EditLabel.Caption = 'CPF'
      Enabled = False
      LabelPosition = lpLeft
      TabOrder = 8
    end
    object CIDADE: TLabeledEdit
      Left = 374
      Top = 168
      Width = 193
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Cidade'
      Enabled = False
      LabelPosition = lpLeft
      TabOrder = 9
    end
    object btnImprimir: TRzBitBtn
      Left = 586
      Top = 138
      Width = 199
      Height = 55
      Hint = 'Novo Cadastro'
      FrameColor = 7617536
      Caption = '&Imprimir'
      Color = 15791348
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      ParentShowHint = False
      TextShadowColor = clAqua
      ShowHint = True
      TabOrder = 10
      TextStyle = tsShadow
      OnClick = btnImprimirClick
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFAFAFAFAFAFAF9F9F9F9F9
        F9F8F8F8F8F8F8F7F7F7F7F7F7F6F6F6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF9F9F9F2F2F2EFEFEFD6D6D6C3C3C3C2C2C2B5B5B5B3B3B3B0B0B0AFAFAF
        B4B4B4B8B8B8C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7
        C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7D3D3D3DDDDDDE4E4E4FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F7F7F6F6F6F5F5F5F3F3
        F3F0C6A3F0C6A3F0C6A3F0C6A3F0C6A3F0C6A3F0C6A3F0C6A3F0C6A3F0C6A3F0
        C6A4F0C7A4F0C7A4F0C7A5F0C7A5F0C7A5F0C7A5F0C8A6F0C8A6F0C8A6F0C8A7
        F0C8A7F0C8A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C5A0FDDAB6FDDAB6FDDAB6FDDAB6
        FDDAB6FDDAB6FDDBB7FDDBB8FDDBB9FDDCBAFDDCBBFDDDBCFDDDBDFDDDBDFDDE
        BEFDDFBFFDDFC0FDE0C2FDE0C3FDE1C3FDE1C4F1CAA9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F1F1F1
        EFEFEFEDEDEDEBEBEBEAEAEAE8E8E8E7E7E7E5E5E5E4E4E4E1E1E1E4E4E4E4E4
        E4F2C49DFED4ACFED4ACFED4ACFED4ACFED4ACFED6AEFED6AEFED7B0FED7B1FE
        D8B2FED9B4FED9B6FED9B6FEDAB7FEDBB9FEDCBAFEDDBCFEDEBEFEDEBFFEDEBF
        FEDFC0F3CDABE4E4E4E1E1E1E4E4E4E5E5E5E7E7E7E8E8E8EAEAEAEBEBEBEDED
        EDEDEDEDF1F1F1F3F3F3EDEDEDD7D7D7CECECECCCCCCC4C4C4B1B1B19E9E9E93
        93939090908F8F8F9191918C8C8C787878F4C49AFFD0A4FFD0A4FFD0A4FFD0A4
        FFD1A5FFD2A6FFD2A7FFD3A9FFD4ABFFD4ADFFD5AFFFD6B0FFD6B1FFD8B3FFD9
        B4FFDAB7FFDBB9FFDBBBFFDCBBFFDCBCFFDDBEF6D0B07878789C9C9C99999999
        99999A9A9A9E9E9EA3A3A3B1B1B1CBCBCBCECECED7D7D7EDEDEDF3F3F3E7E7E7
        E3E3E3DFDFDFAFAFAFA8A8A8B6B6B6BCBCBCBCBCBCBCBCBCBCBCBCBCBCBC342F
        30EAB78FEDB990EDB990EDB990EDBA91EDBB93EDBB94EDBC96EDBD97EDBE99ED
        BF9CEDC09DEDC09EEDC1A0EDC2A1EDC3A3EDC4A6EDC5A8EDC6A9EDC6AAEDC7AB
        EDC9ADECC5A8333233C9C9C9BDBDBDBDBDBDBDBDBDBDBDBDB8B8B8A7A7A7A9A9
        A9E2E2E2E7E7E7F3F3F3FFFFFFFFFFFFFFFFFFE2E2E2B0B0B0C6C6C6C6C6C6C6
        C6C6C6C6C6C6C6C6C6C6C6C3C3C3352C2EDFAB86DEAA85DEAA85DEAA85DEAB88
        DEAB88DEAC89DEAD8BDEAE8DDEAE8FDEAF91DEAF91DEB092DEB294DEB396DEB3
        98DEB49ADEB59CDEB59CDEB69DDEB79FDEB8A1E1BAA0333232CCCCCCC4C4C4C4
        C4C4C4C4C4C4C4C4C4C4C4C4C4C4B2B2B2D3D3D3FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC5C5C5C4C4C4D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1362A
        2DD39E7ECF9B7BCF9B7BCF9B7DCF9C7DCF9C7ECF9D80CF9E81CF9F82CF9F84CF
        A085CFA086CFA287CFA289CFA38BCFA48CCFA58ECFA58FCFA58FCFA691CFA893
        CEA894D5AD97343232CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC6C6
        C6B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBBCCCCCCD3D3D3D2D2D2D2
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2332629AE8268A27861A37962A37963A37964
        A37A65A37B65A37B67A37C69A37C69A37C69A37D6BA37E6CA37F6DA37F6FA37F
        70A38070A38071A38072A38273A38375A28275AC8C7C333031CECECECDCDCDCD
        CDCDCDCDCDCCCCCCCCCCCCCCCCCCCBCBCBADADADFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFBEBEBECECECED5D5D5D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4CDCD
        CDD2D0CFD2D0CFD2D0CFD2D0CFD2D0CFD2D0CFD2D0CFD2D0CFD2D0CFD2D0CFD1
        CFCFD1CFCFD1CFCFD1CFCFD1CFCFD1CFCFD1CFCFD1CFCFD1CFCFD1CFCFD1CFCF
        D1CFCFD1CFCFD2D2D2D8D8D8D0D0D0D0D0D0C1CBC7CFCFCFCFCFCFCFCFCFCECE
        CEB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0D0D0D0D6D6D6D6D6D6D6
        D6D6D6D6D6D6D6D6D6D6D6D6D6D6D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D4D4D4
        D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D2D2
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D1D1D1D1D1D1D1D1D1D1D1D1D1D1D19C
        C2B231A2728DBDA9D1D1D1D1D1D1D0D0D0B3B3B3FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC2C2C2D2D2D2D8D8D8D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D6D6D6D6D6
        D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D5
        D5D5D5D5D5D5D5D5D5D5D5D5D5D5D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4
        D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3BECDC66EB497B6CAC1D2D2D2D2D2D2D1D1
        D1B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C8D5D5D5DADADAD9D9D9D9
        D9D9D9D9D9E9E9E9E9E9E9E1E5E3E1E5E3E1E5E3E1E5E3E1E5E3E1E5E3E0E4E2
        E0E4E2E0E4E2E0E4E2E0E4E2E0E4E2DFE3E1DFE3E1DFE3E1DFE3E1DEE3E1DEE3
        E1DEE3E1DEE3E1DEE3E1DEE3E1DEE3E1DEE2E0DEE2E0DDE2E0DDE2E0E4E4E4E4
        E4E4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4BFBFBFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC8C8C8D6D6D6DBDBDBDBDBDBDBDBDBEAECEB5CAF8C2D9B6B299A69299A
        69299A69299A69299A69299A69299A69299A69299A69299A69299A69299A6929
        9A69299A69299A69299A69299A69299A69299A69299A69299A69299A69299A69
        299A69299A69299A69299A692B9A6A4AA780DBE3DFE8E8E8D6D6D6D6D6D6D6D6
        D6C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C9D8D8D8DDDDDDDCDCDCF0
        F0F064B493289F6E56D2A84BCCA04BCCA04BCCA04BCCA04BCCA04BCCA04BCCA0
        4BCCA04BCCA04BCCA04BCCA04BCCA04BCCA04BCCA04BCCA04BCCA04BCCA04BCC
        A04BCCA04BCCA04BCCA04BCCA04BCCA04BCCA04BCCA04BCCA04BCCA056D2A828
        A17047A87FECECECD7D7D7D7D7D7D7D7D7C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCACACADADADADFDFDFDEDEDEF4F4F434A27458D4AA299A69299A69299A
        69299A69299A69299A69299A69299A69299A69299A69299A69299A69299A6929
        9A69299A69299A69299A69299A69299A69299A69299A69299A69299A69299A69
        299A69299A69299A69299A69299A6958D4AA299D6CECEEEDD9D9D9D9D9D9D9D9
        D9C1C1C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBDDDDDDE4E4E4E4E4E4F8
        F8F82CA0705DD7AF299A6926A37126A37126A37126A37126A37126A37126A371
        26A37126A37126A37126A37126A37126A37126A37126A37126A37126A37126A3
        7126A37126A37126A37126A37126A37126A37126A37126A37126A371299A695D
        D7AF26A06FE6EEEADFDFDFDFDFDFDFDFDFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCECECEE5E5E5ECECECECECECFBFBFB2BA37357D6AC25A4721FB3801FB3
        801FB3801FB3801FB3801FB3801FB3801FB3801FB3801FB3801FB3801FB3801F
        B3801FB3801FB3801FB3801FB3801FB3801FB3801FB3801FB3801FB3801FB380
        1FB3801FB3801FB3801FB38025A47258D6AC25A270ECF3F0E7E7E7E7E7E7E6E6
        E6C3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFEBEBEBF4F4F4F4F4F4FD
        FDFD2CA67652D5AA1FB8841FB8841FB8841FB8841FB8841FB8841FB8841FB884
        1FB8841FB8841FB8841FB8841FB8841FB8841FB8841FB8841FB8841FB8841FB8
        841FB8841FB8841FB8841FB8841FB8841FB8841FB8841FB8841FB8841FB88453
        D5AA24A674F0F6F4F1F1F1F1F1F1EFEFEFC6C6C6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0F2F2F2FCFCFCFCFCFCFFFFFF2CAC7B7FF4D02DC6942DC6942DC6
        942DC6942DC6942DC6942BC4932BC4932BC4932BC4932BC4932BC4932BC4932B
        C4932BC4932BC4932BC4932BC4932BC4932BC4932BC4932BC4932BC4932BC493
        2BC4932BC4932BC4932BC4932BC4937FF4D026AC7AF4FAF7FCFCFCFCFCFCF8F8
        F8C8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3F7F7F7FFFFFFFFFFFFFF
        FFFF2EB38273EEC86BEBC56BEBC56BEBC56BEBC56BEBC56BEBC569EBC469EBC4
        69EBC469EBC469EBC469EBC469EBC469EBC469EBC469EBC469EBC469EBC468EA
        C368EAC368EAC368EAC368EAC368EAC368EAC368EAC368EAC368EAC368EAC376
        EFCA2AB482F5FAF8FFFFFFFFFFFFFEFEFECBCBCBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD4D4D4F7F7F7FFFFFFFFFFFFFFFFFF30B98873EEC96EEDC76EEDC76EED
        C76EEDC76EEDC76EEDC76CEDC66CEDC66CEDC66CEDC66CEDC66CEDC66CEDC66C
        EDC66CEDC66CEDC66CEDC66CEDC66BECC66BECC66BECC66BECC66BECC66BECC6
        6BECC66BECC66BECC66BECC66BECC676F0CB2EBA89F6FAF8FFFFFFFFFFFFFEFE
        FECCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5D5F8F8F8FFFFFFFFFFFFFF
        FFFF32BE8E73F0CA70EFC970EFC970EFC970EFC970EFC970EFC96FEFC96FEFC9
        6FEFC96FEFC96FEFC96FEFC96FEFC96FEFC96FEFC96FEFC96FEFC96FEFC96DEE
        C86DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86DEEC875
        F0CC32C190F7FBF9FFFFFFFFFFFFFEFEFECDCDCDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD6D6D6F6F6F6FFFFFFFFFFFFFFFFFF33C29178F2CD71F0CA71F0CA71F0
        CA71F0CA71F0CA71F0CA70EFC970EFC970EFC970EFC970EFC970EFC970EFC970
        EFC970EFC970EFC970EFC970EFC96FEFC96FEFC96FEFC96FEFC96FEFC96FEFC9
        6FEFC96FEFC96FEFC96FEFC96FEFC975F1CC33C494F7FBF9FFFFFFFFFFFFFEFE
        FECECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8F3F3F3FFFFFFFFFFFFFF
        FFFF33C49476F1CC36D9A836D9A836D9A835D2A135CE9D35CE9D35CE9D35CE9D
        35CE9D35CD9D35CD9C35CD9C35CD9C35CD9C35CD9C35CD9C35CD9C35CD9C35CD
        9C35CD9C35CC9C35CC9B35CC9B35CC9B35CC9B35CC9B36D7A636D9A836D9A876
        F1CC32C695F8FCFAFFFFFFFFFFFFFCFCFCD0D0D0FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFDCDCDCECECECFDFDFDFDFDFDFFFFFF30C4935CE6BD2ED4A32FC4932FC4
        93299A69299A69299A69299A69299A69299A69299A69299A69299A69299A6929
        9A69299A69299A69299A69299A69299A69299A69299A69299A69299A69299A69
        299A69299A693AAD7D2ED1A02ED4A353E3B82DC594FAFCFBFDFDFDFDFDFDF5F5
        F5D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8DFDFDFF3F3F3F3F3F3FF
        FFFF29C39223CF9C20CE9A2AB5842AB584E5B28CE5B28CE5B28CE5B28CE5B28C
        E5B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5B2
        8CE5B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5B28C48A77822C89420CE9A24
        CF9C23C38FFBFDFCF3F3F3F3F3F3E3E3E3E1E1E1FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFDFDD7D7D7E3E3E3EAEAEAFFFFFF21C08E12C69012C69023B27F23B2
        7FEBBD96ECBF98ECBF98ECBF98ECBF98ECBF98ECBF98ECBF98ECBF98ECBF98EC
        BF98ECBF98ECBF98ECBF98ECBF98ECBF98ECBF98ECBF98ECBF98ECBF98ECBF98
        ECBF98EBBD9648A77816C18C12C69012C69016BE89FBFDFCEAEAEAE5E5E5D4D4
        D4FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFADDDDDDD8D8D8D8
        D8D860B49260B49260B49260B49260B492F0C59EF3CBA4F3CBA4F3CBA4F3CBA4
        F3CBA4F3CBA4F3CBA4F3CCA4F3CCA4F3CCA4F3CCA4F3CCA4F3CCA4F3CCA4F3CC
        A4F3CCA4F3CCA4F3CCA4F3CCA5F3CCA5F3CCA5F0C69F4DA97B60B49260B49260
        B49260B492D8D8D8D8D8D8DCDCDCF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7FBFBFBFBFBFBF7F7F7FFFFFFFBFB
        FBF2CAA2F8D4ABF8D4ACF8D4ACF8D4ACF8D4ACF8D4ACF8D4ACF8D4ACF8D4ACF8
        D4ACF8D4ACF8D4ADF8D4ADF8D5ADF8D5ADF8D5ADF8D5ADF8D5ADF8D5ADF8D5AD
        F8D5ADF2CBA4FCF7F2FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C79FF8D3AAF8D3AAF8D4ABF8D4AB
        F8D4ABF8D4ABF8D4ABF8D4ABF8D4ABF8D4ACF8D4ACF8D4ACF8D4ACF8D4ACF8D4
        ACF8D5ADF8D5ADF8D5ADF8D5ADF8D5ADF8D5ADF1C8A2FFFAF5FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF0C59CF8D3A9F8D3A9F8D3A9F8D3AAF8D3AAF8D3AAF8D4AAF8D4ABF8D4ABF8
        D4ABF8D4ACF8D4ACF8D4ACF8D4ACF8D4ACF8D4ACF8D4ACF8D5ADF8D5ADF8D5AD
        F8D5ADF0C69FFFFAF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEC29BF8D3AAF8D3AAF8D3AAF8D4AA
        F8D4ABF8D4ABF8D4ABF8D4ABF8D4ACF8D4ACF8D4ACF8D5ACF8D5ADF8D5ADF8D5
        ADF8D5ADF8D5AEF8D5AEF8D6AEF8D6AEF8D6AEEEC49DFFFBF6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFEEC199F9D4AAF9D4ABF9D4ABF9D4ABF9D4ABF9D4ABF9D4ACF9D5ADF9D5ADF9
        D5ADF9D5ADF9D5AEF9D5AEF9D5AEF9D5AEF9D6AFF9D6AFF9D6AFF9D6AFF9D6B0
        F9D6B0EEC29CFFFBF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECBE98F9D4ACF9D4ACF9D5ACF9D5AC
        F9D5ADF9D5ADF9D6AEF9D6AEF9D6AEF9D6AFF9D6AFF9D6B0F9D6B0F9D6B0F9D6
        B0F9D7B1F9D7B1F9D7B1F9D7B1F9D7B2F9D7B2ECC09AFFFBF6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFEBBD96FAD6AEFAD6AEFAD6AEFAD6AFFAD6B0FAD6B0FAD7B0FAD7B0FAD7B1FA
        D7B1FAD7B1FAD7B1FAD7B2FAD8B2FAD8B3FAD8B3FAD8B3FAD8B4FAD8B4FAD8B4
        FAD9B5EBBE98FFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEABB95FAD7B1FAD7B1FAD8B1FAD8B2
        FAD8B2FAD8B2FAD8B2FAD8B3FAD9B4FAD9B4FAD9B4FAD9B5FAD9B5FAD9B6FAD9
        B6FAD9B6FAD9B6FADAB7FADAB7FADAB7FADAB8EABB96FFFBF7FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFE9B993FAD8B3FAD9B5FAD9B5FAD9B5FAD9B5FAD9B5FADAB6FADAB7FADAB7FA
        DAB7FADAB7FADAB8FADAB8FADBB8FADBB9FADBBAFADCBAFADCBAFADCBAFADCBA
        FADCBCE9B994FFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8B791FBDBB8FBDBB9FBDBB9FBDBB9
        FBDBB9FBDBB9FBDCBAFBDCBBFBDCBBFBDCBBFBDCBBFBDDBCFBDDBCFBDDBCFBDD
        BDFBDDBEFBDEBEFBDEBEFBDEBFFBDEBFFBDEBFE8B792FFFBF8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFE7B590FBDDBCFBDDBDFBDDBDFBDEBDFBDEBEFBDEBEFBDEBFFBDEBFFBDEBFFB
        DEBFFBDFC0FBDFC0FBDFC0FBDFC1FBDFC2FBE0C2FBE0C2FBE0C3FBE1C4FBE1C4
        FBE1C4E7B690FFFBF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6B38EFBE0C1FBE0C1FBE0C1FBE0C2
        FBE0C3FBE0C3FBE0C3FBE0C3FBE1C4FBE1C5FBE1C5FBE2C5FBE2C5FBE2C6FBE2
        C6FBE2C6FBE2C7FBE3C8FBE3C8FBE3C8FBE3C9E6B48EFFFBF8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFE5B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5
        B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5B28CE5B28C
        E5B28CE5B28CFFFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFFFBF8FFFCF8FFFCF8FFFCF8
        FFFCF9FFFCF9FFFCF9FFFCF9FFFCF9FFFCF9FFFCF9FFFCF9FFFCF9FFFCF9FFFC
        FAFFFCFAFFFCFAFFFCFAFFFDFAFFFDFAFFFDFAFFFDFAFFFFFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object SQLbusFunc: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10'FUNCIONARIO.IDFUNC,'#13#10'FUNCIONARIO.IDCEP,'#13#10'FUNCIONARIO.N' +
      'OME_FUNC,'#13#10'FUNCIONARIO.DATANASC_FUNC,'#13#10'FUNCIONARIO.CPF_FUNC,'#13#10'FU' +
      'NCIONARIO.RG_FUNC,'#13#10'FUNCIONARIO.NACIO_FUNC,'#13#10'FUNCIONARIO.NATUR_F' +
      'UNC,'#13#10'FUNCIONARIO.SEXO_FUNC,'#13#10'FUNCIONARIO.EMAIL_FUNC,'#13#10'FUNCIONAR' +
      'IO.OBS_FUNC,'#13#10'FUNCIONARIO.DATACAD_FUNC,'#13#10'FUNCIONARIO.STATUS_FUNC' +
      ','#13#10#13#10'CEPS.LOGRA_CEP,'#13#10'TIPOLOGRA.DESCRI_TIPOLOG,'#13#10'CIDADES.NOME_CI' +
      'D,'#13#10'CIDADES.UF_CID,'#13#10'BAIRROS.NOME_BAI'#13#10#13#10#13#10'FROM FUNCIONARIO'#13#10#13#10'L' +
      'EFT OUTER JOIN CEPS ON (CEPS.IDCEP=FUNCIONARIO.IDCEP)'#13#10'LEFT OUTE' +
      'R JOIN TIPOLOGRA ON (TIPOLOGRA.IDTIPOLOG=CEPS.IDTIPOLOG)'#13#10'LEFT O' +
      'UTER JOIN BAIRROS ON (BAIRROS.IDBAI=CEPS.IDBAI)'#13#10'LEFT OUTER JOIN' +
      ' CIDADES ON (CIDADES.IDCID=CEPS.IDCID)'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.Conexao
    Left = 24
    Top = 8
    object SQLbusFuncIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLbusFuncIDCEP: TStringField
      FieldName = 'IDCEP'
      Size = 8
    end
    object SQLbusFuncNOME_FUNC: TStringField
      FieldName = 'NOME_FUNC'
      Size = 50
    end
    object SQLbusFuncDATANASC_FUNC: TDateField
      FieldName = 'DATANASC_FUNC'
    end
    object SQLbusFuncCPF_FUNC: TStringField
      FieldName = 'CPF_FUNC'
      Size = 15
    end
    object SQLbusFuncRG_FUNC: TStringField
      FieldName = 'RG_FUNC'
      Size = 13
    end
    object SQLbusFuncNACIO_FUNC: TStringField
      FieldName = 'NACIO_FUNC'
      Size = 32
    end
    object SQLbusFuncNATUR_FUNC: TStringField
      FieldName = 'NATUR_FUNC'
      Size = 32
    end
    object SQLbusFuncSEXO_FUNC: TStringField
      FieldName = 'SEXO_FUNC'
      Size = 1
    end
    object SQLbusFuncEMAIL_FUNC: TStringField
      FieldName = 'EMAIL_FUNC'
      Size = 100
    end
    object SQLbusFuncOBS_FUNC: TStringField
      FieldName = 'OBS_FUNC'
      Size = 50
    end
    object SQLbusFuncDATACAD_FUNC: TDateField
      FieldName = 'DATACAD_FUNC'
    end
    object SQLbusFuncSTATUS_FUNC: TStringField
      FieldName = 'STATUS_FUNC'
      Size = 1
    end
    object SQLbusFuncLOGRA_CEP: TStringField
      FieldName = 'LOGRA_CEP'
      Size = 100
    end
    object SQLbusFuncDESCRI_TIPOLOG: TStringField
      FieldName = 'DESCRI_TIPOLOG'
      Size = 50
    end
    object SQLbusFuncNOME_CID: TStringField
      FieldName = 'NOME_CID'
      Size = 50
    end
    object SQLbusFuncUF_CID: TStringField
      FieldName = 'UF_CID'
      Size = 2
    end
    object SQLbusFuncNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      Size = 30
    end
  end
  object Providerbus: TDataSetProvider
    DataSet = SQLbusFunc
    Left = 64
    Top = 8
  end
  object CDSbusFunc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Providerbus'
    Left = 104
    Top = 8
    object CDSbusFuncIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSbusFuncIDCEP: TStringField
      FieldName = 'IDCEP'
      Size = 8
    end
    object CDSbusFuncNOME_FUNC: TStringField
      FieldName = 'NOME_FUNC'
      Size = 50
    end
    object CDSbusFuncDATANASC_FUNC: TDateField
      FieldName = 'DATANASC_FUNC'
    end
    object CDSbusFuncCPF_FUNC: TStringField
      FieldName = 'CPF_FUNC'
      Size = 15
    end
    object CDSbusFuncRG_FUNC: TStringField
      FieldName = 'RG_FUNC'
      Size = 13
    end
    object CDSbusFuncNACIO_FUNC: TStringField
      FieldName = 'NACIO_FUNC'
      Size = 32
    end
    object CDSbusFuncNATUR_FUNC: TStringField
      FieldName = 'NATUR_FUNC'
      Size = 32
    end
    object CDSbusFuncSEXO_FUNC: TStringField
      FieldName = 'SEXO_FUNC'
      Size = 1
    end
    object CDSbusFuncEMAIL_FUNC: TStringField
      FieldName = 'EMAIL_FUNC'
      Size = 100
    end
    object CDSbusFuncOBS_FUNC: TStringField
      FieldName = 'OBS_FUNC'
      Size = 50
    end
    object CDSbusFuncDATACAD_FUNC: TDateField
      FieldName = 'DATACAD_FUNC'
    end
    object CDSbusFuncSTATUS_FUNC: TStringField
      FieldName = 'STATUS_FUNC'
      Size = 1
    end
    object CDSbusFuncLOGRA_CEP: TStringField
      FieldName = 'LOGRA_CEP'
      Size = 100
    end
    object CDSbusFuncDESCRI_TIPOLOG: TStringField
      FieldName = 'DESCRI_TIPOLOG'
      Size = 50
    end
    object CDSbusFuncNOME_CID: TStringField
      FieldName = 'NOME_CID'
      Size = 50
    end
    object CDSbusFuncUF_CID: TStringField
      FieldName = 'UF_CID'
      Size = 2
    end
    object CDSbusFuncNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      Size = 30
    end
  end
  object DSbusFunc: TDataSource
    DataSet = CDSbusFunc
    Left = 144
    Top = 8
  end
  object RvProject1: TRvProject
    Engine = RvSystem1
    Left = 112
    Top = 313
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Op'#231#245'es de Impress'#227'o'
    TitleStatus = 'Status de Impress'#227'o'
    TitlePreview = 'Visualiza'#231#227'o do Relat'#243'rio'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 208
    Top = 313
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CDSbusFunc
    Left = 288
    Top = 313
  end
end
