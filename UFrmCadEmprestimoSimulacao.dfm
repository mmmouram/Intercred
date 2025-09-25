inherited FrmCadEmprestimoSimulacao: TFrmCadEmprestimoSimulacao
  Tag = 222
  Left = 132
  Top = 140
  Caption = 'Simula'#231#227'o de Proposta de Empr'#233'stimo'
  ClientHeight = 509
  ClientWidth = 955
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  OldCreateOrder = True
  Position = poDesigned
  OnCreate = FormCreate
  ExplicitWidth = 961
  ExplicitHeight = 538
  PixelsPerInch = 96
  TextHeight = 13
  inherited BitBtnMaster: TBitBtn
    Left = 724
    Top = 11
    ExplicitLeft = 724
    ExplicitTop = 11
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = -3
    Width = 953
    Height = 268
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object GroupBox4: TGroupBox
      Tag = -1
      Left = 553
      Top = 94
      Width = 92
      Height = 41
      Caption = '% Fator M'#234's '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      object DBEditFatorMes: TDBEdit
        Left = 8
        Top = 16
        Width = 70
        Height = 19
        Ctl3D = False
        DataField = 'PROTXME'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBEditFatorMesExit
        OnKeyPress = OnKeyPressFloat
      end
    end
    object GroupBox2: TGroupBox
      Tag = -1
      Left = 5
      Top = 7
      Width = 110
      Height = 41
      Caption = 'Proposta * '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Carteira: TEdit
        Left = 8
        Top = 17
        Width = 21
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        OEMConvert = True
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnClick = CarteiraClick
        OnEnter = OnEnter
        OnExit = CarteiraExit
        OnKeyPress = CarteiraKeyPress
      end
      object Bordero: TEdit
        Left = 30
        Top = 17
        Width = 47
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 8
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnEnter = OnEnter
        OnExit = BorderoExit
        OnKeyPress = OnKeyPressInteiro
      end
      object BitBtn1: TBitBtn
        Left = 80
        Top = 16
        Width = 22
        Height = 21
        TabOrder = 2
        TabStop = False
        OnClick = BitBtn1Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFC5C5C5
          979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA7A2A579797A959595FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B5B7
          E7E5E76B6B6BBABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B3B5E5E3E5656565D6D6D6FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBBB4B7DFDDDF787878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDDBBB5B6818081A7A7A7D4
          D5D5A4A5A6A4A5A5A4A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDFDEDFADA8A954575AA6A09AC7C8C9C7C8C9C1BEBB767878C0C0
          C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9092DCD8D4FE
          FBF8FFFCFAFEF9F4FEF8F3FBF1E78C8987B9B9B9FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDCDCDCA2A09BFFF4E6FFFCF8FFF7EFFFFAF5FFF9F1FFF6E9FAE3
          CC848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9ABACECD7C3FFF1E3FF
          EEDEFFF9F5FFF7F1FFF4EBFFF3E8FFEFD9BDAEA0B2B3B4FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA1A1A1FEE0C2FFEAD5FFEBDAFFF8F1FFF4ECFFF2E7FFF1E4FFF1
          DDDFC3A99DA0A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9D9FFDDAB9FFE2C6FF
          E6CFFFE8D4FFEBD9FFEEE0FFEFE2FFF2E0DCC0A7AFB0B3FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA5A8AAE2C4A6FFE1C0FFEEDEFFEDDDFFE5CEFFE2C8FFE5CDFFE8
          CDBAAEA0CDCED0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D6D8A99E90FDD7B1FF
          EED9FFFBF5FFF6EBFFF2E5FFF5E1EDD2B7A1A09DFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB6B7B9B6A18EF2D8BEFFF6E8FFF7EAFCF1E4E1D2C29D98
          96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C4C59B
          9793ACA298B4ACA3A59E97ABAAAAFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
    object GroupBox3: TGroupBox
      Tag = -1
      Left = 129
      Top = 8
      Width = 89
      Height = 40
      Caption = 'Qtde.Parcelas '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object DBEditTotalItem: TDBEdit
        Left = 13
        Top = 16
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'PROITEM'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = OnExit
        OnKeyPress = OnKeyPressInteiro
      end
    end
    object GroupBox5: TGroupBox
      Tag = -1
      Left = 227
      Top = 7
      Width = 384
      Height = 41
      Caption = 'Cliente * '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object DBEditCedente: TDBEdit
        Left = 3
        Top = 17
        Width = 45
        Height = 19
        Ctl3D = False
        DataField = 'PROCLIE'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnChange = DBEditCedenteChange
        OnEnter = OnEnter
        OnExit = DBEditCedenteExit
        OnKeyPress = OnKeyPressInteiro
      end
      object DBEdit29: TDBEdit
        Left = 80
        Top = 17
        Width = 294
        Height = 19
        TabStop = False
        CharCase = ecUpperCase
        Color = clInfoBk
        Ctl3D = False
        DataField = 'CLINOM'
        DataSource = DSCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object BitBtn6: TBitBtn
        Left = 52
        Top = 15
        Width = 22
        Height = 21
        TabOrder = 2
        TabStop = False
        OnClick = BitBtn6Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFC5C5C5
          979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA7A2A579797A959595FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B5B7
          E7E5E76B6B6BBABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B3B5E5E3E5656565D6D6D6FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBBB4B7DFDDDF787878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDDBBB5B6818081A7A7A7D4
          D5D5A4A5A6A4A5A5A4A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDFDEDFADA8A954575AA6A09AC7C8C9C7C8C9C1BEBB767878C0C0
          C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9092DCD8D4FE
          FBF8FFFCFAFEF9F4FEF8F3FBF1E78C8987B9B9B9FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDCDCDCA2A09BFFF4E6FFFCF8FFF7EFFFFAF5FFF9F1FFF6E9FAE3
          CC848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9ABACECD7C3FFF1E3FF
          EEDEFFF9F5FFF7F1FFF4EBFFF3E8FFEFD9BDAEA0B2B3B4FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA1A1A1FEE0C2FFEAD5FFEBDAFFF8F1FFF4ECFFF2E7FFF1E4FFF1
          DDDFC3A99DA0A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9D9FFDDAB9FFE2C6FF
          E6CFFFE8D4FFEBD9FFEEE0FFEFE2FFF2E0DCC0A7AFB0B3FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA5A8AAE2C4A6FFE1C0FFEEDEFFEDDDFFE5CEFFE2C8FFE5CDFFE8
          CDBAAEA0CDCED0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D6D8A99E90FDD7B1FF
          EED9FFFBF5FFF6EBFFF2E5FFF5E1EDD2B7A1A09DFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB6B7B9B6A18EF2D8BEFFF6E8FFF7EAFCF1E4E1D2C29D98
          96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C4C59B
          9793ACA298B4ACA3A59E97ABAAAAFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
    object GroupBox6: TGroupBox
      Tag = -1
      Left = 614
      Top = 7
      Width = 325
      Height = 41
      Caption = 'Gerente '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object DBEditPromotor: TDBEdit
        Left = 7
        Top = 17
        Width = 31
        Height = 19
        TabStop = False
        CharCase = ecUpperCase
        Color = clInfoBk
        Ctl3D = False
        DataField = 'PROOPER'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit30: TDBEdit
        Left = 40
        Top = 17
        Width = 254
        Height = 19
        TabStop = False
        CharCase = ecUpperCase
        Color = clInfoBk
        Ctl3D = False
        DataField = 'Nome'
        DataSource = DSPromotor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object BitBtn7: TBitBtn
        Left = 300
        Top = 15
        Width = 22
        Height = 21
        TabOrder = 2
        TabStop = False
        OnClick = BitBtn7Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFC5C5C5
          979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA7A2A579797A959595FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B5B7
          E7E5E76B6B6BBABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B3B5E5E3E5656565D6D6D6FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBBB4B7DFDDDF787878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDDBBB5B6818081A7A7A7D4
          D5D5A4A5A6A4A5A5A4A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDFDEDFADA8A954575AA6A09AC7C8C9C7C8C9C1BEBB767878C0C0
          C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9092DCD8D4FE
          FBF8FFFCFAFEF9F4FEF8F3FBF1E78C8987B9B9B9FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDCDCDCA2A09BFFF4E6FFFCF8FFF7EFFFFAF5FFF9F1FFF6E9FAE3
          CC848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9ABACECD7C3FFF1E3FF
          EEDEFFF9F5FFF7F1FFF4EBFFF3E8FFEFD9BDAEA0B2B3B4FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA1A1A1FEE0C2FFEAD5FFEBDAFFF8F1FFF4ECFFF2E7FFF1E4FFF1
          DDDFC3A99DA0A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9D9FFDDAB9FFE2C6FF
          E6CFFFE8D4FFEBD9FFEEE0FFEFE2FFF2E0DCC0A7AFB0B3FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA5A8AAE2C4A6FFE1C0FFEEDEFFEDDDFFE5CEFFE2C8FFE5CDFFE8
          CDBAAEA0CDCED0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D6D8A99E90FDD7B1FF
          EED9FFFBF5FFF6EBFFF2E5FFF5E1EDD2B7A1A09DFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB6B7B9B6A18EF2D8BEFFF6E8FFF7EAFCF1E4E1D2C29D98
          96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C4C59B
          9793ACA298B4ACA3A59E97ABAAAAFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
    object GroupBox8: TGroupBox
      Tag = -1
      Left = 5
      Top = 94
      Width = 105
      Height = 41
      Caption = 'Dt. do Contrato * '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      object DBEditDataOperacao: TDBEdit
        Left = 8
        Top = 16
        Width = 71
        Height = 19
        Ctl3D = False
        DataField = 'PRODTOP'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBEditDataOperacaoExit
        OnKeyDown = DataNoDBEdit
        OnKeyPress = OnKeyPressInteiro
      end
    end
    object GroupBox11: TGroupBox
      Tag = -1
      Left = 439
      Top = 94
      Width = 113
      Height = 41
      Caption = 'Vr. Refer'#234'ncia '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      object DBEditValorReferencia: TDBEdit
        Left = 7
        Top = 16
        Width = 96
        Height = 19
        Ctl3D = False
        DataField = 'ProValorReferencia'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 14
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBEditValorReferenciaExit
        OnKeyPress = OnKeyPressFloat
      end
    end
    object GroupBox40: TGroupBox
      Left = 86
      Top = 183
      Width = 85
      Height = 42
      Caption = 'Outras Desp. '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
      object DBEdit1: TDBEdit
        Left = 4
        Top = 16
        Width = 71
        Height = 19
        Ctl3D = False
        DataField = 'PRODESP'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 12
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = OnExit
        OnKeyDown = FormKeyDown
        OnKeyPress = OnKeyPressFloat
      end
    end
    object DBRGTipoContrato: TDBRadioGroup
      Left = 362
      Top = 183
      Width = 166
      Height = 42
      Caption = 'Tipo de Contrato '
      Columns = 2
      DataField = 'PROTPCONTR'
      DataSource = DSProposta
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Normal'
        'Repactuado')
      ParentBackground = True
      ParentFont = False
      TabOrder = 25
      Values.Strings = (
        'N'
        'R')
      OnClick = DBRGTipoContratoClick
    end
    object GroupBox27: TGroupBox
      Left = 166
      Top = 49
      Width = 343
      Height = 41
      Caption = 'C'#243'digo Produto * '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object DBEditDocumento: TDBEdit
        Left = 7
        Top = 16
        Width = 33
        Height = 19
        Ctl3D = False
        DataField = 'PRODOCUMEN'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBEditDocumentoExit
        OnKeyPress = OnKeyPressInteiro
      end
      object DBEdit12: TDBEdit
        Left = 66
        Top = 16
        Width = 269
        Height = 19
        TabStop = False
        Color = clInfoBk
        Ctl3D = False
        DataField = 'Descricao'
        DataSource = DSProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object BitBtn2: TBitBtn
        Left = 42
        Top = 16
        Width = 22
        Height = 20
        TabOrder = 2
        TabStop = False
        OnClick = BitBtn2Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFC5C5C5
          979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA7A2A579797A959595FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B5B7
          E7E5E76B6B6BBABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B3B5E5E3E5656565D6D6D6FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBBB4B7DFDDDF787878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDDBBB5B6818081A7A7A7D4
          D5D5A4A5A6A4A5A5A4A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDFDEDFADA8A954575AA6A09AC7C8C9C7C8C9C1BEBB767878C0C0
          C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9092DCD8D4FE
          FBF8FFFCFAFEF9F4FEF8F3FBF1E78C8987B9B9B9FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDCDCDCA2A09BFFF4E6FFFCF8FFF7EFFFFAF5FFF9F1FFF6E9FAE3
          CC848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9ABACECD7C3FFF1E3FF
          EEDEFFF9F5FFF7F1FFF4EBFFF3E8FFEFD9BDAEA0B2B3B4FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA1A1A1FEE0C2FFEAD5FFEBDAFFF8F1FFF4ECFFF2E7FFF1E4FFF1
          DDDFC3A99DA0A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9D9FFDDAB9FFE2C6FF
          E6CFFFE8D4FFEBD9FFEEE0FFEFE2FFF2E0DCC0A7AFB0B3FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA5A8AAE2C4A6FFE1C0FFEEDEFFEDDDFFE5CEFFE2C8FFE5CDFFE8
          CDBAAEA0CDCED0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D6D8A99E90FDD7B1FF
          EED9FFFBF5FFF6EBFFF2E5FFF5E1EDD2B7A1A09DFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB6B7B9B6A18EF2D8BEFFF6E8FFF7EAFCF1E4E1D2C29D98
          96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C4C59B
          9793ACA298B4ACA3A59E97ABAAAAFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
    object GroupBox7: TGroupBox
      Tag = -1
      Left = 646
      Top = 94
      Width = 88
      Height = 41
      Caption = 'Fator POS % '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      object DBEditFatorCorrecao: TDBEdit
        Left = 5
        Top = 19
        Width = 70
        Height = 19
        Ctl3D = False
        DataField = 'TaxaNominalPosFixada'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 6
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBEditFatorCorrecaoExit
        OnKeyPress = OnKeyPressFloat
      end
    end
    object GroupBox9: TGroupBox
      Tag = -1
      Left = 188
      Top = 94
      Width = 96
      Height = 41
      Caption = 'Dt. Venc.1'#186' PMT '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      object DBEditProDataPrimeiraParcela: TDBEdit
        Left = 11
        Top = 16
        Width = 77
        Height = 19
        Ctl3D = False
        DataField = 'ProDataPrimeiraParcela'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBEditProDataPrimeiraParcelaExit
        OnKeyDown = DataNoDBEdit
        OnKeyPress = OnKeyPressInteiro
      end
    end
    object GroupBox14: TGroupBox
      Tag = -1
      Left = 285
      Top = 94
      Width = 153
      Height = 41
      Caption = 'Dias / Parcelas (Car'#234'ncia) '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      object Label1: TLabel
        Left = 51
        Top = 16
        Width = 4
        Height = 16
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit3: TDBEdit
        Left = 10
        Top = 16
        Width = 39
        Height = 19
        Ctl3D = False
        DataField = 'ProDiasCarencia'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBEdit3Exit
        OnKeyPress = OnKeyPressInteiro
      end
      object DBEdit11: TDBEdit
        Left = 58
        Top = 16
        Width = 83
        Height = 19
        Ctl3D = False
        DataField = 'ProParcelasCarencia'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnEnter = OnEnter
        OnExit = OnExit
        OnKeyPress = OnKeyPressInteiro
      end
    end
    object GroupBox24: TGroupBox
      Tag = -1
      Left = 579
      Top = 141
      Width = 80
      Height = 41
      Caption = 'Valor Doc '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      object DBEditValorDoc: TDBEdit
        Left = 8
        Top = 16
        Width = 58
        Height = 19
        Color = clSilver
        Ctl3D = False
        DataField = 'PROVRDC'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 12
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = OnExit
      end
    end
    object GroupBox45: TGroupBox
      Tag = -1
      Left = 660
      Top = 141
      Width = 54
      Height = 41
      Caption = '% Tac '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      object DBEditTaxaTac: TDBEdit
        Left = 5
        Top = 17
        Width = 39
        Height = 19
        Ctl3D = False
        DataField = 'PROTXCAC'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 6
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBEditTaxaTacExit
        OnKeyPress = OnKeyPressFloat
      end
    end
    object GroupBox26: TGroupBox
      Tag = -1
      Left = 5
      Top = 183
      Width = 79
      Height = 42
      Caption = 'C.Cobran'#231'a '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
      object DBEditCustoCobranca: TDBEdit
        Left = 8
        Top = 16
        Width = 62
        Height = 19
        Ctl3D = False
        DataField = 'PROCCOB'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 12
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = OnExit
      end
    end
    object GroupBox10: TGroupBox
      Tag = -1
      Left = 278
      Top = 141
      Width = 63
      Height = 41
      Caption = '%IOF '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      TabStop = True
      object DBEditTaxaIof: TDBEdit
        Left = 9
        Top = 16
        Width = 48
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'PROTXIO'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 12
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object DBRdGrpTipoPagtoIOF: TDBRadioGroup
      Left = 58
      Top = 141
      Width = 218
      Height = 41
      Caption = 'IOF (Tipo Pagto) * '
      Columns = 3
      DataField = 'ProTipoPagtoIOF'
      DataSource = DSProposta
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Financiado'
        #193' Vista'
        'Isento')
      ParentBackground = True
      ParentFont = False
      TabOrder = 15
      Values.Strings = (
        'F'
        'V'
        'I')
    end
    object GroupBox43: TGroupBox
      Left = 173
      Top = 183
      Width = 70
      Height = 42
      Caption = 'Tx.Admin '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
      object DBEdit15: TDBEdit
        Left = 7
        Top = 16
        Width = 55
        Height = 19
        Color = clSilver
        Ctl3D = False
        DataField = 'ProTaxaAdministrativa'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = OnExit
        OnKeyPress = OnKeyPressFloat
      end
    end
    object DBRdGrpProTipoPagtoTac: TDBRadioGroup
      Left = 428
      Top = 141
      Width = 150
      Height = 41
      Caption = 'Tipo Pagto das Tac'#39's  '
      Columns = 2
      DataField = 'ProTipoPagtoTac'
      DataSource = DSProposta
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Financiado'
        #193' Vista')
      ParentBackground = True
      ParentFont = False
      TabOrder = 18
      Values.Strings = (
        'F'
        'V')
    end
    object GroupBox13: TGroupBox
      Left = 5
      Top = 141
      Width = 52
      Height = 41
      Caption = 'Floating'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      object DBEdit14: TDBEdit
        Left = 8
        Top = 16
        Width = 37
        Height = 19
        Ctl3D = False
        DataField = 'PROFLOA'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBEdit14Exit
        OnKeyPress = OnKeyPressInteiro
      end
    end
    object DBRGTipoVencimentoParcela: TDBRadioGroup
      Left = 111
      Top = 94
      Width = 76
      Height = 41
      Caption = 'Intervalo * '
      DataField = 'ProTipoVencimentoParcela'
      DataSource = DSProposta
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Misto')
      ParentBackground = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      Values.Strings = (
        'MISTO')
    end
    object DBRdGrpCongelarParcelas: TDBRadioGroup
      Left = 5
      Top = 224
      Width = 120
      Height = 41
      Caption = 'Congelar Parcelas '
      Columns = 2
      DataField = 'ProCongelarPMT'
      DataSource = DSProposta
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Items.Strings = (
        'N'#227'o'
        'Sim')
      ParentBackground = True
      ParentFont = False
      TabOrder = 26
      Values.Strings = (
        'NAO'
        'SIM')
      OnChange = DBRdGrpCongelarParcelasChange
      OnExit = DBRdGrpCongelarParcelasExit
    end
    object GroupBox36: TGroupBox
      Left = 510
      Top = 49
      Width = 429
      Height = 41
      Caption = 'Tipo de Carteira '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object CodigoTipoCarteira: TDBEdit
        Left = 7
        Top = 16
        Width = 25
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CodigoTipoCarteira'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = CodigoTipoCarteiraExit
        OnKeyPress = OnKeyPressInteiro
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 34
        Top = 16
        Width = 392
        Height = 19
        Ctl3D = False
        DataField = 'NomeTipoCarteira'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnClick = DBLookupComboBox3Click
        OnDropDown = DBLookupComboBox3DropDown
        OnExit = DBLookupComboBox3Exit
      end
    end
    object GroupBox37: TGroupBox
      Tag = -1
      Left = 342
      Top = 141
      Width = 85
      Height = 41
      Caption = '%IOF (Compl) '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      TabStop = True
      object DBEdtIofCompl: TDBEdit
        Left = 16
        Top = 16
        Width = 48
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'PROTXIOFC'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 12
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object GroupBox41: TGroupBox
      Tag = -1
      Left = 5
      Top = 49
      Width = 99
      Height = 41
      Caption = 'ID Opera'#231#227'o * '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object DBdtId_ContratoOperacao: TDBEdit
        Left = 8
        Top = 16
        Width = 43
        Height = 19
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'Id_ContratoOperacao'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBdtId_ContratoOperacaoExit
        OnKeyPress = OnKeyPressInteiro
      end
      object BitBtn3: TBitBtn
        Left = 54
        Top = 15
        Width = 22
        Height = 21
        TabOrder = 1
        TabStop = False
        OnClick = BitBtn3Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFC5C5C5
          979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA7A2A579797A959595FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B5B7
          E7E5E76B6B6BBABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B3B5E5E3E5656565D6D6D6FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBBB4B7DFDDDF787878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDDBBB5B6818081A7A7A7D4
          D5D5A4A5A6A4A5A5A4A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDFDEDFADA8A954575AA6A09AC7C8C9C7C8C9C1BEBB767878C0C0
          C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9092DCD8D4FE
          FBF8FFFCFAFEF9F4FEF8F3FBF1E78C8987B9B9B9FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDCDCDCA2A09BFFF4E6FFFCF8FFF7EFFFFAF5FFF9F1FFF6E9FAE3
          CC848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9ABACECD7C3FFF1E3FF
          EEDEFFF9F5FFF7F1FFF4EBFFF3E8FFEFD9BDAEA0B2B3B4FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA1A1A1FEE0C2FFEAD5FFEBDAFFF8F1FFF4ECFFF2E7FFF1E4FFF1
          DDDFC3A99DA0A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9D9FFDDAB9FFE2C6FF
          E6CFFFE8D4FFEBD9FFEEE0FFEFE2FFF2E0DCC0A7AFB0B3FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA5A8AAE2C4A6FFE1C0FFEEDEFFEDDDFFE5CEFFE2C8FFE5CDFFE8
          CDBAAEA0CDCED0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D6D8A99E90FDD7B1FF
          EED9FFFBF5FFF6EBFFF2E5FFF5E1EDD2B7A1A09DFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB6B7B9B6A18EF2D8BEFFF6E8FFF7EAFCF1E4E1D2C29D98
          96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C4C59B
          9793ACA298B4ACA3A59E97ABAAAAFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
    object GroupBox38: TGroupBox
      Tag = -1
      Left = 126
      Top = 224
      Width = 80
      Height = 41
      Caption = '1'#186' Aval '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 27
      object DBdtId_CodPrimerioAval: TDBEdit
        Left = 8
        Top = 16
        Width = 43
        Height = 19
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'Id_CodPrimeiroAvalista'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBdtId_CodPrimerioAvalExit
        OnKeyPress = OnKeyPressInteiro
      end
      object BitBtn4: TBitBtn
        Left = 53
        Top = 15
        Width = 22
        Height = 21
        TabOrder = 1
        TabStop = False
        OnClick = BitBtn4Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFC5C5C5
          979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA7A2A579797A959595FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B5B7
          E7E5E76B6B6BBABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B3B5E5E3E5656565D6D6D6FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBBB4B7DFDDDF787878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDDBBB5B6818081A7A7A7D4
          D5D5A4A5A6A4A5A5A4A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDFDEDFADA8A954575AA6A09AC7C8C9C7C8C9C1BEBB767878C0C0
          C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9092DCD8D4FE
          FBF8FFFCFAFEF9F4FEF8F3FBF1E78C8987B9B9B9FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDCDCDCA2A09BFFF4E6FFFCF8FFF7EFFFFAF5FFF9F1FFF6E9FAE3
          CC848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9ABACECD7C3FFF1E3FF
          EEDEFFF9F5FFF7F1FFF4EBFFF3E8FFEFD9BDAEA0B2B3B4FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA1A1A1FEE0C2FFEAD5FFEBDAFFF8F1FFF4ECFFF2E7FFF1E4FFF1
          DDDFC3A99DA0A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9D9FFDDAB9FFE2C6FF
          E6CFFFE8D4FFEBD9FFEEE0FFEFE2FFF2E0DCC0A7AFB0B3FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA5A8AAE2C4A6FFE1C0FFEEDEFFEDDDFFE5CEFFE2C8FFE5CDFFE8
          CDBAAEA0CDCED0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D6D8A99E90FDD7B1FF
          EED9FFFBF5FFF6EBFFF2E5FFF5E1EDD2B7A1A09DFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB6B7B9B6A18EF2D8BEFFF6E8FFF7EAFCF1E4E1D2C29D98
          96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C4C59B
          9793ACA298B4ACA3A59E97ABAAAAFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
    object GroupBox39: TGroupBox
      Tag = -1
      Left = 207
      Top = 224
      Width = 80
      Height = 41
      Caption = '2'#186' Aval '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 28
      object DBdtId_CodSegundoAval: TDBEdit
        Left = 8
        Top = 16
        Width = 43
        Height = 19
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'Id_CodSegundoAvalista'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBdtId_CodSegundoAvalExit
        OnKeyPress = OnKeyPressInteiro
      end
      object BitBtn5: TBitBtn
        Left = 54
        Top = 16
        Width = 22
        Height = 21
        TabOrder = 1
        TabStop = False
        OnClick = BitBtn5Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFC5C5C5
          979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA7A2A579797A959595FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B5B7
          E7E5E76B6B6BBABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B3B5E5E3E5656565D6D6D6FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBBB4B7DFDDDF787878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDDBBB5B6818081A7A7A7D4
          D5D5A4A5A6A4A5A5A4A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDFDEDFADA8A954575AA6A09AC7C8C9C7C8C9C1BEBB767878C0C0
          C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9092DCD8D4FE
          FBF8FFFCFAFEF9F4FEF8F3FBF1E78C8987B9B9B9FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDCDCDCA2A09BFFF4E6FFFCF8FFF7EFFFFAF5FFF9F1FFF6E9FAE3
          CC848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9ABACECD7C3FFF1E3FF
          EEDEFFF9F5FFF7F1FFF4EBFFF3E8FFEFD9BDAEA0B2B3B4FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA1A1A1FEE0C2FFEAD5FFEBDAFFF8F1FFF4ECFFF2E7FFF1E4FFF1
          DDDFC3A99DA0A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9D9FFDDAB9FFE2C6FF
          E6CFFFE8D4FFEBD9FFEEE0FFEFE2FFF2E0DCC0A7AFB0B3FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA5A8AAE2C4A6FFE1C0FFEEDEFFEDDDFFE5CEFFE2C8FFE5CDFFE8
          CDBAAEA0CDCED0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D6D8A99E90FDD7B1FF
          EED9FFFBF5FFF6EBFFF2E5FFF5E1EDD2B7A1A09DFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB6B7B9B6A18EF2D8BEFFF6E8FFF7EAFCF1E4E1D2C29D98
          96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C4C59B
          9793ACA298B4ACA3A59E97ABAAAAFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
    object GroupBox42: TGroupBox
      Tag = -1
      Left = 288
      Top = 224
      Width = 80
      Height = 41
      Caption = '3'#186' Aval '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 29
      object DBdtId_CodTerceiroAval: TDBEdit
        Left = 8
        Top = 16
        Width = 43
        Height = 19
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'Id_CodTerceiroAvalista'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBdtId_CodTerceiroAvalExit
        OnKeyPress = OnKeyPressInteiro
      end
      object BitBtn8: TBitBtn
        Left = 53
        Top = 16
        Width = 22
        Height = 21
        TabOrder = 1
        TabStop = False
        OnClick = BitBtn8Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFC5C5C5
          979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA7A2A579797A959595FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B5B7
          E7E5E76B6B6BBABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B3B5E5E3E5656565D6D6D6FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBBB4B7DFDDDF787878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDDBBB5B6818081A7A7A7D4
          D5D5A4A5A6A4A5A5A4A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDFDEDFADA8A954575AA6A09AC7C8C9C7C8C9C1BEBB767878C0C0
          C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9092DCD8D4FE
          FBF8FFFCFAFEF9F4FEF8F3FBF1E78C8987B9B9B9FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDCDCDCA2A09BFFF4E6FFFCF8FFF7EFFFFAF5FFF9F1FFF6E9FAE3
          CC848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9ABACECD7C3FFF1E3FF
          EEDEFFF9F5FFF7F1FFF4EBFFF3E8FFEFD9BDAEA0B2B3B4FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA1A1A1FEE0C2FFEAD5FFEBDAFFF8F1FFF4ECFFF2E7FFF1E4FFF1
          DDDFC3A99DA0A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9D9FFDDAB9FFE2C6FF
          E6CFFFE8D4FFEBD9FFEEE0FFEFE2FFF2E0DCC0A7AFB0B3FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA5A8AAE2C4A6FFE1C0FFEEDEFFEDDDFFE5CEFFE2C8FFE5CDFFE8
          CDBAAEA0CDCED0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D6D8A99E90FDD7B1FF
          EED9FFFBF5FFF6EBFFF2E5FFF5E1EDD2B7A1A09DFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB6B7B9B6A18EF2D8BEFFF6E8FFF7EAFCF1E4E1D2C29D98
          96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C4C59B
          9793ACA298B4ACA3A59E97ABAAAAFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
    object GroupBox46: TGroupBox
      Tag = -1
      Left = 370
      Top = 224
      Width = 80
      Height = 41
      Caption = '4'#186' Aval '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 30
      object DBdtId_CodQuartoAval: TDBEdit
        Left = 8
        Top = 16
        Width = 43
        Height = 19
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'Id_CodQuartoAvalista'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBdtId_CodQuartoAvalExit
        OnKeyPress = OnKeyPressInteiro
      end
      object BitBtn9: TBitBtn
        Left = 55
        Top = 17
        Width = 22
        Height = 21
        TabOrder = 1
        TabStop = False
        OnClick = BitBtn9Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFC5C5C5
          979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA7A2A579797A959595FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B5B7
          E7E5E76B6B6BBABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B3B5E5E3E5656565D6D6D6FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBBB4B7DFDDDF787878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDDBBB5B6818081A7A7A7D4
          D5D5A4A5A6A4A5A5A4A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDFDEDFADA8A954575AA6A09AC7C8C9C7C8C9C1BEBB767878C0C0
          C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9092DCD8D4FE
          FBF8FFFCFAFEF9F4FEF8F3FBF1E78C8987B9B9B9FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDCDCDCA2A09BFFF4E6FFFCF8FFF7EFFFFAF5FFF9F1FFF6E9FAE3
          CC848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9ABACECD7C3FFF1E3FF
          EEDEFFF9F5FFF7F1FFF4EBFFF3E8FFEFD9BDAEA0B2B3B4FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA1A1A1FEE0C2FFEAD5FFEBDAFFF8F1FFF4ECFFF2E7FFF1E4FFF1
          DDDFC3A99DA0A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9D9FFDDAB9FFE2C6FF
          E6CFFFE8D4FFEBD9FFEEE0FFEFE2FFF2E0DCC0A7AFB0B3FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA5A8AAE2C4A6FFE1C0FFEEDEFFEDDDFFE5CEFFE2C8FFE5CDFFE8
          CDBAAEA0CDCED0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D6D8A99E90FDD7B1FF
          EED9FFFBF5FFF6EBFFF2E5FFF5E1EDD2B7A1A09DFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB6B7B9B6A18EF2D8BEFFF6E8FFF7EAFCF1E4E1D2C29D98
          96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C4C59B
          9793ACA298B4ACA3A59E97ABAAAAFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
    object GroupBox55: TGroupBox
      Tag = -1
      Left = 105
      Top = 49
      Width = 60
      Height = 41
      Caption = 'Cen'#225'rio '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 31
      object DBEdit33: TDBEdit
        Left = 9
        Top = 16
        Width = 38
        Height = 19
        Color = clBtnFace
        Ctl3D = False
        DataField = 'CodigoCenario'
        DataSource = DSProposta
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 12
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = OnExit
      end
    end
    object GroupBox47: TGroupBox
      Left = 806
      Top = 94
      Width = 133
      Height = 41
      Caption = 'CDI OVER * '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 32
      object DBEdit23: TDBEdit
        Left = 11
        Top = 19
        Width = 119
        Height = 19
        Color = clInfoBk
        Ctl3D = False
        DataField = 'ProTaxaSelic'
        DataSource = DSProposta
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox50: TGroupBox
      Tag = -1
      Left = 715
      Top = 141
      Width = 69
      Height = 41
      Caption = 'CET % AA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 33
      object DBEdit13: TDBEdit
        Left = 8
        Top = 16
        Width = 55
        Height = 19
        Hint = 'Custo efetivo total'
        Ctl3D = False
        DataField = 'CustoEfetivoTotal'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 6
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBEditTaxaTacExit
        OnKeyPress = OnKeyPressFloat
      end
    end
    object GroupBox51: TGroupBox
      Left = 735
      Top = 94
      Width = 70
      Height = 41
      Caption = 'IGPM '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 34
      object DBEdit28: TDBEdit
        Left = 8
        Top = 16
        Width = 57
        Height = 19
        Color = clInfoBk
        Ctl3D = False
        DataSource = DSProposta
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object DBRGTipoGarantia: TDBRadioGroup
      Left = 531
      Top = 183
      Width = 129
      Height = 42
      Caption = 'Tipo de Garantia '
      Columns = 2
      DataField = 'PROTPCONTR'
      DataSource = DSProposta
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Outras'
        'Im'#243'vel')
      ParentBackground = True
      ParentFont = False
      TabOrder = 35
      TabStop = True
      Values.Strings = (
        'N'
        'I')
      OnEnter = OnEnter
    end
    object GroupBox54: TGroupBox
      Tag = -1
      Left = 663
      Top = 183
      Width = 68
      Height = 42
      Caption = 'MIP '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 36
      object DBEdit34: TDBEdit
        Left = 9
        Top = 16
        Width = 50
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnEnter = OnEnter
        OnKeyPress = FormKeyPress
      end
    end
    object GroupBox52: TGroupBox
      Tag = -1
      Left = 553
      Top = 224
      Width = 81
      Height = 41
      Caption = 'DFI '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 37
      object DBEdit32: TDBEdit
        Left = 11
        Top = 16
        Width = 61
        Height = 19
        CharCase = ecUpperCase
        Color = clSilver
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = OnExit
        OnKeyPress = FormKeyPress
      end
    end
    object GroupBox53: TGroupBox
      Tag = -1
      Left = 453
      Top = 224
      Width = 97
      Height = 41
      Caption = '% Tx. Gest'#227'o '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 38
      object DBEdit31: TDBEdit
        Left = 11
        Top = 16
        Width = 72
        Height = 19
        CharCase = ecUpperCase
        Color = clInfoBk
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = OnExit
        OnKeyPress = FormKeyPress
      end
    end
    object GroupBox67: TGroupBox
      Left = 638
      Top = 224
      Width = 115
      Height = 41
      Caption = 'Valor Im'#243'vel '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 39
      object MaskEdit1: TMaskEdit
        Left = 8
        Top = 16
        Width = 97
        Height = 19
        Color = clSilver
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnKeyPress = OnKeyPressFloat
      end
    end
    object ReservaContrato: TGroupBox
      Tag = -1
      Left = 735
      Top = 183
      Width = 209
      Height = 42
      Caption = 'Reservar Contrato '
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 40
      object DBEditContrato: TDBEdit
        Left = 6
        Top = 16
        Width = 165
        Height = 19
        Ctl3D = False
        DataField = 'ContratoReservado'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnEnter = OnEnter
        OnKeyPress = OnKeyPressInteiro
      end
      object BitBtnReservaContrato: TBitBtn
        Left = 177
        Top = 10
        Width = 27
        Height = 25
        TabOrder = 1
        OnClick = BitBtnReservaContratoClick
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003333333333333333333300003333333330033003300300003333
          3333300330033003000033303333333333333333000033000333333333333333
          000030F000333333333333330000330F000333333333333300003330F0000000
          73333333000033330F0078887033333300003333300788FF8703333300003333
          30788888F877333300003333308888888F80333300003333307888888F803333
          000033333078FF8888803333000033333777FF88887733330000333333077888
          8703333300003333333077777033333300003333333370007333333300003333
          33333333333333330000}
      end
    end
    object GroupBox68: TGroupBox
      Left = 246
      Top = 183
      Width = 112
      Height = 42
      Caption = 'Tx.Abert de Cr'#233'dito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
      object DBEditTaxaAberturaCredito: TDBEdit
        Left = 22
        Top = 16
        Width = 66
        Height = 19
        Ctl3D = False
        DataField = 'TaxaAberturaCredito'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 6
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = DBEditTaxaAberturaCreditoExit
        OnKeyPress = OnKeyPressFloat
      end
    end
    object GroupBox60: TGroupBox
      Left = 755
      Top = 224
      Width = 122
      Height = 41
      Caption = 'Renegocia'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 41
      object BitBtnPegaRenegociacao: TBitBtn
        Left = 90
        Top = 14
        Width = 27
        Height = 21
        TabOrder = 0
        TabStop = False
        OnClick = BitBtnPegaRenegociacaoClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFC5C5C5
          979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA7A2A579797A959595FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B5B7
          E7E5E76B6B6BBABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B3B5E5E3E5656565D6D6D6FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBBB4B7DFDDDF787878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDDBBB5B6818081A7A7A7D4
          D5D5A4A5A6A4A5A5A4A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDFDEDFADA8A954575AA6A09AC7C8C9C7C8C9C1BEBB767878C0C0
          C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9092DCD8D4FE
          FBF8FFFCFAFEF9F4FEF8F3FBF1E78C8987B9B9B9FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDCDCDCA2A09BFFF4E6FFFCF8FFF7EFFFFAF5FFF9F1FFF6E9FAE3
          CC848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9ABACECD7C3FFF1E3FF
          EEDEFFF9F5FFF7F1FFF4EBFFF3E8FFEFD9BDAEA0B2B3B4FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA1A1A1FEE0C2FFEAD5FFEBDAFFF8F1FFF4ECFFF2E7FFF1E4FFF1
          DDDFC3A99DA0A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9D9FFDDAB9FFE2C6FF
          E6CFFFE8D4FFEBD9FFEEE0FFEFE2FFF2E0DCC0A7AFB0B3FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA5A8AAE2C4A6FFE1C0FFEEDEFFEDDDFFE5CEFFE2C8FFE5CDFFE8
          CDBAAEA0CDCED0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D6D8A99E90FDD7B1FF
          EED9FFFBF5FFF6EBFFF2E5FFF5E1EDD2B7A1A09DFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB6B7B9B6A18EF2D8BEFFF6E8FFF7EAFCF1E4E1D2C29D98
          96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C4C59B
          9793ACA298B4ACA3A59E97ABAAAAFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object DBEditRenegociacao: TDBEdit
        Left = 13
        Top = 16
        Width = 71
        Height = 19
        Ctl3D = False
        DataField = 'Id_Proposta'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 6
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnEnter = OnEnter
        OnExit = DBEditFatorCorrecaoExit
        OnKeyPress = OnKeyPressFloat
      end
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 784
      Top = 141
      Width = 155
      Height = 41
      Caption = 'Domicilio Bancario'
      Columns = 2
      DataField = 'ProDomicilioBancario'
      DataSource = DSProposta
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentBackground = True
      TabOrder = 42
      Values.Strings = (
        'SIM'
        'NAO')
    end
  end
  object PageControl1: TPageControl
    Left = 352
    Top = 266
    Width = 601
    Height = 209
    ActivePage = TabSheet2
    Style = tsFlatButtons
    TabOrder = 2
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Cadastro de Itens'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 0
        Width = 593
        Height = 178
        Align = alClient
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        TabOrder = 0
        object GroupBox19: TGroupBox
          Left = 7
          Top = 3
          Width = 57
          Height = 39
          Caption = 'Parcela '
          TabOrder = 0
          object DBEdit17: TDBEdit
            Left = 8
            Top = 15
            Width = 39
            Height = 19
            TabStop = False
            CharCase = ecUpperCase
            Color = clBtnFace
            Ctl3D = False
            DataField = 'ITEORDE'
            DataSource = DSParcela
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object GroupBox21: TGroupBox
          Left = 69
          Top = 3
          Width = 87
          Height = 39
          Caption = 'Vencimento '
          TabOrder = 1
          object DBEditVencimento: TDBEdit
            Left = 10
            Top = 15
            Width = 68
            Height = 19
            Ctl3D = False
            DataField = 'ITEDTVE'
            DataSource = DSParcela
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnEnter = OnEnter
            OnExit = OnExit
            OnKeyDown = DataNoDBEdit
            OnKeyPress = OnKeyPressInteiro
          end
        end
        object GroupBox20: TGroupBox
          Left = 312
          Top = 3
          Width = 99
          Height = 39
          Caption = 'Valor '
          TabOrder = 3
          object DBEditValorTitulo: TDBEdit
            Left = 7
            Top = 15
            Width = 86
            Height = 19
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DataField = 'ITEVRTI'
            DataSource = DSParcela
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 12
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel2: TPanel
          Left = 7
          Top = 125
          Width = 314
          Height = 37
          BevelInner = bvLowered
          BevelOuter = bvNone
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 9
          object DBNvgtrItens: TDBNavigator
            Left = 1
            Top = 1
            Width = 312
            Height = 35
            Cursor = crHandPoint
            DataSource = DSParcela
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel]
            Align = alClient
            Ctl3D = True
            Hints.Strings = (
              'Primeiro registro'
              'Registro anterior'
              'Pr'#243'ximo registro'
              #218'ltimo registro'
              'Novo registro'
              'Excluir registro'
              'Alterar registro'
              'Salvar registro'
              'Cancelar Processo'
              'Atualizar registros'
              '')
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = True
          end
        end
        object GroupBox25: TGroupBox
          Left = 7
          Top = 46
          Width = 60
          Height = 39
          Caption = 'Prazo '
          TabOrder = 4
          object DBEdit18: TDBEdit
            Left = 7
            Top = 15
            Width = 45
            Height = 19
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DataField = 'ITEPRAZ'
            DataSource = DSParcela
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 12
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object GroupBox18: TGroupBox
          Left = 412
          Top = 45
          Width = 106
          Height = 40
          Caption = 'Amortiza'#231#227'o '
          TabOrder = 8
          object DBEdit10: TDBEdit
            Left = 8
            Top = 15
            Width = 92
            Height = 19
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DataField = 'IteAmortizacao'
            DataSource = DSParcela
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object GroupBox23: TGroupBox
          Left = 164
          Top = 45
          Width = 68
          Height = 40
          Caption = 'Intervalor '
          TabOrder = 5
          object DBEdit16: TDBEdit
            Left = 8
            Top = 15
            Width = 45
            Height = 19
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DataField = 'iteintervalo'
            DataSource = DSParcela
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object GroupBox32: TGroupBox
          Left = 422
          Top = 3
          Width = 96
          Height = 39
          Caption = 'Juros '
          TabOrder = 7
          object DBEdit20: TDBEdit
            Left = 8
            Top = 15
            Width = 82
            Height = 19
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DataField = 'IteJuros'
            DataSource = DSParcela
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object GroupBox33: TGroupBox
          Left = 236
          Top = 45
          Width = 83
          Height = 40
          Caption = 'IOF '
          TabOrder = 6
          object DBEdit21: TDBEdit
            Left = 8
            Top = 15
            Width = 67
            Height = 19
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DataField = 'ITEVRIO'
            DataSource = DSParcela
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object GroupBox35: TGroupBox
          Left = 163
          Top = 3
          Width = 142
          Height = 39
          Caption = 'Perct.da PMT '
          TabOrder = 2
          object DBdtPercentualValorPMT: TDBEdit
            Left = 6
            Top = 15
            Width = 128
            Height = 19
            Ctl3D = False
            DataField = 'ItePercentualValorPMT'
            DataSource = DSParcela
            ParentCtl3D = False
            TabOrder = 0
            OnEnter = OnEnter
            OnExit = DBdtPercentualValorPMTExit
            OnKeyPress = OnKeyPressFloat
          end
        end
        object GroupBox44: TGroupBox
          Left = 73
          Top = 45
          Width = 87
          Height = 40
          Caption = 'Venc.Real '
          TabOrder = 10
          object DBEdit24: TDBEdit
            Left = 10
            Top = 15
            Width = 67
            Height = 19
            Color = clSilver
            Ctl3D = False
            DataField = 'IteVencimentoReal'
            DataSource = DSParcela
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            OnKeyDown = DataNoDBEdit
            OnKeyPress = OnKeyPressInteiro
          end
        end
        object GroupBox28: TGroupBox
          Left = 327
          Top = 45
          Width = 80
          Height = 40
          Caption = 'IOF Comp.'
          TabOrder = 11
          object DBEdit25: TDBEdit
            Left = 8
            Top = 15
            Width = 64
            Height = 19
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DataField = 'ITEVRIOFC'
            DataSource = DSParcela
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object GroupBox48: TGroupBox
          Left = 382
          Top = 89
          Width = 136
          Height = 39
          Caption = 'Vlr Futuro da Parcela '
          TabOrder = 12
          object DBEdit26: TDBEdit
            Left = 10
            Top = 15
            Width = 120
            Height = 19
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DataField = 'IteValorFuturo'
            DataSource = DSParcela
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object GroupBox61: TGroupBox
          Left = 8
          Top = 85
          Width = 113
          Height = 37
          Caption = 'IOF Aproveitamento'
          TabOrder = 13
          object DBEdit35: TDBEdit
            Left = 17
            Top = 15
            Width = 75
            Height = 19
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DataField = 'ItemVrIOFAproveitamento'
            DataSource = DSParcela
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object GroupBox62: TGroupBox
          Left = 136
          Top = 85
          Width = 96
          Height = 37
          Caption = 'IOF Cobrado'
          TabOrder = 14
          object DBEdit36: TDBEdit
            Left = 10
            Top = 15
            Width = 67
            Height = 19
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DataField = 'ItemVrIOFCobrado'
            DataSource = DSParcela
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Vis'#227'o Geral'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 593
        Height = 178
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 591
          Height = 176
          Align = alClient
          BorderStyle = bsNone
          Color = clBtnFace
          Ctl3D = True
          DataSource = DSParcela
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = DMDados.PopupMenu
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Alignment = taCenter
              Color = clWindow
              Expanded = False
              FieldName = 'ITEORDE'
              Title.Alignment = taCenter
              Title.Caption = 'Parcela'
              Title.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = True
            end
            item
              Color = clWindow
              Expanded = False
              FieldName = 'IteVencimentoReal'
              Title.Caption = 'Vencto Real'
              Title.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clWindow
              Expanded = False
              FieldName = 'ITEDTVE'
              Title.Alignment = taCenter
              Title.Caption = 'Dt.Vencimento'
              Title.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 85
              Visible = True
            end
            item
              Color = clWindow
              Expanded = False
              FieldName = 'ITEVRTI'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Valor Parcela'
              Title.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 94
              Visible = True
            end
            item
              Color = clWindow
              Expanded = False
              FieldName = 'ITEVRIO'
              Title.Alignment = taCenter
              Title.Caption = 'IOF'
              Title.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 78
              Visible = True
            end
            item
              Color = clWindow
              Expanded = False
              FieldName = 'IteJuros'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Juros'
              Title.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 81
              Visible = True
            end
            item
              Color = clWindow
              Expanded = False
              FieldName = 'IteAmortizacao'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Amortiza'#231#227'o'
              Title.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clWindow
              Expanded = False
              FieldName = 'IteTipoparcela'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Parcela'
              Title.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 90
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clWindow
              Expanded = False
              FieldName = 'ITEPRAZ'
              Title.Alignment = taCenter
              Title.Caption = 'Prazo'
              Title.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clWindow
              Expanded = False
              FieldName = 'IteFatorPrazo'
              Title.Alignment = taCenter
              Title.Caption = 'Fator Prazo'
              Title.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 81
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clWindow
              Expanded = False
              FieldName = 'IteFatorIntervalo'
              Title.Alignment = taCenter
              Title.Caption = 'Fator Intervalo'
              Title.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clWindow
              Expanded = False
              FieldName = 'iteintervalo'
              Title.Alignment = taCenter
              Title.Caption = 'Intervalo'
              Title.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = True
            end
            item
              Color = clWindow
              Expanded = False
              FieldName = 'CodigoSacado'
              Title.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = True
            end
            item
              Color = clWindow
              Expanded = False
              FieldName = 'ItePrazoIOF'
              Title.Caption = 'PrazoIOF'
              Title.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 146
              Visible = True
            end>
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Informa'#231#245'es das Garantias'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object ScrollBoxGarantias: TScrollBox
        Left = 0
        Top = 0
        Width = 593
        Height = 178
        VertScrollBar.Position = 20
        Align = alClient
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        Enabled = False
        TabOrder = 0
        object Bevel1: TBevel
          Left = 4
          Top = 132
          Width = 498
          Height = 44
          Shape = bsBottomLine
        end
        object DBCheckBox8: TDBCheckBox
          Left = 8
          Top = 110
          Width = 329
          Height = 17
          Caption = 'Penhor Agricula ou Pecu'#225'rio conforme instrumento(s) anexo(s).'
          DataField = 'ProInfoGarantiasI'
          DataSource = DSProposta
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'SIM'
          ValueUnchecked = 'NAO'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 8
          Top = 76
          Width = 265
          Height = 17
          Caption = 'Penhor Mercantil conforme instrumento(s) anexo(s).'
          DataField = 'ProInfoGarantiasH'
          DataSource = DSProposta
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'SIM'
          ValueUnchecked = 'NAO'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 8
          Top = 2
          Width = 233
          Height = 17
          Caption = 'Hipoteca conforme instrumento(s) anexo(s).'
          DataField = 'ProInfoGarantiasF'
          DataSource = DSProposta
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'SIM'
          ValueUnchecked = 'NAO'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 8
          Top = 32
          Width = 289
          Height = 17
          Caption = 'Aliena'#231#227'o Fiduci'#225'ria conforme instrumento(s) anexo(s).'
          DataField = 'ProInfoGarantiasG'
          DataSource = DSProposta
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          ValueChecked = 'SIM'
          ValueUnchecked = 'NAO'
        end
        object CBOutras: TCheckBox
          Left = 7
          Top = 128
          Width = 57
          Height = 17
          Caption = 'Outras:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = CBOutrasClick
        end
        object DBCheckBox4: TDBCheckBox
          Left = 8
          Top = 93
          Width = 353
          Height = 17
          Caption = 
            'Desconto de direitos ou cr'#233'ditos conforme instrumento(s) anexo(s' +
            ').'
          DataField = 'ProInfoGarantiasD'
          DataSource = DSProposta
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'SIM'
          ValueUnchecked = 'NAO'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 8
          Top = 61
          Width = 321
          Height = 17
          Caption = 'Desconto de t'#237'tulos de cr'#233'dito coforme instrumento(s) anexo(s).'
          DataField = 'ProInfoGarantiasC'
          DataSource = DSProposta
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          ValueChecked = 'SIM'
          ValueUnchecked = 'NAO'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 8
          Top = 17
          Width = 332
          Height = 17
          Caption = 'Penhor de Titulos de cr'#233'dito conforme instrumento(s) anexo(s).'
          DataField = 'ProInfoGarantiasB'
          DataSource = DSProposta
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          ValueChecked = 'SIM'
          ValueUnchecked = 'NAO'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 8
          Top = -14
          Width = 49
          Height = 17
          Caption = 'Aval'
          DataField = 'ProInfoGarantiasA'
          DataSource = DSProposta
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          ValueChecked = 'SIM'
          ValueUnchecked = 'NAO'
        end
        object DBCheckBox9: TDBCheckBox
          Left = 8
          Top = 145
          Width = 65
          Height = 17
          Caption = 'N'#227'o h'#225'.'
          DataField = 'ProInfoGarantiasJ'
          DataSource = DSProposta
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          ValueChecked = 'SIM'
          ValueUnchecked = 'NAO'
        end
        object DBEdtOutros: TDBEdit
          Left = 70
          Top = 127
          Width = 425
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'ProInfoGarantiasE'
          DataSource = DSProposta
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
          OnEnter = OnEnter
          OnExit = OnExit
        end
        object DBCheckBox10: TDBCheckBox
          Left = 8
          Top = 46
          Width = 329
          Height = 17
          Caption = 'Cess'#227'o Fiduci'#225'ria de Direitos conforme instrumento(s) anexo(s).'
          DataField = 'ProInfoGarantiasL'
          DataSource = DSProposta
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          ValueChecked = 'SIM'
          ValueUnchecked = 'NAO'
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Forma de Pagamento'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 593
        Height = 178
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object MemoFormaPagamento: TDBMemo
          Left = 1
          Top = 1
          Width = 591
          Height = 176
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = True
          DataField = 'ProFormaPagamento'
          DataSource = DSProposta
          ParentCtl3D = False
          ScrollBars = ssBoth
          TabOrder = 0
          OnKeyPress = MemoFormaPagamentoKeyPress
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Par'#226'metros Operacionais'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 593
        Height = 178
        Align = alClient
        TabOrder = 0
        object grpMora: TGroupBox
          Left = 5
          Top = 5
          Width = 90
          Height = 40
          Caption = '  Mora:  '
          TabOrder = 0
          object DBEdit37: TDBEdit
            Left = 2
            Top = 15
            Width = 86
            Height = 23
            Align = alClient
            DataField = 'ProMora'
            DataSource = DSProposta
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object grpVias: TGroupBox
          Left = 100
          Top = 5
          Width = 90
          Height = 40
          Caption = '  Vias N'#186' :  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object DBEdit38: TDBEdit
            Left = 2
            Top = 15
            Width = 86
            Height = 23
            Align = alClient
            DataField = 'ProVias'
            DataSource = DSProposta
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object GroupBox56: TGroupBox
          Left = 5
          Top = 51
          Width = 185
          Height = 118
          Caption = ' TEO '
          TabOrder = 2
          object Label2: TLabel
            Left = 8
            Top = 15
            Width = 24
            Height = 13
            Caption = 'Taxa'
          end
          object Label3: TLabel
            Left = 8
            Top = 58
            Width = 24
            Height = 13
            Caption = 'Valor'
          end
          object DBEdit39: TDBEdit
            Left = 8
            Top = 31
            Width = 121
            Height = 21
            DataField = 'PROTXTEO'
            DataSource = DSProposta
            TabOrder = 0
          end
          object DBEdit40: TDBEdit
            Left = 8
            Top = 74
            Width = 121
            Height = 21
            DataField = 'PROVRTEO'
            DataSource = DSProposta
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 475
    Width = 955
    Height = 34
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    object BitBtnAlterar: TBitBtn
      Left = 3
      Top = 3
      Width = 80
      Height = 29
      Cursor = crHandPoint
      Caption = 'Alterar'
      Enabled = False
      TabOrder = 0
      OnClick = BitBtnAlterarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000000000000000000000010000000000007F7F7F00A26E
        4B00B5846400AE958800AB988D00AB998D00A59D95009EA29F009EA39F0098A8
        A80098A9A80091AEB10091AEB2008BB3B9008CB2B90088B6BF00DFC7BA00FBED
        CF00F7EBE000F7EAE100F8EBE000F8EAE100F8EBE100F9EFE700F9EFE800FBF3
        EE00FBF4EE00FAF4EF00FBF4EF00FCF8F500FDF8F500FCF9F500FDF9F500FCF8
        F600FCF9F6000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000341D960000000000C805
        910000AA0F00001E960051059100781305006D059100000000003D0491000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002802000000000000000000000000
        0000000000000000000000000000CE339100A0780000501B9600000005000420
        960018EE9000C0409100FFFFFF00BB4091008ED6010045000000441D96008000
        10000420960018EE900070059100FFFFFF00000000003D049100781E96005F09
        8100000000000100000002000000F41F96001800000000000000601E96004200
        000000000000441E96000000000000000000000000000C000000020000000101
        900000DCFD008A000000000000000200000092001A0008AA0F000000000008AA
        0F0005000000AFE080009C1E96004F1A8000B001000000000000000000000000
        0000020000008000000000000000DC1F96007FE94B0098813F00000000000000
        0000D01F9600020000008000000000000000000100006420960041BDD200433A
        5C006F637500656E740020616E002053650074696E00735C4C0063617300532E
        41004D65750020646F00756D6500746F7300626D70004A424D005C746500742E
        62007000960000000000C805910040540C000700000051059100D80705006D05
        910007000000040000000000000045934B0038000000DE030200020000002000
        000000000000281005003487D200DE03020038000000D02F000000003F00641D
        960038000000B01F960018EE9000F0069100FFFF010007000000E41E96000000
        3F00D81F960018EE900070059100FFFFFF006D05910081E9490000003F000000
        000028100500000000003020960041BDD2006030E900CE100500000000000000
        01000C00000000000000010000000F000000B67C460098813F00000000000000
        0000000000000000000000000102100201000000000000000000000000000100
        0000000000000000000000000000010000000000000000000000000303030103
        030303030303030303030005111D011D1D2121211D1D1D1D1F040006111F011E
        201E1E1E21211E1E22060008111A01191C1C1C1C1B1B1C1C1C07000911170118
        1817171718181818170A000B111301131615151512121414160C000E11110111
        1111111111111111110D000F0F0F010F0F0F0F0F0F0F0F0F0F0F000000000100
        0000000000000000000000000000010000000000000000000000000001021002
        0100000000000000000000000000000000000000000000000000}
    end
    object BitBtnSalvar: TBitBtn
      Left = 99
      Top = 3
      Width = 80
      Height = 29
      Cursor = crHandPoint
      Caption = 'Salvar'
      Enabled = False
      TabOrder = 1
      OnClick = BitBtnSalvarClick
      Glyph.Data = {
        B2050000424DB205000000000000360400002800000013000000130000000100
        0800000000007C010000400B0000400B00000001000000000000FDF9F900FDFA
        FA00FEFCFC00FDFBFB00FEFDFD00FDFCFC00703C300074413600714034007341
        360073413600976F65009A746B009A756C00D2AAA000D8B3AA00DCB8B000DAB6
        AE00FCF8F70093695E00936C6100956D6100936D6100956E6300987166009770
        650097716600966F650098716700987167009771670099736900987168009873
        69009A756B0099746900CA9E9200CCA19500CEA39800D3ADA300D6B1A700F7EC
        E900F9F2F000985F4E00996150009D6655009D6756009F695800A06959009269
        5E00936B5F00C89D9000CBA09300CFA79B00996451009A6451009B6553009964
        51009E6856009F695700A16B59009F695800A26D5900A26D5B00A16D5900A370
        5D00A36F5D00A8756100AA796700DCBAAE00F5EAE600F8EFEC00F9F1EE00FAF3
        F200FCF9F800FBF8F700FAF7F600A26E5900A3705C00AE7F6D00B0826F00B387
        7500C19D8E00F1E3DF00F3E7E200FBF6F300F9F3F200F8F3F100B3897600B389
        7700B88F7D00B78F7D00B9917F00B68E7D00B68F7D00B8917F00B78F7E00BA93
        8100B9928100B8918000BB938300BD978600BD988700BC978600BF9A8900BE99
        8800C19C8B00BF9A8A00C29F8F00C19E8E00C19E8F00C3A29200C3A19100C3A2
        9300C5A39500CBAB9C00C9A99A00CCAEA000CFB1A300DBBCAE00CFB2A500DFC1
        B300E1C5B800E3CABF00EDDBD300F6EDE900FAF3F000F5EEEB00BA938200BB95
        8300BD988600C3A19000C7A69600C9A99900C7A79700C7A89800CAAB9B00C9AA
        9A00CBAC9D00CAAB9C00CCAE9F00DDBEAF00D9BBAC00CEB1A300D1B5A700DBBF
        B100DABEB000D3B9AC00D3BAAD00DDC3B600D7BEB100D6BDB000DEC5B900D8C0
        B300D8C1B500E1C9BD00E2CBBF00DBC3B900DAC3B800E7D0C300DCC6BB00EBD7
        CD00EAD6CC00F1E7E200FAF6F300FBF9F800C5A59300CBAD9D00CDB0A000CCAF
        9F00CFB2A200D7BAAA00D2B9AB00DFC7BA00DBC3B700DFC8BB00DBC5B900D6C1
        B500E2CCC000EDE0D900EFE3DE00F3EDE900CFB3A300D2B8A800D0B6A600D5BE
        B000DAC3B500DBC5B800D6C2B600D9C7BC00E9D9CF00F3EBE600F1E9E300F7F2
        EF00F5F0ED00D1B9A900D6C2B500DCCFC600FAF7F500DACDC300DCCEC300DACE
        C300DED3CA00E2D9D200E0D6CD00DED3CB00E0D7CF00E1D9D100E3DCD300E3DD
        D600E3DCD500E5DFD900FDFCFB00E3DBD200C0C0C00000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000D60A0A0A0A09
        090909090909090909090909D6001B60601010110F28270E3526253424332B2B
        09001B616157D5CCC8BDC4B9C3B6A8A788772C2C06001B64645656C17FBFB3B2
        AF95928EAB8D2C2C06000B8282A4D2CBCECDC5C9BCACB8AAA9792C2C06000B6A
        6AC6C656C17FBFA3B4BEAD95917A2C2C0600196C6C4CD3D1D0CFCCCAC5C7B1AC
        B77B362C0600196F6F4B4BC656C1C2B5BFA3B49C9B9F373906001A8684A5A54B
        C656C1C2B5BFC07CA1A22D38060018898A85867183526982805F5D58504F3B2E
        06001C758C888772706E686681635E593F3C3D3A06001D78768C8B74A66F6D6B
        6781635B414D302F06002090908F757385A66F6D6865816251413E3006001F94
        93000103020202021249484653454E400600239697044DBBAE040404044A4948
        7D54434206000C9A99044D98BA0404040404D4127E485A440600229D9E044D4D
        4D040404040404054A55615C08000DA0B00429472A040404040404040404615C
        0700D60D22222321201E1A191717151614321331D600}
    end
    object BitBtnCancelar: TBitBtn
      Left = 290
      Top = 3
      Width = 80
      Height = 29
      Cursor = crHandPoint
      Caption = 'Cancelar'
      Enabled = False
      TabOrder = 2
      OnClick = BitBtnCancelarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9696C05F60B43B3DA232339941419E686897AAA9BDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACADDA474CCA333CE5323BEE31
        39EF3038EF2E35EF2D31E62627B459598DDDDCE3FFFFFFFFFFFFFFFFFFFFFFFF
        9296E63641E63743EF3841EA545BED7075F05C61EE3C42EB2E33EC2D32EE2B30
        DF3E3E82DFDEE6FFFFFFFFFFFFACB0F13B46E73A45EC6169EAC4C7F8FFFFFFFF
        FFFFFFFFFFDEDFFB6F74ED2E34E82D33ED2B2EDF55558CFFFFFFDEE0FB4D57E9
        3E49EB646AD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF595FE73038EB2E34
        EA2D34EE2728B2ABABC19DA2F2414DEA424BD3CACADFFFFFFFFFFFFFFFFFFFFF
        FFFFDBDDF75157E3323AEA383FE55A5EE92E34ED2C32E56766996770EA4451F0
        5B5EB1FFFFFFFFFFFFFFFFFFFFFFFFDDDEF7535AE3353EEB3840E5B5B7EFDDDE
        FA3B41EC2F36EF41419D545EE84553EF686999FFFFFFFFFFFFFFFFFFDCDDF655
        5CE23844EA3640E4AAADEDFFFFFFFFFFFF5C62EE3038EF3133985761E74756EF
        606094FFFFFFFFFFFFFFFFFF5960E13B46E93E48E4ADB0EDFFFFFFFFFFFFFFFF
        FF7177F03139EE3B3DA35763E74A58F1454696FFFFFFFFFFFF5C63E3404BE93C
        47E2ADB0ECFFFFFFFFFFFFFFFFFFFFFFFF535BEC323CEF5E60B57C84EC4C58EA
        3F47BE7676A16870E4434FE8444FE4AFB3EDFFFFFFFFFFFFFFFFFFFFFFFFC7C9
        F93B44EB333CE89596BFB2B7F44D58E64A55E54550DA4653E6525DEBB9BCF4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF616AEE3742EF434ACDFFFFFFFFFFFF737BEA
        4D58E54B57E94955E76767AAFFFFFFFFFFFFFFFFFFFFFFFFCACBE16268D23A44
        EC3843E7ABACD6FFFFFFFFFFFFD9DBF95F68E64C58E54B56E53F46BB41438E5D
        5F906869965B5FB43E48D13D49EB3C46E89196E4FFFFFFFFFFFFFFFFFFFFFFFF
        D8DAF9737CEB4D58E54C58EB4A58F04855F14652F04551EF424EEB515AE9AAAE
        EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B9F47D85ED5963E756
        60E8545EE8676FEA9CA2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitBtnExcluir: TBitBtn
      Left = 386
      Top = 3
      Width = 80
      Height = 29
      Cursor = crHandPoint
      Caption = 'Excluir'
      Enabled = False
      TabOrder = 3
    end
    object BitBtnFechar: TBitBtn
      Left = 194
      Top = 3
      Width = 80
      Height = 29
      Cursor = crHandPoint
      Caption = 'Fechar'
      Enabled = False
      TabOrder = 4
      OnClick = BitBtnFecharClick
    end
    object BitBtnSair: TBitBtn
      Left = 798
      Top = 3
      Width = 80
      Height = 29
      Cursor = crHandPoint
      Caption = 'Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtnSairClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF824B4B4E1E1FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF824B4B824B4BA64B4BA9
        4D4D4E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        824B4B824B4BB64F50C24F50C54D4EB24D4E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFFFFFFFFFFFFFFFFFF824B4BD45859CB5556C95455C95253B7
        4F524E1E1FFE8B8CFB9A9CF8AAABF7B5B6F7B5B6824B4BFFFFFFFFFFFFFFFFFF
        824B4BD75C5DD05A5BCF595ACF5758BD53564E1E1F23B54A13C14816BD480CBC
        41F7B5B6824B4BFFFFFFFFFFFFFFFFFF824B4BDD6364D75F60D55E5FD55C5DC2
        575A4E1E1F2AB44D1CBF4C1EBC4C13BC45F7B5B6824B4BFFFFFFFFFFFFFFFFFF
        824B4BE36869DD6566DA6364DE6667C6595B4E1E1F26B14916BC481BBB4910BB
        43F7B5B6824B4BFFFFFFFFFFFFFFFFFF824B4BEB6D6EE26768E67E7FFAD3D4CC
        6E704E1E1FA5D89750D16F42C9662DC758F7B5B6824B4BFFFFFFFFFFFFFFFFFF
        824B4BF27374E96C6DEB8182FCD1D3CF6E704E1E1FFFF2CCFFFFD7FFFFD4E6FC
        C7F7B5B6824B4BFFFFFFFFFFFFFFFFFF824B4BF87879F07576EE7273F07374D1
        65664E1E1FFCEFC7FFFFD5FFFFD3FFFFD7F7B5B6824B4BFFFFFFFFFFFFFFFFFF
        824B4BFE7F80F77A7BF6797AF77779D76B6B4E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFFFFFFFFFFFFFFFFFF824B4BFF8384FC7F80FB7E7FFE7F80DA
        6E6F4E1E1FFCEFC7FFFFD5FFFFD3FFFFD5F7B5B6824B4BFFFFFFFFFFFFFFFFFF
        824B4BFF8889FF8283FF8182FF8283E073744E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFFFFFFFFFFFFFFFFFF824B4B824B4BE27576FE8182FF8687E5
        76774E1E1FFAEBC5FCFBD1FCFBCFFCFBD1F7B5B6824B4BFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF824B4B9C5657CB6C6DCF6E6E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF824B4B82
        4B4B4E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitBtnExportarParaBoleto: TBitBtn
      Left = 578
      Top = 3
      Width = 80
      Height = 29
      Hint = 'Exporta a simula'#231#227'o para o Cadastro de Boleto.'
      Caption = '&Exportar'
      DragCursor = crHandPoint
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtnExportarParaBoletoClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000000000000000000000010000000000005D4438005D5A
        4D007C6457007F7F7F0084766F00947D6500BD8F4E00A5855C00B38B54009A84
        7700106BA600116FA9001274AE001374AE001275AE001274AF001374AF001275
        AF001375AF00137BB400137AB5001580B9001580BA001581BA001684BD009EE6
        FC00C6F1FD00C7F1FD00C6F2FD00C7F2FD00EFFDFE0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000341D960000000000C805
        910030970700001E960051059100781305006D059100000000003D0491000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002802000000000000000000000000
        0000000000000000000000000000CE33910048810000501B9600000005000420
        960018EE9000C0409100FFFFFF00BB4091008ED6010045000000441D96008000
        10000420960018EE900070059100FFFFFF00000000003D049100781E96005F09
        8100000000000100000002000000F41F96001800000000000000601E96004200
        000000000000441E96000000000000000000000000000C000000020000000101
        900000FCFD008E000000000000000200000096001A0038970700000000003897
        070005000000AFE080009C1E96004F1A80008C01000000000000000000000000
        0000020000008000000000000000DC1F96007FE94B0038873F00000000000000
        0000D01F9600020000008000000000000000000100006420960041BDD200433A
        5C006F637500656E740020616E002053650074696E00735C4C0063617300532E
        41004D65750020646F00756D6500746F7300626D70004A424D005C6669007465
        7200626D700000000000C8059100884A12000700000051059100D80705006D05
        910007000000040000000000000045934B003800000066030400020000002000
        00000000000070DA0A003487D2006603040038000000B89C000000003F00641D
        960038000000B01F960018EE9000F0069100FFFF010007000000E41E96000000
        3F00D81F960018EE900070059100FFFFFF006D05910081E9490000003F000000
        000070DA0A00000000003020960041BDD2006030E900B5100500000000000000
        01000C00000000000000010000000F000000B67C460038873F00030303030304
        0303030903030303030303030303030401030309030303030303060807050404
        0401030903030303030303030303030401030302030303030303030303030304
        03030300030A0A03030303030303030303030303030B190B0303030303030310
        0C0E110F0D111919120303030303141C1C1D1A1A1D1C1B1A1A13030303030316
        1616161516151E1E17030303030303030303030303181E180303030303030304
        0303030003181803030303030303030401030302030303030303060807050404
        0401030903030303030303030303030401030309030303030303030303030304
        0303030903030303030303030303030303030303030303030303}
    end
    object BrnRelatario: TBitBtn
      Left = 482
      Top = 3
      Width = 80
      Height = 29
      Hint = 'Relat'#243'rio'
      Caption = 'Relatorio'
      DragCursor = crHandPoint
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BrnRelatarioClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000400B0000400B0000000100000000000000000000FFFF
        FF00F5F3F3003623240045403F00C2BDB900D3CBC300E2DAD300CCC6C000B8B5
        B200F8F7F600FBA64C008A6D4F0083591800635741008D6B2B0088817400EDEE
        D9005159410070884F00A8BE9300385F230097FFB300969A9A008A8B8B008A8B
        8C00AAABAE0086868A00ACACAC00AAAAAA009A9A9A0098989800969696008888
        88007979790077777700767676006767670053535300FFFFFF00000000000000
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
        0000000000000000000000000000000000000000000000000000272727271D1E
        1E1E20171E1D27272727272727271D0101010101011D27272727272727271D01
        0B14150D011D27272727171E20031D010B11130F011D03201717240202041D19
        0C10120E181C04020224241F1F070707070707070707071F1F24240909262626
        2626262626262609162224050526262626262626262626050524240808252525
        25252525252525080824242306222222222222222222220623242724241B2121
        2121212121211B242427272727271A0101010101011D27272727272727271D01
        01010101011D27272727272727271D0A0A0A0A0A0A1D27272727272727271D0A
        0A0A0A0A0A1D27272727272727271D1E17171E1E1E1D27272727}
    end
    object BtnContrato: TBitBtn
      Left = 673
      Top = 3
      Width = 109
      Height = 29
      Hint = 'Visualiza o contrato'
      Caption = 'Contrato'
      DragCursor = crHandPoint
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BtnContratoClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000400B0000400B0000000100000000000000000000FFFF
        FF00F5F3F3003623240045403F00C2BDB900D3CBC300E2DAD300CCC6C000B8B5
        B200F8F7F600FBA64C008A6D4F0083591800635741008D6B2B0088817400EDEE
        D9005159410070884F00A8BE9300385F230097FFB300969A9A008A8B8B008A8B
        8C00AAABAE0086868A00ACACAC00AAAAAA009A9A9A0098989800969696008888
        88007979790077777700767676006767670053535300FFFFFF00000000000000
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
        0000000000000000000000000000000000000000000000000000272727271D1E
        1E1E20171E1D27272727272727271D0101010101011D27272727272727271D01
        0B14150D011D27272727171E20031D010B11130F011D03201717240202041D19
        0C10120E181C04020224241F1F070707070707070707071F1F24240909262626
        2626262626262609162224050526262626262626262626050524240808252525
        25252525252525080824242306222222222222222222220623242724241B2121
        2121212121211B242427272727271A0101010101011D27272727272727271D01
        01010101011D27272727272727271D0A0A0A0A0A0A1D27272727272727271D0A
        0A0A0A0A0A1D27272727272727271D1E17171E1E1E1D27272727}
    end
  end
  object Panel5: TPanel
    Left = -1
    Top = 265
    Width = 354
    Height = 204
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 4
    object GroupBox16: TGroupBox
      Tag = -1
      Left = 6
      Top = 117
      Width = 112
      Height = 39
      Caption = 'Valor IOF(Compl) '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = True
      object DBEdit4: TDBEdit
        Left = 8
        Top = 15
        Width = 95
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'PROVRIOFC'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 12
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = OnKeyPressFloat
      end
    end
    object GroupBox30: TGroupBox
      Tag = -1
      Left = 6
      Top = 79
      Width = 112
      Height = 39
      Caption = 'Valor do IOF '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object DBEdit19: TDBEdit
        Left = 8
        Top = 14
        Width = 95
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'PROVRIO'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 14
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = OnKeyPressFloat
      end
    end
    object GroupBox22: TGroupBox
      Tag = -1
      Left = 6
      Top = 40
      Width = 112
      Height = 39
      Caption = 'PMT '
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object DBEdit6: TDBEdit
        Left = 8
        Top = 14
        Width = 95
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'ProValorPMT'
        DataSource = DSProposta
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object GroupBox31: TGroupBox
      Left = 122
      Top = 79
      Width = 112
      Height = 39
      Caption = 'Total de Tac'#39's '
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object DBEdit7: TDBEdit
        Left = 8
        Top = 14
        Width = 95
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'ProValorTacs'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object GroupBox29: TGroupBox
      Tag = -1
      Left = 236
      Top = 2
      Width = 112
      Height = 39
      Caption = 'Valor Principal '
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object DBEdit8: TDBEdit
        Left = 8
        Top = 14
        Width = 95
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'PROVRBO'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 14
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = OnKeyPressFloat
      end
    end
    object GroupBox34: TGroupBox
      Tag = -1
      Left = 122
      Top = 117
      Width = 112
      Height = 39
      Caption = 'Valor Financiado '
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      object DBEdit22: TDBEdit
        Left = 8
        Top = 15
        Width = 95
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'ProValorFinanciado'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 14
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = OnKeyPressFloat
      end
    end
    object GroupBox12: TGroupBox
      Tag = -1
      Left = 122
      Top = 40
      Width = 112
      Height = 39
      Caption = 'Valor a Liberar '
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      object DBEdit5: TDBEdit
        Left = 8
        Top = 14
        Width = 95
        Height = 19
        TabStop = False
        Color = clGreen
        Ctl3D = False
        DataField = 'ProValorLiberado'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 14
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = OnKeyPressFloat
      end
    end
    object GroupBox17: TGroupBox
      Tag = -1
      Left = 236
      Top = 40
      Width = 112
      Height = 39
      Caption = 'Taxa Efetiva '
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      object DBEdit9: TDBEdit
        Left = 8
        Top = 14
        Width = 95
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'PROTXEF'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 14
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = OnKeyPressFloat
      end
    end
    object GroupBox15: TGroupBox
      Tag = -1
      Left = 236
      Top = 79
      Width = 112
      Height = 39
      Caption = 'TIR '
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      object DBEdit2: TDBEdit
        Left = 8
        Top = 14
        Width = 95
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'ProTaxaInternaRetorno'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 14
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = OnKeyPressFloat
      end
    end
    object GroupBox49: TGroupBox
      Tag = -1
      Left = 236
      Top = 117
      Width = 112
      Height = 39
      Caption = 'Valor Liquido '
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      object DBEdit27: TDBEdit
        Left = 8
        Top = 15
        Width = 95
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'PROLIQU'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 14
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = OnKeyPressFloat
      end
    end
    object Panel4: TPanel
      Left = 122
      Top = 7
      Width = 112
      Height = 34
      BevelOuter = bvLowered
      TabOrder = 9
      object BitBtnRecalcular: TBitBtn
        Left = 3
        Top = 3
        Width = 107
        Height = 29
        Cursor = crHandPoint
        Hint = 'Usar o bot'#227'o recalcular, somente se for congelar parcelas'
        Caption = 'Recalcular'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtnRecalcularClick
      end
    end
    object Panel1: TPanel
      Left = 6
      Top = 7
      Width = 112
      Height = 34
      BevelOuter = bvLowered
      TabOrder = 0
      object BitBtnGerarParcela: TBitBtn
        Left = 3
        Top = 3
        Width = 107
        Height = 29
        Cursor = crHandPoint
        Caption = 'Gerar Parcelas'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtnGerarParcelaClick
      end
    end
    object GroupBox57: TGroupBox
      Tag = -1
      Left = 6
      Top = 156
      Width = 112
      Height = 37
      Caption = 'IOF - em atraso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      object DBEditIOFAtraso: TDBEdit
        Left = 11
        Top = 14
        Width = 95
        Height = 19
        Color = clSilver
        Ctl3D = False
        DataField = 'IOFAtraso'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 14
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = OnKeyPressFloat
      end
    end
    object GroupBox58: TGroupBox
      Tag = -1
      Left = 122
      Top = 156
      Width = 110
      Height = 37
      Caption = 'IOF - Beneficio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      object DBEditIOFBeneficio: TDBEdit
        Left = 8
        Top = 14
        Width = 95
        Height = 19
        Color = clSilver
        Ctl3D = False
        DataField = 'IOFBeneficio'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 14
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = OnKeyPressFloat
      end
    end
    object GroupBox59: TGroupBox
      Tag = -1
      Left = 236
      Top = 156
      Width = 112
      Height = 37
      Caption = 'IOF - Teto'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      object DBEditIofTeto: TDBEdit
        Left = 8
        Top = 14
        Width = 95
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'IOFValorTeto'
        DataSource = DSProposta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 14
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnEnter = OnEnter
        OnKeyPress = OnKeyPressFloat
      end
    end
  end
  object GroupBox63: TGroupBox
    Tag = -1
    Left = 878
    Top = 219
    Width = 66
    Height = 41
    Caption = 'ECG'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object DBEdit41: TDBEdit
      Left = 5
      Top = 17
      Width = 52
      Height = 19
      Ctl3D = False
      DataField = 'valor_ecg'
      DataSource = DSProposta
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnEnter = OnEnter
      OnKeyPress = OnKeyPressFloat
    end
  end
  object ADOProposta: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    AfterOpen = ADOPropostaAfterOpen
    AfterPost = ADOPropostaAfterPost
    CommandText = 
      'SELECT PROCLAS,IOFValorTeto,IOFBeneficio,IOFAtraso,Id_Proposta,P' +
      'ROPROP, PROITEM, PROCLIE, PROOPER, PRODTOP, PROTXME, PROTXEF, PR' +
      'OTXPE, PROTPCA, PROVRDC, PROCCOB, PROORDE, PROPMED, PROVRBO, PRO' +
      'FOME, PROLIQU, PROVRINFOR, PROTXAD, PROVRAD, PROTXPI, PROVRPI, P' +
      'ROTXIO, PROVRIO, PROTXFI, PROVRFI, PROTXIS, PROVRIS, PROTXIP, PR' +
      'OVRIP, PROFLOA, PROPMEF, PROTXTR, PROVRTR, PROTXIOFC, PROVRIOFC,' +
      ' PROEMITE, PROTXCA, PROTXRE, PRODESP, PROTXSA, PROVRSA, PROUSUAR' +
      'IO, PROCMAE, PROTXRISCO, PROVRRISCO, PROTXANTE, PRODTOPAN, PROTX' +
      'EFAN, PROTXMEPEN, PRODTOPPEN, PROTXEFPEN, PROSTATUS,   PROTXCAC,' +
      ' PROVRCAC, ProTaxaAdministrativa, PRODOCUMEN, CodigoTabelaTarifa' +
      ',  PROTPCONTR, PROORIGEM,  CodigoTipoCarteira, ProTaxaTMF, ProVa' +
      'lorTMF, Protarifadigitacao,  PROCOBRATARIFADIGITACAO, PROAVASACA' +
      ', TaxaEfetivaMinima,  TaxaNominalPosFixada, ProValorFinanciado, ' +
      'ProDataPrimeiraParcela, ProTipoPagtoIOF, ProDiasCarencia, ProAmo' +
      'rtizacao, ProValorCarencia, ProParcelasCarencia, ProTipoPagtoTac' +
      ', ProValorTacs, ProValorPMT, ProFator, ProTipoVencimentoParcela,' +
      ' ProValorReferencia, Projuros, ProTaxaReal, ProValorLiberado,Tax' +
      'aAberturaCredito, ProCongelarPMT, ProAjusteIOF , ProTaxaInternaR' +
      'etorno,  Id_ContratoOperacao, Id_CodPrimeiroAvalista, Id_CodSegu' +
      'ndoAvalista, Id_CodTerceiroAvalista, Id_CodQuartoAvalista, '#13#10'Pro' +
      'InfoGarantiasA,ProInfoGarantiasB,ProInfoGarantiasC,ProInfoGarant' +
      'iasD, ProInfoGarantiasE,ProInfoGarantiasF,ProInfoGarantiasG,ProI' +
      'nfoGarantiasH,ProInfoGarantiasI, ProInfoGarantiasJ,ProInfoGarant' +
      'iasL, CodigoRegiao, CodigoCenario, ProTaxaSelic, ProValorFuturo,' +
      ' ProDataPrimeiraParcelaOriginal, ProFormaPagamento, VrTacDigitad' +
      'a, CustoEfetivoTotal,ContratoReservado,ProDomicilioBancario,ProM' +
      'ora, ProVias,'#13#10'PROTXTEO, PROVRTEO,valor_ecg'#13#10'FROM dbo.kg_simulac' +
      'aoProposta with (nolock) '#13#10'where proprop = :proposta and proclas' +
      ' = :Carteira'
    CommandTimeout = 999
    EnableBCD = False
    Parameters = <
      item
        Name = 'proposta'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Carteira'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    Left = 258
    Top = 56
    object ADOPropostaPROCLAS: TStringField
      FieldName = 'PROCLAS'
      Size = 2
    end
    object ADOPropostaPROPROP: TIntegerField
      FieldName = 'PROPROP'
    end
    object ADOPropostaPROITEM: TIntegerField
      FieldName = 'PROITEM'
    end
    object ADOPropostaPROCLIE: TIntegerField
      FieldName = 'PROCLIE'
    end
    object ADOPropostaPROOPER: TIntegerField
      FieldName = 'PROOPER'
    end
    object ADOPropostaPRODTOP: TDateTimeField
      FieldName = 'PRODTOP'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOPropostaPROTXME: TFloatField
      FieldName = 'PROTXME'
      DisplayFormat = '#,#####0.00000'
    end
    object ADOPropostaPROTXEF: TFloatField
      FieldName = 'PROTXEF'
      DisplayFormat = '#,#####0.00000'
    end
    object ADOPropostaPROTXPE: TFloatField
      FieldName = 'PROTXPE'
    end
    object ADOPropostaPROTPCA: TStringField
      FieldName = 'PROTPCA'
      Size = 1
    end
    object ADOPropostaPROVRDC: TFloatField
      FieldName = 'PROVRDC'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaPROCCOB: TFloatField
      FieldName = 'PROCCOB'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaPROORDE: TIntegerField
      FieldName = 'PROORDE'
    end
    object ADOPropostaPROPMED: TFloatField
      FieldName = 'PROPMED'
    end
    object ADOPropostaPROVRBO: TFloatField
      FieldName = 'PROVRBO'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaPROFOME: TFloatField
      FieldName = 'PROFOME'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaPROLIQU: TFloatField
      FieldName = 'PROLIQU'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaPROVRINFOR: TFloatField
      FieldName = 'PROVRINFOR'
    end
    object ADOPropostaPROTXAD: TFloatField
      FieldName = 'PROTXAD'
    end
    object ADOPropostaPROVRAD: TFloatField
      FieldName = 'PROVRAD'
    end
    object ADOPropostaPROTXPI: TFloatField
      FieldName = 'PROTXPI'
    end
    object ADOPropostaPROVRPI: TFloatField
      FieldName = 'PROVRPI'
    end
    object ADOPropostaPROTXIO: TFloatField
      FieldName = 'PROTXIO'
      DisplayFormat = '#,######0.000000'
      EditFormat = '#,######0.000000'
    end
    object ADOPropostaPROTXFI: TFloatField
      FieldName = 'PROTXFI'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaPROVRFI: TFloatField
      FieldName = 'PROVRFI'
    end
    object ADOPropostaPROTXIS: TFloatField
      FieldName = 'PROTXIS'
    end
    object ADOPropostaPROVRIS: TFloatField
      FieldName = 'PROVRIS'
    end
    object ADOPropostaPROTXIP: TFloatField
      FieldName = 'PROTXIP'
    end
    object ADOPropostaPROVRIP: TFloatField
      FieldName = 'PROVRIP'
    end
    object ADOPropostaPROFLOA: TStringField
      FieldName = 'PROFLOA'
      Size = 2
    end
    object ADOPropostaPROPMEF: TFloatField
      FieldName = 'PROPMEF'
    end
    object ADOPropostaPROTXTR: TFloatField
      FieldName = 'PROTXTR'
    end
    object ADOPropostaPROVRTR: TFloatField
      FieldName = 'PROVRTR'
    end
    object ADOPropostaPROTXIOFC: TFloatField
      FieldName = 'PROTXIOFC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ADOPropostaPROVRIOFC: TFloatField
      FieldName = 'PROVRIOFC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.0000'
    end
    object ADOPropostaPROEMITE: TStringField
      FieldName = 'PROEMITE'
      Size = 1
    end
    object ADOPropostaPROTXCA: TFloatField
      FieldName = 'PROTXCA'
    end
    object ADOPropostaPROTXRE: TFloatField
      FieldName = 'PROTXRE'
    end
    object ADOPropostaPRODESP: TFloatField
      FieldName = 'PRODESP'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaPROTXSA: TFloatField
      FieldName = 'PROTXSA'
    end
    object ADOPropostaPROVRSA: TFloatField
      FieldName = 'PROVRSA'
    end
    object ADOPropostaPROUSUARIO: TIntegerField
      FieldName = 'PROUSUARIO'
    end
    object ADOPropostaPROCMAE: TFloatField
      FieldName = 'PROCMAE'
    end
    object ADOPropostaPROTXRISCO: TFloatField
      FieldName = 'PROTXRISCO'
    end
    object ADOPropostaPROVRRISCO: TFloatField
      FieldName = 'PROVRRISCO'
    end
    object ADOPropostaPROTXANTE: TFloatField
      FieldName = 'PROTXANTE'
    end
    object ADOPropostaPRODTOPAN: TDateTimeField
      FieldName = 'PRODTOPAN'
    end
    object ADOPropostaPROTXEFAN: TFloatField
      FieldName = 'PROTXEFAN'
    end
    object ADOPropostaPROTXMEPEN: TFloatField
      FieldName = 'PROTXMEPEN'
    end
    object ADOPropostaPRODTOPPEN: TDateTimeField
      FieldName = 'PRODTOPPEN'
    end
    object ADOPropostaPROTXEFPEN: TFloatField
      FieldName = 'PROTXEFPEN'
    end
    object ADOPropostaPROSTATUS: TStringField
      FieldName = 'PROSTATUS'
      Size = 1
    end
    object ADOPropostaPROTXCAC: TFloatField
      FieldName = 'PROTXCAC'
      DisplayFormat = '##0.00'
    end
    object ADOPropostaPROVRCAC: TFloatField
      FieldName = 'PROVRCAC'
    end
    object ADOPropostaProTaxaAdministrativa: TFloatField
      FieldName = 'ProTaxaAdministrativa'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaPRODOCUMEN: TIntegerField
      FieldName = 'PRODOCUMEN'
    end
    object ADOPropostaPROTPCONTR: TStringField
      FieldName = 'PROTPCONTR'
      Size = 1
    end
    object ADOPropostaPROORIGEM: TStringField
      FieldName = 'PROORIGEM'
      FixedChar = True
      Size = 1
    end
    object ADOPropostaPROAVASACA: TStringField
      FieldName = 'PROAVASACA'
      Size = 1
    end
    object ADOPropostaProTaxaTMF: TFloatField
      FieldName = 'ProTaxaTMF'
    end
    object ADOPropostaProValorTMF: TFloatField
      FieldName = 'ProValorTMF'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaProtarifadigitacao: TFloatField
      FieldName = 'Protarifadigitacao'
    end
    object ADOPropostaPROCOBRATARIFADIGITACAO: TStringField
      FieldName = 'PROCOBRATARIFADIGITACAO'
      Size = 3
    end
    object ADOPropostaTaxaNominalPosFixada: TFloatField
      FieldName = 'TaxaNominalPosFixada'
      DisplayFormat = '#,#####0.00000'
    end
    object ADOPropostaProValorFinanciado: TFloatField
      FieldName = 'ProValorFinanciado'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaProDataPrimeiraParcela: TDateTimeField
      FieldName = 'ProDataPrimeiraParcela'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOPropostaProTipoPagtoIOF: TStringField
      FieldName = 'ProTipoPagtoIOF'
      FixedChar = True
      Size = 1
    end
    object ADOPropostaProAmortizacao: TFloatField
      FieldName = 'ProAmortizacao'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaProValorCarencia: TFloatField
      FieldName = 'ProValorCarencia'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaProDiasCarencia: TIntegerField
      FieldName = 'ProDiasCarencia'
    end
    object ADOPropostaProParcelasCarencia: TIntegerField
      FieldName = 'ProParcelasCarencia'
    end
    object ADOPropostaProTipoPagtoTac: TStringField
      FieldName = 'ProTipoPagtoTac'
      Size = 1
    end
    object ADOPropostaProValorTacs: TFloatField
      FieldName = 'ProValorTacs'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaCodigoTabelaTarifa: TIntegerField
      FieldName = 'CodigoTabelaTarifa'
    end
    object ADOPropostaCodigoTipoCarteira: TIntegerField
      FieldName = 'CodigoTipoCarteira'
    end
    object ADOPropostaTaxaEfetivaMinima: TFloatField
      FieldName = 'TaxaEfetivaMinima'
    end
    object ADOPropostaProFator: TFloatField
      FieldName = 'ProFator'
    end
    object ADOPropostaProTipoVencimentoParcela: TStringField
      FieldName = 'ProTipoVencimentoParcela'
      Size = 8
    end
    object ADOPropostaProValorReferencia: TFloatField
      FieldName = 'ProValorReferencia'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaProjuros: TFloatField
      FieldName = 'Projuros'
    end
    object ADOPropostaProValorPMT: TFloatField
      FieldName = 'ProValorPMT'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaPROVRIO: TFloatField
      FieldName = 'PROVRIO'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaProValorLiberado: TFloatField
      FieldName = 'ProValorLiberado'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaProCongelarPMT: TStringField
      FieldName = 'ProCongelarPMT'
      FixedChar = True
      Size = 3
    end
    object ADOPropostaProAjusteIOF: TFloatField
      FieldName = 'ProAjusteIOF'
      EditFormat = '#,##0.00'
    end
    object ADOPropostaProTaxaInternaRetorno: TFloatField
      FieldName = 'ProTaxaInternaRetorno'
      DisplayFormat = '#,##0.0000000'
    end
    object ADOPropostaId_ContratoOperacao: TIntegerField
      FieldName = 'Id_ContratoOperacao'
    end
    object ADOPropostaId_CodPrimeiroAvalista: TIntegerField
      FieldName = 'Id_CodPrimeiroAvalista'
    end
    object ADOPropostaId_CodSegundoAvalista: TIntegerField
      FieldName = 'Id_CodSegundoAvalista'
    end
    object ADOPropostaId_CodTerceiroAvalista: TIntegerField
      FieldName = 'Id_CodTerceiroAvalista'
    end
    object ADOPropostaId_CodQuartoAvalista: TIntegerField
      FieldName = 'Id_CodQuartoAvalista'
    end
    object ADOPropostaProInfoGarantiasA: TStringField
      FieldName = 'ProInfoGarantiasA'
      Size = 3
    end
    object ADOPropostaProInfoGarantiasB: TStringField
      FieldName = 'ProInfoGarantiasB'
      Size = 3
    end
    object ADOPropostaProInfoGarantiasC: TStringField
      FieldName = 'ProInfoGarantiasC'
      Size = 3
    end
    object ADOPropostaProInfoGarantiasD: TStringField
      FieldName = 'ProInfoGarantiasD'
      Size = 3
    end
    object ADOPropostaProInfoGarantiasE: TStringField
      FieldName = 'ProInfoGarantiasE'
      Size = 40
    end
    object ADOPropostaProInfoGarantiasF: TStringField
      FieldName = 'ProInfoGarantiasF'
      Size = 3
    end
    object ADOPropostaProInfoGarantiasG: TStringField
      FieldName = 'ProInfoGarantiasG'
      Size = 3
    end
    object ADOPropostaProInfoGarantiasI: TStringField
      FieldName = 'ProInfoGarantiasI'
      Size = 3
    end
    object ADOPropostaProInfoGarantiasJ: TStringField
      FieldName = 'ProInfoGarantiasJ'
      Size = 3
    end
    object ADOPropostaProInfoGarantiasH: TStringField
      FieldName = 'ProInfoGarantiasH'
      Size = 3
    end
    object ADOPropostaCodigoRegiao: TIntegerField
      FieldName = 'CodigoRegiao'
    end
    object ADOPropostaCodigoCenario: TIntegerField
      FieldName = 'CodigoCenario'
    end
    object ADOPropostaProTaxaReal: TFloatField
      FieldName = 'ProTaxaReal'
    end
    object ADOPropostaProTaxaSelic: TFloatField
      FieldName = 'ProTaxaSelic'
    end
    object ADOPropostaProValorFuturo: TFloatField
      FieldName = 'ProValorFuturo'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaNomeTipoCarteira: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeTipoCarteira'
      LookupDataSet = ADOTipoCarteira
      LookupKeyFields = 'CodigoTipoCarteira'
      LookupResultField = 'Descricao'
      KeyFields = 'CodigoTipoCarteira'
      Size = 97
      Lookup = True
    end
    object ADOPropostaProDataPrimeiraParcelaOriginal: TDateTimeField
      FieldName = 'ProDataPrimeiraParcelaOriginal'
    end
    object ADOPropostaProFormaPagamento: TMemoField
      FieldName = 'ProFormaPagamento'
      BlobType = ftMemo
    end
    object ADOPropostaVrTacDigitada: TFloatField
      FieldName = 'VrTacDigitada'
    end
    object ADOPropostaCustoEfetivoTotal: TFloatField
      FieldName = 'CustoEfetivoTotal'
      DisplayFormat = '0.00'
    end
    object ADOPropostaTaxaAberturaCredito: TFloatField
      FieldName = 'TaxaAberturaCredito'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaIOFValorTeto: TFloatField
      FieldName = 'IOFValorTeto'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaIOFBeneficio: TFloatField
      FieldName = 'IOFBeneficio'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaIOFAtraso: TFloatField
      FieldName = 'IOFAtraso'
      DisplayFormat = '#,##0.00'
    end
    object ADOPropostaId_Proposta: TIntegerField
      FieldName = 'Id_Proposta'
    end
    object ADOPropostaContratoReservado: TIntegerField
      FieldName = 'ContratoReservado'
    end
    object ADOPropostaProInfoGarantiasL: TStringField
      FieldName = 'ProInfoGarantiasL'
      Size = 3
    end
    object ADOPropostaProDomicilioBancario: TStringField
      FieldName = 'ProDomicilioBancario'
      Size = 3
    end
    object ADOPropostaProMora: TFloatField
      FieldName = 'ProMora'
      DisplayFormat = '#0.00'
    end
    object ADOPropostaProVias: TIntegerField
      FieldName = 'ProVias'
    end
    object ADOPropostaPROTXTEO: TFloatField
      FieldName = 'PROTXTEO'
      DisplayFormat = '##0.00'
    end
    object ADOPropostaPROVRTEO: TFloatField
      FieldName = 'PROVRTEO'
      DisplayFormat = '##0.00'
    end
    object ADOPropostavalor_ecg: TFloatField
      FieldName = 'valor_ecg'
    end
  end
  object DSProposta: TDataSource
    DataSet = ADOProposta
    Left = 258
    Top = 100
  end
  object ADOConferencia: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandTimeout = 999
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      'COUNT(ITECLAS)  '#9#9#9' AS AUX_ITENS,'
      'SUM(isnull(ITECCOB,0))    '#9#9#9' AS AUX_COB, '
      'SUM(isnull(ITEVRDC,0))    '#9#9#9' AS AUX_DOC,'
      'SUM(isnull(ITETXCA,0))    '#9#9#9' AS AUX_TXCA, '
      'SUM(isnull(ITETXRE,0))    '#9#9#9' AS AUX_TXRE,'
      'SUM(isnull(ITEDESP,0))    '#9#9#9' AS AUX_DESP, '
      'SUM(isnull(ITETXRISCO,0)) '#9#9#9' AS AUX_TXRIS, '
      'SUM(isnull(ITEVRRISCO,0)) '#9#9#9' AS AUX_VRRIS,'
      'SUM(isnull(ITEVRIP,0))    '#9#9#9' AS AUX_CPMF, '
      'SUM(isnull(ITEVRTI,0))     '#9#9#9' AS AUX_T,'
      'SUM(isnull(ITEFOME,0))    '#9#9#9' AS AUX_FOM,'
      'SUM(isnull(ITELIQU,0))    '#9#9#9' AS AUX_LIQ,'
      'SUM(isnull(ITEVRSA,0))    '#9#9#9' AS AUX_VRSA,'
      'SUM(isnull(ITEVRIO,0))    '#9#9#9' AS AUX_VRIO, '
      'SUM(isnull(ITEVRCAC,0))    '#9#9' AS AUX_VRCAC,'
      
        'SUM(isnull(ITETaxaAdministrativa,0))    '#9#9' AS AUX_TaxaAdministra' +
        'tiva,'
      
        'cast(SUM(ITEPMEF * ITEVRTI) / SUM(ITEVRTI) as numeric(15,7)) AS ' +
        'AUX_PMEF,'
      
        'cast(SUM(ITETXPE * ITEVRTI) / SUM(ITEVRTI) as numeric(15,7)) AS ' +
        'AUX_TXPE,'
      
        'cast(SUM(ITEVRTI * ITEPRAZ) / SUM(ITEVRTI) as numeric(15,7)) AS ' +
        'AUX_PM,'
      
        'cast((power(power((cast(sum(itevrti) as numeric(18,7)) / sum(isn' +
        'ull(iteliqu,0) + isnull( itetarifadigitacao ,0)+ isnull(itevrio,' +
        '0)))'
      
        '   ,(1 / cast((cast(sum(itevrti * itepmef) as numeric(18,7)) / s' +
        'um(itevrti)) as Numeric(18,7))))'
      '     ,30) -1)* 100 as numeric(18,7)) TaxaEfetivaMes,'
      'SUM(isnull(ITEValorTMF,0))    '#9#9' AS AUX_VRTMF,'
      'SUM(isnull(ITETARIFADIGITACAO,0))        AS AUX_TARIFADIGITACAO'
      'FROM FACTBITE  with (nolock) '
      'WHERE FACTBITE.ITEPROP is null')
    Left = 546
    Top = 16
    object ADOConferenciaAUX_ITENS: TIntegerField
      FieldName = 'AUX_ITENS'
      ReadOnly = True
      DisplayFormat = '0000'
    end
    object ADOConferenciaAUX_COB: TFloatField
      FieldName = 'AUX_COB'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object ADOConferenciaAUX_DOC: TFloatField
      FieldName = 'AUX_DOC'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object ADOConferenciaAUX_TXCA: TFloatField
      FieldName = 'AUX_TXCA'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object ADOConferenciaAUX_TXRE: TFloatField
      FieldName = 'AUX_TXRE'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object ADOConferenciaAUX_DESP: TFloatField
      FieldName = 'AUX_DESP'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object ADOConferenciaAUX_TXRIS: TFloatField
      FieldName = 'AUX_TXRIS'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object ADOConferenciaAUX_VRRIS: TFloatField
      FieldName = 'AUX_VRRIS'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object ADOConferenciaAUX_CPMF: TFloatField
      FieldName = 'AUX_CPMF'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object ADOConferenciaAUX_T: TFloatField
      FieldName = 'AUX_T'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object ADOConferenciaAUX_FOM: TFloatField
      FieldName = 'AUX_FOM'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object ADOConferenciaAUX_LIQ: TFloatField
      FieldName = 'AUX_LIQ'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object ADOConferenciaAUX_VRSA: TFloatField
      FieldName = 'AUX_VRSA'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object ADOConferenciaAUX_VRIO: TFloatField
      FieldName = 'AUX_VRIO'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object ADOConferenciaAUX_PMEF: TFloatField
      FieldName = 'AUX_PMEF'
      ReadOnly = True
      DisplayFormat = '#,##0.0000000'
    end
    object ADOConferenciaAUX_TXPE: TFloatField
      FieldName = 'AUX_TXPE'
      ReadOnly = True
    end
    object ADOConferenciaAUX_PM: TFloatField
      FieldName = 'AUX_PM'
      ReadOnly = True
      DisplayFormat = '#,##0.0000000'
    end
    object ADOConferenciaAUX_VRCAC: TFloatField
      FieldName = 'AUX_VRCAC'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object ADOConferenciaAUX_TaxaAdministrativa: TFloatField
      FieldName = 'AUX_TaxaAdministrativa'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object ADOConferenciaTaxaEfetivaMes: TFloatField
      FieldName = 'TaxaEfetivaMes'
      ReadOnly = True
    end
    object ADOConferenciaAUX_VRTMF: TFloatField
      FieldName = 'AUX_VRTMF'
      ReadOnly = True
    end
    object ADOConferenciaAUX_TARIFADIGITACAO: TFloatField
      FieldName = 'AUX_TARIFADIGITACAO'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
  end
  object DSConferencia: TDataSource
    AutoEdit = False
    DataSet = ADOConferencia
    Left = 546
    Top = 44
  end
  object ADOCarteira: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 
      'select top 1 CLACOD, CLANOM, CLAOPE, CLAPIS,'#13#10'CLAADV, CLAPRO, CL' +
      'AFIN, CLAISS,TaxaAberturaCredito,'#13#10'CLAIOF, CLAIPM, CLATRI, CLAFL' +
      'O,'#13#10'CLATPC, CLABLO, CLALIB, CLAIOFBAN,'#13#10'CLAIOFCOMP, CLAIOFDES, C' +
      'LAADM, CLAMOD,'#13#10'CLARISCO, CLATXMIN, CLATXMAX, CLATXCAC,'#13#10'CLAVRMI' +
      'NCO, CLATXMINCO, ClaTaxaAdministrativa,'#13#10'ClaTaxaTMF, CLATARIFAMI' +
      'NIMADIGITACAO,'#13#10'CLATARIFADIGITACAOPORTITULO, CodigoTipoCarteira,' +
      #13#10'CLAIOFANO, ClaCustoEnvioDoc, Status,'#13#10'CLAIOFPessoaFisica, CLAI' +
      'OFAnoPessoaFisica'#13#10',ClaAplicaiofLiberacao'#13#10'from factbcla  with (' +
      'nolock) '#13#10'WHERE CLACOD = :Careira'#13#10
    CommandTimeout = 9999
    EnableBCD = False
    Parameters = <
      item
        Name = 'Careira'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    Left = 621
    Top = 239
    object ADOCarteiraCLACOD: TStringField
      FieldName = 'CLACOD'
      Size = 2
    end
    object ADOCarteiraCLANOM: TStringField
      FieldName = 'CLANOM'
      Size = 37
    end
    object ADOCarteiraCLAOPE: TIntegerField
      FieldName = 'CLAOPE'
    end
    object ADOCarteiraCLAPIS: TFloatField
      FieldName = 'CLAPIS'
    end
    object ADOCarteiraCLAADV: TFloatField
      FieldName = 'CLAADV'
    end
    object ADOCarteiraCLAPRO: TIntegerField
      FieldName = 'CLAPRO'
    end
    object ADOCarteiraCLAFIN: TFloatField
      FieldName = 'CLAFIN'
    end
    object ADOCarteiraCLAISS: TFloatField
      FieldName = 'CLAISS'
    end
    object ADOCarteiraCLAIOF: TFloatField
      FieldName = 'CLAIOF'
    end
    object ADOCarteiraCLAIPM: TFloatField
      FieldName = 'CLAIPM'
    end
    object ADOCarteiraCLATRI: TFloatField
      FieldName = 'CLATRI'
    end
    object ADOCarteiraCLAFLO: TIntegerField
      FieldName = 'CLAFLO'
    end
    object ADOCarteiraCLATPC: TIntegerField
      FieldName = 'CLATPC'
    end
    object ADOCarteiraCLABLO: TStringField
      FieldName = 'CLABLO'
      Size = 1
    end
    object ADOCarteiraCLALIB: TStringField
      FieldName = 'CLALIB'
      Size = 1
    end
    object ADOCarteiraCLAIOFBAN: TFloatField
      FieldName = 'CLAIOFBAN'
    end
    object ADOCarteiraCLAIOFCOMP: TFloatField
      FieldName = 'CLAIOFCOMP'
    end
    object ADOCarteiraCLAIOFDES: TFloatField
      FieldName = 'CLAIOFDES'
    end
    object ADOCarteiraCLAADM: TStringField
      FieldName = 'CLAADM'
      Size = 2
    end
    object ADOCarteiraCLAMOD: TIntegerField
      FieldName = 'CLAMOD'
    end
    object ADOCarteiraCLARISCO: TStringField
      FieldName = 'CLARISCO'
      Size = 1
    end
    object ADOCarteiraCLATXMIN: TFloatField
      FieldName = 'CLATXMIN'
      DisplayFormat = '##0.00'
    end
    object ADOCarteiraCLATXMAX: TFloatField
      FieldName = 'CLATXMAX'
      DisplayFormat = '##0.00'
    end
    object ADOCarteiraCLATXCAC: TFloatField
      FieldName = 'CLATXCAC'
      DisplayFormat = '##0.00'
    end
    object ADOCarteiraCLAVRMINCO: TFloatField
      FieldName = 'CLAVRMINCO'
      DisplayFormat = '##0.00'
    end
    object ADOCarteiraCLATXMINCO: TFloatField
      FieldName = 'CLATXMINCO'
      DisplayFormat = '##0.00'
    end
    object ADOCarteiraClaTaxaAdministrativa: TFloatField
      FieldName = 'ClaTaxaAdministrativa'
    end
    object ADOCarteiraClaTaxaTMF: TFloatField
      FieldName = 'ClaTaxaTMF'
    end
    object ADOCarteiraCLATARIFAMINIMADIGITACAO: TFloatField
      FieldName = 'CLATARIFAMINIMADIGITACAO'
    end
    object ADOCarteiraCLATARIFADIGITACAOPORTITULO: TFloatField
      FieldName = 'CLATARIFADIGITACAOPORTITULO'
    end
    object ADOCarteiraCodigoTipoCarteira: TIntegerField
      FieldName = 'CodigoTipoCarteira'
    end
    object ADOCarteiraCLAIOFANO: TFloatField
      FieldName = 'CLAIOFANO'
    end
    object ADOCarteiraClaCustoEnvioDoc: TFloatField
      FieldName = 'ClaCustoEnvioDoc'
    end
    object ADOCarteiraStatus: TStringField
      FieldName = 'Status'
      Size = 7
    end
    object ADOCarteiraCLAIOFPessoaFisica: TFloatField
      FieldName = 'CLAIOFPessoaFisica'
    end
    object ADOCarteiraCLAIOFAnoPessoaFisica: TFloatField
      FieldName = 'CLAIOFAnoPessoaFisica'
    end
    object ADOCarteiraClaAplicaiofLiberacao: TStringField
      FieldName = 'ClaAplicaiofLiberacao'
      Size = 3
    end
    object ADOCarteiraTaxaAberturaCredito: TFloatField
      FieldName = 'TaxaAberturaCredito'
    end
  end
  object ADOExecuta: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CommandTimeout = 999
    EnableBCD = False
    Parameters = <>
    Left = 643
    Top = 44
  end
  object ADOCliente: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeOpen = ADOClienteBeforeOpen
    AfterOpen = ADOClienteAfterOpen
    AfterClose = ADOClienteAfterClose
    CommandTimeout = 999
    EnableBCD = False
    Parameters = <
      item
        Name = 'CLIOPE'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT TOP 1 '
      '       CLINOM, '
      '       CLIOPE, '
      '       isnull(CLIFLO,'#39'0'#39') CLIFLO, '
      '       CLIISENTOIOF, '
      '       CLIAGE, '
      '       isnull(CLIAVASACA,'#39'N'#39') CLIAVASACA, '
      '       CLICOD, '
      '       CLIBOLETA, '
      '       CLICARTA,'
      '       cliporte,'
      '       clicgc, '
      '       clicgcfili, '
      '       clicgcdv, '
      
        '       isnull(TermoFielDepositarioDispensaNF,'#39'NAO'#39') TermoFielDep' +
        'ositarioDispensaNF,'
      '       isnull( CobrancaTitulo,'#39'NAO'#39') CobrancaTitulo,'
      '       isnull( ContratoMae,'#39'NAO'#39') ContratoMae,'
      
        '       CliStatus, Clipes, Clicre, CodigoMotivoBloqueioAcumulados' +
        ', CadastroSuspenso,'
      '       CLIEMPTITU,'
      
        '       (SELECT top 1 Regiao from  kg_Promotor PRT with (nolock) ' +
        ' join kg_regiao Reg with (nolock) on Reg.CodigoRegiao = PRT.Regi' +
        'ao'
      
        '                    where PRT.CodigoPromotor = Cli.Cliope) as Re' +
        'giao'
      ',Cli.CliBloqueioLimite90Dias'
      ',Cli.CodigoBloqueioLimite90Dias'
      ',Cli.CliDataBloqueioLimite90Dias'
      'FROM FACTBCLI cli  with (nolock)'
      'WHERE CLICOD  = :CLIOPE and CLITIP = '#39'C'#39)
    Left = 764
    Top = 20
    object ADOClienteCLINOM: TStringField
      FieldName = 'CLINOM'
      Size = 37
    end
    object ADOClienteCLIOPE: TIntegerField
      FieldName = 'CLIOPE'
    end
    object ADOClienteCLIFLO: TIntegerField
      FieldName = 'CLIFLO'
      ReadOnly = True
    end
    object ADOClienteCLIISENTOIOF: TStringField
      FieldName = 'CLIISENTOIOF'
      Size = 1
    end
    object ADOClienteCLIAGE: TIntegerField
      FieldName = 'CLIAGE'
    end
    object ADOClienteCLIAVASACA: TStringField
      FieldName = 'CLIAVASACA'
      ReadOnly = True
      Size = 1
    end
    object ADOClienteCLICOD: TIntegerField
      FieldName = 'CLICOD'
    end
    object ADOClienteCLIBOLETA: TStringField
      FieldName = 'CLIBOLETA'
      Size = 1
    end
    object ADOClienteCLICARTA: TStringField
      FieldName = 'CLICARTA'
      Size = 1
    end
    object ADOClienteclicgc: TStringField
      FieldName = 'clicgc'
      Size = 9
    end
    object ADOClienteclicgcfili: TStringField
      FieldName = 'clicgcfili'
      Size = 4
    end
    object ADOClienteclicgcdv: TStringField
      FieldName = 'clicgcdv'
      Size = 2
    end
    object ADOClienteTermoFielDepositarioDispensaNF: TStringField
      FieldName = 'TermoFielDepositarioDispensaNF'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object ADOClienteCobrancaTitulo: TStringField
      FieldName = 'CobrancaTitulo'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object ADOClienteContratoMae: TStringField
      FieldName = 'ContratoMae'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object ADOClienteCliStatus: TStringField
      FieldName = 'CliStatus'
      Size = 7
    end
    object ADOClienteClipes: TIntegerField
      FieldName = 'Clipes'
    end
    object ADOClienteClicre: TStringField
      FieldName = 'Clicre'
      Size = 1
    end
    object ADOClienteCodigoMotivoBloqueioAcumulados: TStringField
      FieldName = 'CodigoMotivoBloqueioAcumulados'
      Size = 60
    end
    object ADOClienteCadastroSuspenso: TStringField
      FieldName = 'CadastroSuspenso'
      FixedChar = True
      Size = 3
    end
    object ADOClienteCLIEMPTITU: TIntegerField
      FieldName = 'CLIEMPTITU'
    end
    object ADOClienteRegiao: TIntegerField
      FieldName = 'Regiao'
      ReadOnly = True
    end
    object ADOClienteCliBloqueioLimite90Dias: TStringField
      FieldName = 'CliBloqueioLimite90Dias'
      FixedChar = True
      Size = 3
    end
    object ADOClienteCodigoBloqueioLimite90Dias: TIntegerField
      FieldName = 'CodigoBloqueioLimite90Dias'
    end
    object ADOClienteCliDataBloqueioLimite90Dias: TDateTimeField
      FieldName = 'CliDataBloqueioLimite90Dias'
    end
    object ADOClientecliporte: TStringField
      FieldName = 'cliporte'
      Size = 1
    end
  end
  object DSCliente: TDataSource
    AutoEdit = False
    DataSet = ADOCliente
    Left = 764
    Top = 48
  end
  object ADOParcela: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    AfterInsert = ADOParcelaAfterInsert
    BeforePost = ADOParcelaBeforePost
    CommandText = 
      'SELECT ITECLAS, ITEPROP, ItemVrIOFCobrado,ItemVrIOFAproveitament' +
      'o,ITEORDE,TaxaAberturaCredito, ITEDOCU, ITETXEF, ITETXPE, ITEVRD' +
      'C, ITECCOB, ITEDTVE, ITEPRAZ, ITEVRTI, ITEFOME, ITELIQU, ITEOBSE' +
      ', ITETXAD, ITEVRAD, ITETXPI, ITEVRPI, ITETXIO, ITEVRIO, ITETXIS,' +
      ' ITEVRIS, ITETXFI, ITEVRFI, ITETXIP, ITEVRIP, ITEFLOA, ITEPMEF, ' +
      'ITETXTR, ITEVRTR, ITETXIOFC, ITEVRIOFC, ITETXCA, ITETXRE, ITEDES' +
      'P, ITETXSA, ITEVRSA, ITETXRISCO, ITEVRRISCO, ITENUME, ITESERI, I' +
      'TESACCNPJ, ITETXCAC, ITEVRCAC, IteTaxaAdministrativa, SacTip, Co' +
      'digoSacado, ITECARTA, ITEBOLETA, ITEReservado, IteTaxaTMF, IteVa' +
      'lorTMF, IteNban, ITEBCOB, Itetarifadigitacao , IteAmortizacao , ' +
      'IteJuros , iteintervalo, IteFatorPrazo, IteFatorIntervalo, IteTi' +
      'poparcela, ItePrazoIOF , ItePrazoIntermediario, ItePercentualVal' +
      'orPMT, IteVencimentoReal, IteValorLiberado, IteValorFuturo,ITETX' +
      'TEO,itevrteo,itevalor_ecg'#13#10'FROM dbo.kg_simulacaoProposta_Item  w' +
      'ith (nolock) '#13#10'where iteprop = :Proposta and Iteclas = :Carteira' +
      #13#10'order by iteorde'
    CommandTimeout = 999
    EnableBCD = False
    Parameters = <
      item
        Name = 'Proposta'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Carteira'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    Left = 487
    Top = 328
    object ADOParcelaITECLAS: TStringField
      FieldName = 'ITECLAS'
      Size = 2
    end
    object ADOParcelaITEPROP: TIntegerField
      FieldName = 'ITEPROP'
    end
    object ADOParcelaITEORDE: TIntegerField
      FieldName = 'ITEORDE'
    end
    object ADOParcelaITEDOCU: TIntegerField
      FieldName = 'ITEDOCU'
    end
    object ADOParcelaITETXEF: TFloatField
      FieldName = 'ITETXEF'
    end
    object ADOParcelaITETXPE: TFloatField
      FieldName = 'ITETXPE'
    end
    object ADOParcelaITEVRDC: TFloatField
      FieldName = 'ITEVRDC'
      DisplayFormat = '#,##0.00'
    end
    object ADOParcelaITECCOB: TFloatField
      FieldName = 'ITECCOB'
    end
    object ADOParcelaITEDTVE: TDateTimeField
      FieldName = 'ITEDTVE'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOParcelaITEPRAZ: TIntegerField
      FieldName = 'ITEPRAZ'
    end
    object ADOParcelaITEFOME: TFloatField
      FieldName = 'ITEFOME'
      DisplayFormat = '#,######0.0000000'
    end
    object ADOParcelaITEOBSE: TStringField
      FieldName = 'ITEOBSE'
    end
    object ADOParcelaITETXAD: TFloatField
      FieldName = 'ITETXAD'
    end
    object ADOParcelaITEVRAD: TFloatField
      FieldName = 'ITEVRAD'
    end
    object ADOParcelaITETXPI: TFloatField
      FieldName = 'ITETXPI'
    end
    object ADOParcelaITEVRPI: TFloatField
      FieldName = 'ITEVRPI'
    end
    object ADOParcelaITETXIO: TFloatField
      FieldName = 'ITETXIO'
    end
    object ADOParcelaITEVRIO: TFloatField
      FieldName = 'ITEVRIO'
      DisplayFormat = '#,##0.00'
    end
    object ADOParcelaITETXIS: TFloatField
      FieldName = 'ITETXIS'
    end
    object ADOParcelaITEVRIS: TFloatField
      FieldName = 'ITEVRIS'
    end
    object ADOParcelaITETXFI: TFloatField
      FieldName = 'ITETXFI'
    end
    object ADOParcelaITEVRFI: TFloatField
      FieldName = 'ITEVRFI'
    end
    object ADOParcelaITETXIP: TFloatField
      FieldName = 'ITETXIP'
    end
    object ADOParcelaITEVRIP: TFloatField
      FieldName = 'ITEVRIP'
    end
    object ADOParcelaITEFLOA: TIntegerField
      FieldName = 'ITEFLOA'
    end
    object ADOParcelaITETXTR: TFloatField
      FieldName = 'ITETXTR'
    end
    object ADOParcelaITEVRTR: TFloatField
      FieldName = 'ITEVRTR'
    end
    object ADOParcelaITETXIOFC: TFloatField
      FieldName = 'ITETXIOFC'
    end
    object ADOParcelaITEVRIOFC: TFloatField
      FieldName = 'ITEVRIOFC'
      DisplayFormat = '#,##0.0000'
    end
    object ADOParcelaITETXCA: TFloatField
      FieldName = 'ITETXCA'
    end
    object ADOParcelaITETXRE: TFloatField
      FieldName = 'ITETXRE'
    end
    object ADOParcelaITEDESP: TFloatField
      FieldName = 'ITEDESP'
    end
    object ADOParcelaITETXSA: TFloatField
      FieldName = 'ITETXSA'
    end
    object ADOParcelaITEVRSA: TFloatField
      FieldName = 'ITEVRSA'
    end
    object ADOParcelaITETXRISCO: TFloatField
      FieldName = 'ITETXRISCO'
    end
    object ADOParcelaITEVRRISCO: TFloatField
      FieldName = 'ITEVRRISCO'
    end
    object ADOParcelaITENUME: TStringField
      FieldName = 'ITENUME'
      Size = 10
    end
    object ADOParcelaITESERI: TStringField
      FieldName = 'ITESERI'
      Size = 3
    end
    object ADOParcelaITESACCNPJ: TStringField
      FieldName = 'ITESACCNPJ'
      Size = 14
    end
    object ADOParcelaITETXCAC: TFloatField
      FieldName = 'ITETXCAC'
    end
    object ADOParcelaITEVRCAC: TFloatField
      FieldName = 'ITEVRCAC'
      DisplayFormat = '#,##0.00'
    end
    object ADOParcelaIteTaxaAdministrativa: TFloatField
      FieldName = 'IteTaxaAdministrativa'
    end
    object ADOParcelaSacTip: TStringField
      FieldName = 'SacTip'
      Size = 1
    end
    object ADOParcelaCodigoSacado: TIntegerField
      FieldName = 'CodigoSacado'
    end
    object ADOParcelaITECARTA: TStringField
      FieldName = 'ITECARTA'
      Size = 1
    end
    object ADOParcelaITEBOLETA: TStringField
      FieldName = 'ITEBOLETA'
      Size = 1
    end
    object ADOParcelaITEReservado: TStringField
      FieldName = 'ITEReservado'
      Size = 25
    end
    object ADOParcelaIteTaxaTMF: TFloatField
      FieldName = 'IteTaxaTMF'
    end
    object ADOParcelaIteValorTMF: TFloatField
      FieldName = 'IteValorTMF'
      DisplayFormat = '#,##0.00'
    end
    object ADOParcelaIteNban: TStringField
      FieldName = 'IteNban'
      Size = 12
    end
    object ADOParcelaITEBCOB: TIntegerField
      FieldName = 'ITEBCOB'
    end
    object ADOParcelaItetarifadigitacao: TFloatField
      FieldName = 'Itetarifadigitacao'
    end
    object ADOParcelaiteintervalo: TIntegerField
      FieldName = 'iteintervalo'
    end
    object ADOParcelaIteFatorPrazo: TFloatField
      FieldName = 'IteFatorPrazo'
      DisplayFormat = '#,##0.0000000'
    end
    object ADOParcelaIteFatorIntervalo: TFloatField
      FieldName = 'IteFatorIntervalo'
      DisplayFormat = '#,##0.0000000'
    end
    object ADOParcelaIteJuros: TFloatField
      FieldName = 'IteJuros'
      DisplayFormat = '#,#####0.00000'
    end
    object ADOParcelaIteAmortizacao: TFloatField
      FieldName = 'IteAmortizacao'
      DisplayFormat = '#,#####0.00000'
    end
    object ADOParcelaIteTipoparcela: TStringField
      FieldName = 'IteTipoparcela'
      Size = 5
    end
    object ADOParcelaITEVRTI: TFloatField
      FieldName = 'ITEVRTI'
      DisplayFormat = '#,##0.00'
    end
    object ADOParcelaItePrazoIOF: TIntegerField
      FieldName = 'ItePrazoIOF'
    end
    object ADOParcelaITELIQU: TFloatField
      FieldName = 'ITELIQU'
    end
    object ADOParcelaItePrazoIntermediario: TIntegerField
      FieldName = 'ItePrazoIntermediario'
    end
    object ADOParcelaITEPMEF: TIntegerField
      FieldName = 'ITEPMEF'
    end
    object ADOParcelaIteVencimentoReal: TDateTimeField
      FieldName = 'IteVencimentoReal'
    end
    object ADOParcelaItePercentualValorPMT: TFloatField
      DisplayWidth = 19
      FieldName = 'ItePercentualValorPMT'
      DisplayFormat = '#,##0.000000000000'
    end
    object ADOParcelaIteValorLiberado: TFloatField
      FieldName = 'IteValorLiberado'
      DisplayFormat = '#,##0.00'
    end
    object ADOParcelaIteValorFuturo: TFloatField
      FieldName = 'IteValorFuturo'
      DisplayFormat = '#,##0.00'
    end
    object ADOParcelaTaxaAberturaCredito: TFloatField
      FieldName = 'TaxaAberturaCredito'
    end
    object ADOParcelaItemVrIOFAproveitamento: TFloatField
      FieldName = 'ItemVrIOFAproveitamento'
    end
    object ADOParcelaItemVrIOFCobrado: TFloatField
      FieldName = 'ItemVrIOFCobrado'
    end
    object ADOParcelaITETXTEO: TFloatField
      FieldName = 'ITETXTEO'
    end
    object ADOParcelaitevrteo: TFloatField
      FieldName = 'itevrteo'
    end
    object ADOParcelaitevalor_ecg: TFloatField
      FieldName = 'itevalor_ecg'
    end
  end
  object DSParcela: TDataSource
    DataSet = ADOParcela
    Left = 487
    Top = 372
  end
  object ADOPromotor: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 999
    EnableBCD = False
    Parameters = <
      item
        Name = 'CodigoPromotor'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CodigoPromotor, Nome FROM kg_promotor  with (nolock) '
      'WHERE CodigoPromotor = :CodigoPromotor')
    Left = 695
    Top = 18
    object ADOPromotorCodigoPromotor: TIntegerField
      FieldName = 'CodigoPromotor'
    end
    object ADOPromotorNome: TStringField
      FieldName = 'Nome'
      Size = 37
    end
  end
  object DSPromotor: TDataSource
    AutoEdit = False
    DataSet = ADOPromotor
    Left = 695
    Top = 46
  end
  object ADOPendenciaCadastral: TADODataSet
    AutoCalcFields = False
    Connection = DMConecta.ADOComite
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT ITP_OBS_CONSULTA'#13#10'FROM proposta_comite pro with (nolock)'#13 +
      #10'          join Itens_Proposta ITE with (nolock)'#13#10'            on' +
      ' ITP_PRO_CODIGO = pro.PRO_CODIGO and ITP_ITE_CODIGO = 44 '#13#10'where' +
      '  pro.PRO_CODIGO'#13#10'in ( select max(PRO_CODIGO) from proposta_comi' +
      'te X with (nolock) where'#13#10'                                      ' +
      '             convert(numeric(15,0),isnull(x.PRO_CLICGC,'#39'0'#39') '#13#10'  ' +
      '                                                 + isnull(x.PRO_' +
      'CLICGCFILI,'#39#39') '#13#10'                                               ' +
      '    + isnull(x.PRO_CLICGCdv,'#39#39')) '#13#10'                             ' +
      '                      = 00609315000130  )'#13#10'and convert(varchar,I' +
      'TP_OBS_CONSULTA ) <> '#39#39#13#10
    CommandTimeout = 9999
    EnableBCD = False
    Parameters = <>
    Left = 512
    Top = 16
    object ADOPendenciaCadastralITP_OBS_CONSULTA: TMemoField
      FieldName = 'ITP_OBS_CONSULTA'
      BlobType = ftMemo
    end
  end
  object ADOProduto: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeOpen = ADOProdutoBeforeOpen
    CommandTimeout = 999
    EnableBCD = False
    Parameters = <
      item
        Name = 'CodigoProduto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM kg_produto  with (nolock) '
      'WHERE CodigoProduto = :CodigoProduto'
      '')
    Left = 471
    Top = 17
    object ADOProdutoCodigoProduto: TIntegerField
      FieldName = 'CodigoProduto'
    end
    object ADOProdutoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 37
    end
    object ADOProdutoSiglaProduto: TStringField
      FieldName = 'SiglaProduto'
      Size = 3
    end
    object ADOProdutoCodigoContabil: TIntegerField
      FieldName = 'CodigoContabil'
    end
    object ADOProdutoControleOperacional: TStringField
      FieldName = 'ControleOperacional'
      Size = 11
    end
    object ADOProdutoSiglaPapelFisico: TStringField
      FieldName = 'SiglaPapelFisico'
      Size = 3
    end
    object ADOProdutoCustoComissao: TFloatField
      FieldName = 'CustoComissao'
    end
    object ADOProdutoEmiteCarta: TStringField
      FieldName = 'EmiteCarta'
      FixedChar = True
      Size = 1
    end
    object ADOProdutoEmiteBoleta: TStringField
      FieldName = 'EmiteBoleta'
      FixedChar = True
      Size = 1
    end
    object ADOProdutoVencimentoUtil: TStringField
      FieldName = 'VencimentoUtil'
      FixedChar = True
      Size = 3
    end
    object ADOProdutoCodigoTabelaTarifa: TIntegerField
      FieldName = 'CodigoTabelaTarifa'
    end
    object ADOProdutoCodigoPendencia: TIntegerField
      FieldName = 'CodigoPendencia'
    end
    object ADOProdutoFloating: TIntegerField
      FieldName = 'Floating'
    end
    object ADOProdutoDataCadastro: TDateTimeField
      FieldName = 'DataCadastro'
    end
    object ADOProdutoVencido_X_DataOperacao: TStringField
      FieldName = 'Vencido_X_DataOperacao'
      Size = 2
    end
    object ADOProdutoFloatingNegativo: TIntegerField
      FieldName = 'FloatingNegativo'
    end
    object ADOProdutoProdutoClean: TStringField
      FieldName = 'ProdutoClean'
      Size = 3
    end
    object ADOProdutoStatus: TStringField
      FieldName = 'Status'
      Size = 7
    end
    object ADOProdutoUsuarioInsert: TIntegerField
      FieldName = 'UsuarioInsert'
    end
    object ADOProdutoUsuarioUpdate: TIntegerField
      FieldName = 'UsuarioUpdate'
    end
    object ADOProdutoConfirmaTitulo: TStringField
      FieldName = 'ConfirmaTitulo'
      Size = 3
    end
    object ADOProdutoTipoFinanciamento: TStringField
      FieldName = 'TipoFinanciamento'
      Size = 3
    end
    object ADOProdutoTaxaEfetivaMinima: TFloatField
      FieldName = 'TaxaEfetivaMinima'
    end
    object ADOProdutoCarteiraAds: TIntegerField
      FieldName = 'CarteiraAds'
    end
    object ADOProdutoCOMPRE: TIntegerField
      FieldName = 'COMPRE'
    end
    object ADOProdutoCOMPOS: TIntegerField
      FieldName = 'COMPOS'
    end
    object ADOProdutoINDPRE: TIntegerField
      FieldName = 'INDPRE'
    end
    object ADOProdutoINDPOS: TIntegerField
      FieldName = 'INDPOS'
    end
    object ADOProdutoOUTPRE: TIntegerField
      FieldName = 'OUTPRE'
    end
    object ADOProdutoOUTPOS: TIntegerField
      FieldName = 'OUTPOS'
    end
    object ADOProdutoMOEDA: TStringField
      FieldName = 'MOEDA'
      Size = 10
    end
    object ADOProdutoIOF: TStringField
      FieldName = 'IOF'
      Size = 3
    end
    object ADOProdutoVLR_TxTeo: TFloatField
      FieldName = 'VLR_TxTeo'
    end
    object ADOProdutoTaxaMes: TFloatField
      FieldName = 'TaxaMes'
    end
    object ADOProdutoTaxaRegistro: TFloatField
      FieldName = 'TaxaRegistro'
    end
    object ADOProdutoTaxaTac: TFloatField
      FieldName = 'TaxaTac'
    end
    object ADOProdutoTaxaAdministrativa: TFloatField
      FieldName = 'TaxaAdministrativa'
    end
    object ADOProdutoTaxaAberturaCredito: TFloatField
      FieldName = 'TaxaAberturaCredito'
    end
    object ADOProdutoTaxaRisco: TFloatField
      FieldName = 'TaxaRisco'
    end
    object ADOProdutoTaxaTmf: TFloatField
      FieldName = 'TaxaTmf'
    end
    object ADOProdutoTarifaDigitacao: TFloatField
      FieldName = 'TarifaDigitacao'
    end
    object ADOProdutoCustoCobranca: TFloatField
      FieldName = 'CustoCobranca'
    end
    object ADOProdutoValorDoc: TFloatField
      FieldName = 'ValorDoc'
    end
    object ADOProdutoValorTac: TFloatField
      FieldName = 'ValorTac'
    end
    object ADOProdutoValorDespesas: TFloatField
      FieldName = 'ValorDespesas'
    end
    object ADOProdutoTaxaIOF: TFloatField
      FieldName = 'TaxaIOF'
    end
    object ADOProdutoTaxaIOFC: TFloatField
      FieldName = 'TaxaIOFC'
    end
    object ADOProdutoTipoCalculo: TStringField
      FieldName = 'TipoCalculo'
      Size = 1
    end
  end
  object DSProduto: TDataSource
    AutoEdit = False
    DataSet = ADOProduto
    Left = 471
    Top = 45
  end
  object ADOGuardaCalculo: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    EnableBCD = False
    Parameters = <>
    Left = 643
    Top = 16
  end
  object ADOContratoExtra: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 
      'SELECT Id_ContratoOperacao, TitularGrupo, Clitip, DataAprovacaoC' +
      'ontrato, DataVencimentoContrato, NumeroContrato, ValorLimite, Co' +
      'digoCenario, Garantia, Prazo, Modalidade, PrimeiroAvalista, Segu' +
      'ndoAvalista, ValorFuturo, cast(Taxa as numeric(10,5)) taxa, IDSt' +
      'atus, PrazoCaracteristica, SaldoDevedor FROM Kg_CedenteContratoE' +
      'xtra where Id_ContratoOperacao = :Id_ContratoOperacao'
    EnableBCD = False
    Parameters = <
      item
        Name = 'Id_ContratoOperacao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 404
    Top = 43
    object ADOContratoExtraId_ContratoOperacao: TAutoIncField
      FieldName = 'Id_ContratoOperacao'
      ReadOnly = True
    end
    object ADOContratoExtraClitip: TStringField
      FieldName = 'Clitip'
      Size = 1
    end
    object ADOContratoExtraDataAprovacaoContrato: TDateTimeField
      FieldName = 'DataAprovacaoContrato'
    end
    object ADOContratoExtraDataVencimentoContrato: TDateTimeField
      FieldName = 'DataVencimentoContrato'
    end
    object ADOContratoExtraNumeroContrato: TIntegerField
      FieldName = 'NumeroContrato'
    end
    object ADOContratoExtraValorLimite: TBCDField
      FieldName = 'ValorLimite'
      Precision = 14
      Size = 2
    end
    object ADOContratoExtraCodigoCenario: TIntegerField
      FieldName = 'CodigoCenario'
    end
    object ADOContratoExtraGarantia: TMemoField
      FieldName = 'Garantia'
      BlobType = ftMemo
    end
    object ADOContratoExtraPrazo: TIntegerField
      FieldName = 'Prazo'
    end
    object ADOContratoExtraModalidade: TStringField
      FieldName = 'Modalidade'
    end
    object ADOContratoExtrataxa: TFloatField
      FieldName = 'taxa'
    end
    object ADOContratoExtraPrimeiroAvalista: TStringField
      FieldName = 'PrimeiroAvalista'
      Size = 37
    end
    object ADOContratoExtraSegundoAvalista: TStringField
      FieldName = 'SegundoAvalista'
      Size = 37
    end
    object ADOContratoExtraValorFuturo: TBCDField
      FieldName = 'ValorFuturo'
      Precision = 14
      Size = 2
    end
    object ADOContratoExtraPrazoCaracteristica: TStringField
      FieldName = 'PrazoCaracteristica'
      Size = 15
    end
    object ADOContratoExtraSaldoDevedor: TBCDField
      FieldName = 'SaldoDevedor'
      Precision = 15
      Size = 2
    end
    object ADOContratoExtraTitularGrupo: TIntegerField
      FieldName = 'TitularGrupo'
    end
    object ADOContratoExtraIDStatus: TStringField
      FieldName = 'IDStatus'
      Size = 3
    end
  end
  object DSBoletoOperacao: TDataSource
    AutoEdit = False
    DataSet = ADOBoletoOperacao
    Left = 587
    Top = 44
  end
  object ADOBoletoOperacao: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    AfterOpen = ADOBoletoOperacaoAfterOpen
    BeforePost = ADOBoletoOperacaoBeforePost
    AfterPost = ADOBoletoOperacaoAfterPost
    CommandText = 
      'SELECT TOP 1 Id_Boleto, Carteira, Proposta, CodigoCedente, Cliti' +
      'p, CodigoPromotor,   CodigoProduto'#13#10', DataOperacao, TaxaMes, Flo' +
      'ating, ValorOperacao, AlterarCondicaoBasica, DevolverPreliminarP' +
      'araAnalise'#13#10', ValorCustoCobranca, ValorDoc, ValorTaxaTac, ValorT' +
      'ac, ValorTaxaSobreSaque, ValorSobreSaque,TaxaAberturaCredito'#13#10', ' +
      'ValorCustoRegistro, ValorCustoCadastro, ValorTaxaCpmf, ValorCpmf' +
      ', ValorTaxaIOF, ValorIOF'#13#10', ValorCustoAdministrativo, ValorOutra' +
      'sDespesas, PercentualCaucao, DebitarTituloOuContaCorrente'#13#10', Ins' +
      'trucoesDebitosExistente, OutrasInformacoes, DataPromotor, DataLi' +
      'beracaoEntrada, DataLiberacaoSaida'#13#10' ,DataFinanceiroEntrada, Dat' +
      'aFinanceiroSaida, UsuarioLiberacao, UsuarioFinanceiro, UsuarioCo' +
      'mercial'#13#10' ,ValorTaxaRisco, ValorCustoRisco, TotalTitulo,  Codigo' +
      'TabelaTarifa, TaxaEfetiva, StatusBoletoOperacao, TipoContrato'#13#10',' +
      ' ValorTaxaTMF,ValorTMF, TarifaDigitacao, CodigoControleArquivo, ' +
      'CodigoTipoCarteira, TaxaNominalPosFixada'#13#10', DataPrimeiraParcela,' +
      ' Amortizacao, TipoPagtoTac, TipoPagtoIOF, DiasCarencia, Parcelas' +
      'Carencia'#13#10', TipoVencimentoParcela, ValorFinanciado, ValorLiquido' +
      ', ValorSomatorioTacs, ValorCarencia, Prazo, PrazoEfetivo'#13#10',  Val' +
      'orReferencia, ValorPMT, Juros , ValorLiberado'#13#10',CodigoAgencia, I' +
      'd_ContratoOperacao, ValorAjusteIOF , CongelarPMT, TaxaInternaRet' +
      'orno, ValorTaxaIOFComplementar'#13#10', ValorIOFComplementar, CodigoRe' +
      'giao, CodigoCenario, VrTacDigitada, CustoEfetivoTotal,DomicilioB' +
      'ancario'#13#10'FROM dbo.KG_BoletoOperacao'#13#10'where Proposta = :Proposta ' +
      'and Carteira = :Carteira'#13#10
    CommandTimeout = 9999
    EnableBCD = False
    Parameters = <
      item
        Name = 'Proposta'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Carteira'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    Left = 587
    Top = 16
    object ADOBoletoOperacaoId_Boleto: TAutoIncField
      FieldName = 'Id_Boleto'
      ReadOnly = True
    end
    object ADOBoletoOperacaoCarteira: TStringField
      FieldName = 'Carteira'
      Size = 2
    end
    object ADOBoletoOperacaoProposta: TIntegerField
      FieldName = 'Proposta'
    end
    object ADOBoletoOperacaoCodigoCedente: TIntegerField
      FieldName = 'CodigoCedente'
    end
    object ADOBoletoOperacaoClitip: TStringField
      FieldName = 'Clitip'
      Size = 1
    end
    object ADOBoletoOperacaoCodigoPromotor: TIntegerField
      FieldName = 'CodigoPromotor'
    end
    object ADOBoletoOperacaoCodigoProduto: TIntegerField
      FieldName = 'CodigoProduto'
    end
    object ADOBoletoOperacaoDataOperacao: TDateTimeField
      FieldName = 'DataOperacao'
    end
    object ADOBoletoOperacaoTaxaMes: TFloatField
      FieldName = 'TaxaMes'
    end
    object ADOBoletoOperacaoFloating: TStringField
      FieldName = 'Floating'
      Size = 2
    end
    object ADOBoletoOperacaoValorOperacao: TFloatField
      FieldName = 'ValorOperacao'
    end
    object ADOBoletoOperacaoAlterarCondicaoBasica: TStringField
      FieldName = 'AlterarCondicaoBasica'
      FixedChar = True
      Size = 3
    end
    object ADOBoletoOperacaoDevolverPreliminarParaAnalise: TStringField
      FieldName = 'DevolverPreliminarParaAnalise'
      FixedChar = True
      Size = 3
    end
    object ADOBoletoOperacaoValorCustoCobranca: TFloatField
      FieldName = 'ValorCustoCobranca'
    end
    object ADOBoletoOperacaoValorDoc: TFloatField
      FieldName = 'ValorDoc'
    end
    object ADOBoletoOperacaoValorTaxaTac: TFloatField
      FieldName = 'ValorTaxaTac'
    end
    object ADOBoletoOperacaoValorTac: TFloatField
      FieldName = 'ValorTac'
    end
    object ADOBoletoOperacaoValorTaxaSobreSaque: TFloatField
      FieldName = 'ValorTaxaSobreSaque'
    end
    object ADOBoletoOperacaoValorSobreSaque: TFloatField
      FieldName = 'ValorSobreSaque'
    end
    object ADOBoletoOperacaoTaxaAberturaCredito: TFloatField
      FieldName = 'TaxaAberturaCredito'
    end
    object ADOBoletoOperacaoValorCustoRegistro: TFloatField
      FieldName = 'ValorCustoRegistro'
    end
    object ADOBoletoOperacaoValorCustoCadastro: TFloatField
      FieldName = 'ValorCustoCadastro'
    end
    object ADOBoletoOperacaoValorTaxaCpmf: TFloatField
      FieldName = 'ValorTaxaCpmf'
    end
    object ADOBoletoOperacaoValorCpmf: TFloatField
      FieldName = 'ValorCpmf'
    end
    object ADOBoletoOperacaoValorTaxaIOF: TFloatField
      FieldName = 'ValorTaxaIOF'
    end
    object ADOBoletoOperacaoValorIOF: TFloatField
      FieldName = 'ValorIOF'
    end
    object ADOBoletoOperacaoValorCustoAdministrativo: TFloatField
      FieldName = 'ValorCustoAdministrativo'
    end
    object ADOBoletoOperacaoValorOutrasDespesas: TFloatField
      FieldName = 'ValorOutrasDespesas'
    end
    object ADOBoletoOperacaoPercentualCaucao: TFloatField
      FieldName = 'PercentualCaucao'
    end
    object ADOBoletoOperacaoDebitarTituloOuContaCorrente: TStringField
      FieldName = 'DebitarTituloOuContaCorrente'
      FixedChar = True
      Size = 3
    end
    object ADOBoletoOperacaoInstrucoesDebitosExistente: TMemoField
      FieldName = 'InstrucoesDebitosExistente'
      BlobType = ftMemo
    end
    object ADOBoletoOperacaoOutrasInformacoes: TMemoField
      FieldName = 'OutrasInformacoes'
      BlobType = ftMemo
    end
    object ADOBoletoOperacaoDataPromotor: TDateTimeField
      FieldName = 'DataPromotor'
    end
    object ADOBoletoOperacaoDataLiberacaoEntrada: TDateTimeField
      FieldName = 'DataLiberacaoEntrada'
    end
    object ADOBoletoOperacaoDataLiberacaoSaida: TDateTimeField
      FieldName = 'DataLiberacaoSaida'
    end
    object ADOBoletoOperacaoDataFinanceiroEntrada: TDateTimeField
      FieldName = 'DataFinanceiroEntrada'
    end
    object ADOBoletoOperacaoDataFinanceiroSaida: TDateTimeField
      FieldName = 'DataFinanceiroSaida'
    end
    object ADOBoletoOperacaoUsuarioLiberacao: TIntegerField
      FieldName = 'UsuarioLiberacao'
    end
    object ADOBoletoOperacaoUsuarioFinanceiro: TIntegerField
      FieldName = 'UsuarioFinanceiro'
    end
    object ADOBoletoOperacaoUsuarioComercial: TIntegerField
      FieldName = 'UsuarioComercial'
    end
    object ADOBoletoOperacaoValorTaxaRisco: TFloatField
      FieldName = 'ValorTaxaRisco'
    end
    object ADOBoletoOperacaoValorCustoRisco: TFloatField
      FieldName = 'ValorCustoRisco'
    end
    object ADOBoletoOperacaoTotalTitulo: TIntegerField
      FieldName = 'TotalTitulo'
    end
    object ADOBoletoOperacaoCodigoTabelaTarifa: TIntegerField
      FieldName = 'CodigoTabelaTarifa'
    end
    object ADOBoletoOperacaoTaxaEfetiva: TFloatField
      FieldName = 'TaxaEfetiva'
    end
    object ADOBoletoOperacaoStatusBoletoOperacao: TStringField
      FieldName = 'StatusBoletoOperacao'
      Size = 11
    end
    object ADOBoletoOperacaoTipoContrato: TStringField
      FieldName = 'TipoContrato'
      Size = 1
    end
    object ADOBoletoOperacaoValorTaxaTMF: TFloatField
      FieldName = 'ValorTaxaTMF'
    end
    object ADOBoletoOperacaoValorTMF: TFloatField
      FieldName = 'ValorTMF'
    end
    object ADOBoletoOperacaoTarifaDigitacao: TFloatField
      FieldName = 'TarifaDigitacao'
    end
    object ADOBoletoOperacaoCodigoControleArquivo: TIntegerField
      FieldName = 'CodigoControleArquivo'
    end
    object ADOBoletoOperacaoCodigoTipoCarteira: TIntegerField
      FieldName = 'CodigoTipoCarteira'
    end
    object ADOBoletoOperacaoTaxaNominalPosFixada: TFloatField
      FieldName = 'TaxaNominalPosFixada'
    end
    object ADOBoletoOperacaoDataPrimeiraParcela: TDateTimeField
      FieldName = 'DataPrimeiraParcela'
    end
    object ADOBoletoOperacaoAmortizacao: TFloatField
      FieldName = 'Amortizacao'
    end
    object ADOBoletoOperacaoTipoPagtoTac: TStringField
      FieldName = 'TipoPagtoTac'
      Size = 1
    end
    object ADOBoletoOperacaoTipoPagtoIOF: TStringField
      FieldName = 'TipoPagtoIOF'
      FixedChar = True
      Size = 1
    end
    object ADOBoletoOperacaoDiasCarencia: TIntegerField
      FieldName = 'DiasCarencia'
    end
    object ADOBoletoOperacaoParcelasCarencia: TIntegerField
      FieldName = 'ParcelasCarencia'
    end
    object ADOBoletoOperacaoTipoVencimentoParcela: TStringField
      FieldName = 'TipoVencimentoParcela'
      Size = 8
    end
    object ADOBoletoOperacaoValorFinanciado: TFloatField
      FieldName = 'ValorFinanciado'
    end
    object ADOBoletoOperacaoValorLiquido: TFloatField
      FieldName = 'ValorLiquido'
    end
    object ADOBoletoOperacaoValorSomatorioTacs: TFloatField
      FieldName = 'ValorSomatorioTacs'
    end
    object ADOBoletoOperacaoValorCarencia: TFloatField
      FieldName = 'ValorCarencia'
    end
    object ADOBoletoOperacaoPrazo: TFloatField
      FieldName = 'Prazo'
    end
    object ADOBoletoOperacaoPrazoEfetivo: TFloatField
      FieldName = 'PrazoEfetivo'
    end
    object ADOBoletoOperacaoValorReferencia: TFloatField
      FieldName = 'ValorReferencia'
    end
    object ADOBoletoOperacaoValorPMT: TFloatField
      FieldName = 'ValorPMT'
    end
    object ADOBoletoOperacaoJuros: TFloatField
      FieldName = 'Juros'
    end
    object ADOBoletoOperacaoValorLiberado: TFloatField
      FieldName = 'ValorLiberado'
    end
    object ADOBoletoOperacaoCodigoAgencia: TIntegerField
      FieldName = 'CodigoAgencia'
    end
    object ADOBoletoOperacaoId_ContratoOperacao: TIntegerField
      FieldName = 'Id_ContratoOperacao'
    end
    object ADOBoletoOperacaoValorAjusteIOF: TFloatField
      FieldName = 'ValorAjusteIOF'
    end
    object ADOBoletoOperacaoCongelarPMT: TStringField
      FieldName = 'CongelarPMT'
      FixedChar = True
      Size = 3
    end
    object ADOBoletoOperacaoTaxaInternaRetorno: TFloatField
      FieldName = 'TaxaInternaRetorno'
    end
    object ADOBoletoOperacaoValorTaxaIOFComplementar: TFloatField
      FieldName = 'ValorTaxaIOFComplementar'
    end
    object ADOBoletoOperacaoValorIOFComplementar: TFloatField
      FieldName = 'ValorIOFComplementar'
    end
    object ADOBoletoOperacaoCodigoRegiao: TIntegerField
      FieldName = 'CodigoRegiao'
    end
    object ADOBoletoOperacaoCodigoCenario: TIntegerField
      FieldName = 'CodigoCenario'
    end
    object ADOBoletoOperacaoVrTacDigitada: TFloatField
      FieldName = 'VrTacDigitada'
    end
    object ADOBoletoOperacaoCustoEfetivoTotal: TFloatField
      FieldName = 'CustoEfetivoTotal'
    end
    object ADOBoletoOperacaoDomicilioBancario: TStringField
      FieldName = 'DomicilioBancario'
      Size = 3
    end
  end
  object ADOTipoCarteira: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 'select CodigoTipoCarteira, Descricao'#13#10'from Kg_TipoCarteira'#13#10
    CommandTimeout = 9999
    EnableBCD = False
    Parameters = <>
    Left = 729
    Top = 18
  end
  object ADOCustoEfetivo: TADOCommand
    CommandText = 'Sp_CustoEfetivoTotal;1'
    CommandTimeout = 99999
    CommandType = cmdStoredProc
    Connection = DMConecta.ADOCapitalDeGiro
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@PROPOSTA'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TABELA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@TAXA'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdOutput
        NumericScale = 2
        Precision = 9
        Value = Null
      end
      item
        Name = '@COD_RETORNO'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@DES_RETORNO'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdOutput
        Size = 255
        Value = Null
      end>
    Left = 808
    Top = 262
  end
  object httpIImpedidosDeOperar: THTTPRIO
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 800
    Top = 336
  end
  object ADORepresentantesCliente: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    LockType = ltReadOnly
    EnableBCD = False
    Parameters = <
      item
        Name = 'codCli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Declare @codcli int'
      'set @codcli = :codCli'
      ''
      'Select '
      #9'Kg_Representantes.REP_INSCRICAO As CpfCnpj,'
      #9'Kg_Representantes.REP_NOME As NOME'
      'From '
      #9'FACTBCLI inner join'
      
        #9'Kg_Representantes on (IsNull(FACTBCLI.CLICGC,'#39#39') + IsNull(FACTB' +
        'CLI.CLICGCFILI,'#39#39') + IsNull(FACTBCLI.CLICGCDV,'#39#39') = REP_INSCRICA' +
        'OCEDENTE and CLITIP = '#39'C'#39')'
      'Where '
      #9'FACTBCLI.CLICOD = @codcli and'
      #9'FACTBCLI.CLITIP = '#39'C'#39' '
      ''
      'Union All'
      ''
      'Select'
      
        #9'IsNull(FACTBCLI.CLICGC,'#39#39') + IsNull(FACTBCLI.CLICGCFILI,'#39#39') + I' +
        'sNull(FACTBCLI.CLICGCDV,'#39#39') As CpfCnpj,'
      #9'FACTBCLI.CLINOM AS NOME'
      'From '
      #9'FACTBCLI'
      'Where '
      #9'FACTBCLI.CLITIP = '#39'C'#39' And '
      #9'FACTBCLI.CLICOD = @codcli ')
    Left = 801
    Top = 40
    object ADORepresentantesClienteCpfCnpj: TStringField
      FieldName = 'CpfCnpj'
      ReadOnly = True
      Size = 15
    end
    object ADORepresentantesClienteNOME: TStringField
      FieldName = 'NOME'
      ReadOnly = True
      Size = 60
    end
  end
  object ADOReservaContrato: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    Parameters = <>
    Left = 816
    Top = 187
  end
  object ADOaux: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    Parameters = <>
    Left = 720
    Top = 400
  end
  object ADOCustoEfetivocapitaldegiro2: TADOCommand
    CommandText = 'SP_CUSTOEFETIVOTOTAL_CG;1'
    CommandTimeout = 9999
    CommandType = cmdStoredProc
    Connection = DMConecta.ADOCapitalDeGiro
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <>
    Left = 448
    Top = 208
  end
  object ADOCustoEfetivocapitaldegiro: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CommandTimeout = 99999
    Parameters = <
      item
        Name = '1'
        Size = -1
        Value = Null
      end
      item
        Name = '2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'exec SP_CUSTOEFETIVOTOTAL_CG :1,:2')
    Left = 568
    Top = 296
  end
  object ADOaux2: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CommandTimeout = 9999
    Parameters = <>
    Left = 752
    Top = 400
  end
end
