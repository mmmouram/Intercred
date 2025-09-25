object FrmVisualizaMensagem: TFrmVisualizaMensagem
  Left = 50
  Top = 435
  BorderStyle = bsDialog
  Caption = 'Visualizador de Mensagens'
  ClientHeight = 151
  ClientWidth = 827
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 112
    Width = 827
    Height = 39
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 556
      Top = 1
      Width = 270
      Height = 37
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn2: TBitBtn
        Left = 191
        Top = 4
        Width = 75
        Height = 29
        Caption = '&Fechar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn2Click
        OnKeyPress = FormKeyPress
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
      object SpinEdit1: TSpinEdit
        Left = 133
        Top = 6
        Width = 54
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 1
        Value = 10
        OnChange = SpinEdit1Change
      end
    end
  end
  object Memo: TRichEdit
    Left = 0
    Top = 0
    Width = 827
    Height = 112
    Align = alClient
    BorderStyle = bsNone
    Color = clMenuBar
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ScrollBars = ssBoth
    ShowHint = True
    TabOrder = 1
    WantTabs = True
    OnKeyPress = FormKeyPress
  end
end
