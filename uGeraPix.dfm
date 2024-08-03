object frmGeraPix: TfrmGeraPix
  Left = 0
  Top = 0
  Caption = 'frmGeraPix'
  ClientHeight = 582
  ClientWidth = 665
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 52
    Height = 15
    Caption = 'Chave Pix'
  end
  object Label2: TLabel
    Left = 32
    Top = 80
    Width = 29
    Height = 15
    Caption = 'Valor:'
  end
  object Label3: TLabel
    Left = 32
    Top = 104
    Width = 101
    Height = 15
    Caption = 'Nome Benefici'#225'rio:'
  end
  object Label4: TLabel
    Left = 32
    Top = 128
    Width = 102
    Height = 15
    Caption = 'Cidade Benefici'#225'rio'
  end
  object Label5: TLabel
    Left = 32
    Top = 152
    Width = 105
    Height = 15
    Caption = 'Descri'#231#227'o Cobran'#231'a'
  end
  object Label6: TLabel
    Left = 32
    Top = 176
    Width = 65
    Height = 15
    Caption = 'Id Transa'#231#227'o'
  end
  object lbInst: TLabel
    Left = 32
    Top = 197
    Width = 545
    Height = 12
    Caption = 
      'Caso ita'#250', '#233' necess'#225'rio autoriza'#231#227'o do uso de identificador, sen' +
      #227'o utilize ***'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
    StyleElements = [seClient, seBorder]
  end
  object Label7: TLabel
    Left = 32
    Top = 53
    Width = 545
    Height = 13
    Caption = 
      'Chave pix pode ser, Alet[oria, Email, Telefone, cnpj ou cpf. Tel' +
      'efone utiliza +55DDDTelefone'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
    StyleElements = [seClient, seBorder]
  end
  object Label8: TLabel
    Left = 367
    Top = 76
    Width = 545
    Height = 14
    Caption = 'Default 0. Se desejar valor utilziar "." ponto como separador'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
    StyleElements = [seClient, seBorder]
  end
  object btPix: TSpeedButton
    Left = 32
    Top = 240
    Width = 153
    Height = 22
    Caption = 'Gerar PIX'
    OnClick = btPixClick
  end
  object btnQR: TSpeedButton
    Left = 224
    Top = 240
    Width = 153
    Height = 22
    Caption = 'Gerar QR'
    OnClick = btnQRClick
  end
  object btnCopiarchave: TSpeedButton
    Left = 544
    Top = 305
    Width = 97
    Height = 22
    Caption = 'Copiar'
    OnClick = btnCopiarchaveClick
  end
  object imgQR: TImage
    Left = 32
    Top = 313
    Width = 225
    Height = 196
    ParentShowHint = False
    ShowHint = True
    Stretch = True
  end
  object edtChave: TEdit
    Left = 240
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtValor: TEdit
    Left = 240
    Top = 72
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object edtCidade: TEdit
    Left = 240
    Top = 120
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object edtDesc: TEdit
    Left = 240
    Top = 144
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object edtId: TEdit
    Left = 240
    Top = 168
    Width = 121
    Height = 23
    TabOrder = 5
    Text = '***'
  end
  object Edit1: TEdit
    Left = 32
    Top = 276
    Width = 609
    Height = 23
    TabOrder = 6
  end
  object edtNome: TEdit
    Left = 240
    Top = 96
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 528
    Width = 665
    Height = 54
    Align = alBottom
    Caption = 'R'#244'mulo Tolfo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    StyleElements = [seClient, seBorder]
    OnClick = Panel1Click
  end
end
