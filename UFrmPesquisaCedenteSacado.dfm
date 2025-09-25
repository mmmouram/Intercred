object FrmPesquisaCedenteSacado: TFrmPesquisaCedenteSacado
  Left = 379
  Top = 145
  ActiveControl = EdtPesquisa
  BorderStyle = bsDialog
  Caption = 'Pesquisa'
  ClientHeight = 326
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 641
    Height = 326
    Align = alClient
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 10
      Top = 2
      Width = 155
      Height = 46
      Caption = ' &Campo para a pesquisa '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object CBxCampos: TComboBox
        Left = 8
        Top = 16
        Width = 133
        Height = 22
        BevelKind = bkSoft
        Style = csOwnerDrawFixed
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 16
        ItemIndex = 3
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = 'Nome / Raz'#227'o Social'
        Items.Strings = (
          'C'#243'digo'
          'Grupo'
          'CPF / CNPJ'
          'Nome / Raz'#227'o Social'
          'Cidade')
      end
    end
    object GroupBox2: TGroupBox
      Left = 171
      Top = 2
      Width = 279
      Height = 46
      Caption = ' &Valor da pesquisa '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object EdtPesquisa: TEdit
        Left = 8
        Top = 17
        Width = 260
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnKeyDown = EdtPesquisaKeyDown
      end
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 278
      Width = 637
      Height = 44
      Align = alBottom
      Caption = 'Itens Encontrados '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Panel1: TPanel
        Left = 2
        Top = 15
        Width = 183
        Height = 27
        Align = alLeft
        BevelInner = bvLowered
        BevelOuter = bvNone
        TabOrder = 0
      end
      object BitBtnSair: TBitBtn
        Left = 551
        Top = 10
        Width = 82
        Height = 30
        Caption = '&Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
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
    end
    object GroupBox4: TGroupBox
      Left = 459
      Top = 2
      Width = 174
      Height = 46
      TabOrder = 3
      object RadioButton2: TRadioButton
        Left = 9
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Desmarcar todos'
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton2Click
      end
      object RadioButton1: TRadioButton
        Left = 9
        Top = 7
        Width = 113
        Height = 17
        Caption = 'Marcar Todos'
        TabOrder = 1
        TabStop = True
        OnClick = RadioButton1Click
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 51
      Width = 637
      Height = 227
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 4
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 635
        Height = 225
        Align = alClient
        BorderStyle = bsNone
        Color = clBtnFace
        DataSource = DSPesquisa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnKeyUp = DBGrid1KeyUp
        Columns = <
          item
            Color = clWindow
            Expanded = False
            FieldName = 'CLICOD'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'CLIEMPTITU'
            Title.Alignment = taCenter
            Title.Caption = 'Grupo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'CLICGC'
            Title.Alignment = taCenter
            Title.Caption = 'Matriz'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'CLICGCFILI'
            Title.Caption = 'Filial'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'CLICGCDV'
            Title.Alignment = taCenter
            Title.Caption = 'DV'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 25
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'CLINOM'
            Title.Alignment = taCenter
            Title.Caption = 'Nome / Raz'#227'o Social'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end>
      end
    end
  end
  object ADOPesquisa: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    AfterScroll = ADOPesquisaAfterScroll
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      
        'select CLICOD,  CLIEMPTITU, CLICGC, CLICGCFILI, CLICGCDV, CLINOM' +
        ' , CLICID, CLIEST'
      ' from factbcli with (nolock) '
      ''
      ''
      ' order by CLINOM, CLICGC')
    Left = 48
    Top = 128
    object ADOPesquisaCLICOD: TIntegerField
      FieldName = 'CLICOD'
    end
    object ADOPesquisaCLIEMPTITU: TIntegerField
      FieldName = 'CLIEMPTITU'
    end
    object ADOPesquisaCLICGC: TStringField
      FieldName = 'CLICGC'
      Size = 14
    end
    object ADOPesquisaCLICGCFILI: TStringField
      FieldName = 'CLICGCFILI'
      Size = 4
    end
    object ADOPesquisaCLICGCDV: TStringField
      FieldName = 'CLICGCDV'
      Size = 2
    end
    object ADOPesquisaCLINOM: TStringField
      FieldName = 'CLINOM'
      Size = 37
    end
    object ADOPesquisaCLICID: TStringField
      FieldName = 'CLICID'
      Size = 15
    end
    object ADOPesquisaCLIEST: TStringField
      FieldName = 'CLIEST'
      Size = 2
    end
  end
  object DSPesquisa: TDataSource
    DataSet = ADOPesquisa
    Left = 80
    Top = 128
  end
end
