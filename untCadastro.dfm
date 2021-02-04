object FormCadastro: TFormCadastro
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Clientes'
  ClientHeight = 531
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxDados: TGroupBox
    Left = 0
    Top = 0
    Width = 495
    Height = 214
    Align = alTop
    Caption = ' Dados '
    TabOrder = 7
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 16
      Top = 67
      Width = 52
      Height = 13
      Caption = 'Identidade'
    end
    object Label3: TLabel
      Left = 328
      Top = 67
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object Label4: TLabel
      Left = 16
      Top = 112
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object Label7: TLabel
      Left = 16
      Top = 161
      Width = 28
      Height = 13
      Caption = 'E-mail'
    end
  end
  object EditNome: TEdit
    Left = 16
    Top = 37
    Width = 433
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object EditIdentidade: TEdit
    Left = 16
    Top = 83
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object EditCPF: TEdit
    Left = 328
    Top = 83
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = EditCPFKeyPress
  end
  object EditTelefone: TEdit
    Left = 16
    Top = 128
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object EditEmail: TEdit
    Left = 16
    Top = 178
    Width = 433
    Height = 21
    TabOrder = 4
  end
  object GroupBoxEndereco: TGroupBox
    Left = 0
    Top = 214
    Width = 495
    Height = 254
    Align = alBottom
    Caption = ' Endere'#231'o '
    TabOrder = 5
    object Label6: TLabel
      Left = 16
      Top = 19
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object Label5: TLabel
      Left = 16
      Top = 64
      Width = 55
      Height = 13
      Caption = 'Logradouro'
    end
    object Label8: TLabel
      Left = 16
      Top = 109
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label9: TLabel
      Left = 198
      Top = 109
      Width = 65
      Height = 13
      Caption = 'Complemento'
    end
    object Label10: TLabel
      Left = 16
      Top = 156
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object SpeedButtonBuscaCep: TSpeedButton
      Left = 140
      Top = 35
      Width = 23
      Height = 23
      Hint = 'Pesquisa CEP via WebService'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFCCCCCCCCCCCCF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC497FAA4980ACB1BDC6CFCFCFCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC407F
        AF1EAAFF5AC8FF4593C7BB8825B67E0EB57B09B67E0DB88113BB8211B6831B90
        7E5B7A7A7C7B79787B79788F816B72A1C558C8FFBAF2FF4193CCB67E0EFFFFFF
        FFFFFFFFFFFFB47800F0EEF481848DB6B9BEE4E8ECE2E5EAE4E6EAB8B7B7827A
        76CFE3ED3290D4FFFFFFB47B09FFFFFFFFFFFFFFFFFFC99A3B928267B9BBBFE8
        DDCEEEC57DF6D789FCE49AECE7D8BBBABC9B9084FFFFFFFFFFFFB47A07FFFFFF
        FFFFFFFFFFFFFFFFFF7B7A7CF0F3F8E7B572F0CF92F6DC94FFEFA4FBE499F0F2
        F8818288FFFFFFFFFFFFB47A08FFFFFFFFFFFFFFFFFFE1CAB07F7F81F5F9FEEB
        C696F5E1BEF3DAA0F6DB94F4D587F5F9FF868587FFFFFFFFFFFFB47B08FFFFFF
        D5BB9DDAC3A8B65A0084888CFEFFFFE3B076FAF2E4F4E1BDEFCE91ECC37CFEFF
        FF8A898BFFFFFFFFFFFFB47B08FFFFFFFFFFF7FFFFFFB65E06A9A39BCED2D5F6
        E3CFE2B074E9C494E5B571F8EBD7CFD1D79C8A67FFFFFFFFFFFFB47B09FFFFFF
        D6B892DBC1A1B5600ACBA2748F9093D3D7DCFFFFFFFFFFFFFFFFFFD1D3D79293
        9CB7821AFFFFFFFFFFFFB47B08FFFFFFFFFBE4FFFFF2B5600BE2B580D7AC7A9F
        8A7491959B9194988F9195B5B1ABFFFFFFB87E09FFFFFFFFFFFFB57B08FFFFFF
        DDB382E1BB8EB95D04BD6108BE6106BD6106C06003C06001BB5B00E2BA8BFFFF
        FFB67C09FFFFFFFFFFFFB57C09FFFFFF44C4FF46C8FFE5BB8649CEFF4ACFFFE7
        BD894ACFFF4ACEFFE5BA8542C7FFFFFFFFB67C09FFFFFFFFFFFFB67E0EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB67E0EFFFFFFFFFFFFBD8C27B67E0EB67C09B67B08B57B08B67B08B67B08B5
        7B08B67B08B67B08B57B08B67C09B67E0EBD8C27FFFFFFFFFFFF}
      OnClick = SpeedButtonBuscaCepClick
    end
    object Label11: TLabel
      Left = 16
      Top = 205
      Width = 19
      Height = 13
      Caption = 'Pa'#237's'
    end
    object EditCep: TEdit
      Left = 16
      Top = 36
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyPress = EditCepKeyPress
    end
    object EditLogradouro: TEdit
      Left = 16
      Top = 80
      Width = 433
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EditNumero: TEdit
      Left = 16
      Top = 125
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object EditComplemento: TEdit
      Left = 198
      Top = 125
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object EditCidade: TEdit
      Left = 16
      Top = 173
      Width = 431
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object EditPais: TEdit
      Left = 16
      Top = 222
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 468
    Width = 495
    Height = 63
    Align = alBottom
    TabOrder = 6
    object SpeedButtonNovo: TSpeedButton
      Left = 9
      Top = 13
      Width = 76
      Height = 33
      Caption = 'Novo'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FDFDFDC5C5C5
        ACACAC9E9E9E969696939393CDCDCDCECECED2D2D2B1B1B12D9E4F289C4C2FA2
        52ECF6EFFFFFFFFFFFFFF6F6F64949492E2E2E2E2E2E2E2E2E2E2E2EB3B3B38F
        3511C7C7C73D6B4B0A953201B83309A33587C39AFFFFFFFFFFFFF7F7F7191919
        191919191919191919191919D2D2D2A3550FD2DED533614104902C00C134029D
        2E74B087E9F5EDF1F9F3FFFFFF2222221A1A1A1A1A1A1A1A1A1D1D1DF1F1F122
        8C272EA852148D38039D2E00C53500BB332CA35031A8552FA653FFFFFF454545
        252525252525252525383838B2D2BC24A22900F83700EB3500DD3500CF3500C5
        3500C13400BE341FB048FFFFFF888888343434343434343434565656B8D8C225
        9C2A06F53F02ED3700EB3500DD3500CF3504C13704BE361FB149FFFFFFF2F2F2
        AEAEAE6767674343437D7D7DE4E4E437902330A6541E934108AF3300EB3503D6
        3636AA5936AA5939AB5BFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAC7C8CAB0CCE472
        A8D769A2D552A19E21C24F00F83716C74395D1A7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDEDEDE6085A57EB7E3A7D7F4ADDBF762B5AE19BB5002FF3E16CE
        4495D1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF797A7B3B5E7EB9E4FBBF
        E6FDB4E1FC9ED0EE17984C32AC5631AC55E9F5EDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF0F0F0202122598DB9BDE6FDC1E8FDA8DCFBA6D5F379AED6E9F5EDE9F5
        EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF15151523313DBFE7FDC2
        E9FDAADDFCACDAF675AAD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA5A5A52727272F404EBFE8FDC2E9FEBFE7FEABD9F675AAD9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF323232313E4A7993A15F
        727D45545C2A343C536372F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE4E4E42F2F2F3232322222221010100D0D0D121212181818C3C3C3FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C76D6D6D4F505241
        43463A3A3A5C5C5C9D9D9DF9F9F9FFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButtonNovoClick
    end
    object SpeedButtonLimpar: TSpeedButton
      Left = 88
      Top = 13
      Width = 76
      Height = 33
      Caption = 'Limpar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FDFDFDC5C5C5
        ACACAC9E9E9E969696939393CDCDCDCECECED2D2D23131B54848B8C0C0C0DCDC
        DCD8D8F26E6ED4FFFFFFF6F6F64949492E2E2E2E2E2E2E2E2E2E2E2EB3B3B38F
        35115A5ACB1010C10A0AB61B1B8838389F0F0FB91515C26A6AD3F7F7F7191919
        191919191919191919191919D2D2D2CCAB999C9CEB0606B53737DB1818BD1D1D
        C33939DD1E1EC35151CCFFFFFF2222221A1A1A1A1A1A1A1A1A1D1D1DF1F1F1B8
        781AEDEDFA3535D32323C26465E76465E71111BA6B6BD4FFFFFFFFFFFF454545
        252525252525252525383838E5E5E5BB770A6363D01F20BF7B7CE94040CF8788
        EE2D2EC56D6DD4FFFFFFFFFFFF888888343434343434343434565656EDEDEDD5
        B49C2222BE7374E22A2BC33434C90F0FB88B8CEC2C2DC3BEBEECFFFFFFF2F2F2
        AEAEAE6767674343437D7D7DE4E4E4E8DFDE9FA0ED3030C25757B8E8E8F58E8F
        EB1414BA1F1FBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAC7C8CAB0CCE47E
        AEDAD5DFF3B6CFE9D8E5EFFEFEFFEDEDFAD3D3F2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDEDEDE6085A57EB7E3A7D7F4ADDBF790C6EB82B3DDFFFFFFFEFE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF797A7B3B5E7EB9E4FBBF
        E6FDB4E1FCA2D2F37FB0DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF0F0F0202122598DB9BDE6FDC1E8FDA8DCFBA6D5F37DAFDBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF15151523313DBFE7FDC2
        E9FDAADDFCACDAF675AAD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA5A5A52727272F404EBFE8FDC2E9FEBFE7FEABD9F675AAD9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF323232313E4A7993A15F
        727D45545C2A343C536372F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE4E4E42F2F2F3232322222221010100D0D0D121212181818C3C3C3FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C76D6D6D4F505241
        43463A3A3A5C5C5C9D9D9DF9F9F9FFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButtonLimparClick
    end
    object SpeedButtonEnviarEmail: TSpeedButton
      Left = 327
      Top = 13
      Width = 76
      Height = 33
      Caption = 'Email'
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        515E006A7C006A7C006A7C006A7C006A7C006A7C006A7C00515EFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01596720B7
        C729DBE928DAE979EDF528DAE928DAE91AB6C6015E6CFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF153328168E9A42D9E0
        33D5DD00000033D5DD34D5DD108C990C2622FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFCECEBDEDEDDDF3F3E3F3F3E3F3F3E3F3F3E3F2F3E363C3CB6BD9E146D3D775
        B4B540D0D249CCD155B5BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEDF
        D1D1C0E3E3D4E9E9DAE9E9DAE9E9DAE9E9DAACD8D45ECAD67CE4F100000068D8
        E74DBFCAB5E1DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6E8E6E6D8D6
        D6C5E6E6D8EBEBDEEBEBDEDBDBCDD8DBCD5DC5CF92E9F155555588E4EE5BC3CD
        F2F5E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7ECEEEEE3E9E9DDDADA
        C9E9E9DDDEDED2AEAE9DAEAE9D97CBCA72D6E0ABF5FC70D6E0A7DBDBF7F7ECFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9EFF1F1E8F1F1E8ECECE1D2D2C1
        B2B2A1E1E1D6E1E1D6ACB2A24FBEC7A7EFF45DCBD7EAEFE7F9F9EFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAF3F5F5EEF5F5EEE5E5DCB6B6A5E5E5DCF5
        F5EEF5F5EEE5E5DC72B6B44CC4D299DCE2F5F5EEFAFAF3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFCFCF7F8F8F3E9E9E1BBBBAAE9E9E1F8F8F3F8F8F3F8F8
        F3F8F8F3E9E9E1BBBBAAE9E9E1F8F8F3FCFCF7FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFDFDFAECECE5C0C0AFECECE5FBFBF7FBFBF7FBFBF7FBFBF7FBFBF7
        FBFBF7ECECE5C0C0AFECECE5FDFDFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF1F1EBC5C5B4EFEFE9FDFDFBFDFDFBFDFDFBFDFDFBFDFDFBFDFDFBFDFDFBFD
        FDFBEFEFE9C5C5B4F1F1EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9B8
        F1F1EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF1F1EDC9C9B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButtonEnviarEmailClick
    end
    object SpeedButtonSair: TSpeedButton
      Left = 407
      Top = 13
      Width = 76
      Height = 33
      Caption = 'Sair'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFEDEDEDCDCDCDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCA0B2C04B7DA368A4D95C5C5C5D5B5C
        5E5B5B5E5A5A5D5A5A5B5A5B5A5B5B5A5B5B5A5B5B5B5A5A5C59565768764E7E
        A44C80AC5082AB65A2D5FFFFFFFFFFFFFFFFFF3A6BA16B69666F68696C6A696C
        6A696C6A696C6A686E67624C89BA4E85B24D83AE5D8CB2629ED1FFFFFFFFFFFF
        CCCCCC009147068A4E6E606469636467646367646367646268615B4F8ABB5086
        B44F84B16895B95F9BCDFFFFFFCCCCCC00894552DCB0008E477257606B5B6067
        5E6064606062605F645D57518DBE528AB75187B4739FC25D97C9CCCCCC008744
        65D7B400DAA2008641008B44008F461C7D50645A5C605C5A6058525490C2558C
        BA4E81AD7EA6C85A94C4008A4874DABD00CD9C00CC9C00D29E00D5A05FF0D000
        91466353585D57565B534D5794C5588EBC47749B88AFCF5790C0008A4886DEC8
        00C59C00C49B63DCC85FDECA5EE4CF0092475E4F55585353574F4A5A96CA5B8F
        BE22B9F795B5D3548DBCFFFFFF0087439BE0D100C1A000863F008D4400924717
        7A4C584E5154504F524B455B9ACD5C91C120B7F59EBCD75189B8FFFFFFFFFFFF
        008843A2E6DA0090475B414B57474D544A4E514C4E4F4D4C4D46415E9CD25C95
        C55990C1A6C4DF4E86B5FFFFFFFFFFFFFFFFFF00904603874A5244494E484A4D
        494A4C4A4A4C48484A423D60A0D55D98C95894C6AFCCE64B83B0FFFFFFFFFFFF
        FFFFFF4C7AAE47423F4A4443484644484644484644474542433C365FA1D85C9A
        CC5896C9B8D3EB4980ACFFFFFFFFFFFFFFFFFF4C7EAF443832433B37433D3843
        3D38433D38423B363C332CB9DAF57FB0DA5495CCC0DAEF467CA8FFFFFFFFFFFF
        FFFFFF83A6C34B81AE4B83B04A83B04A83B04A83B04A82AF447DA9709CBFB9D5
        EBB3D1EAC1DBF24279A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF2F9CEE3F53F75A1}
      OnClick = SpeedButtonSairClick
    end
    object SpeedButtonGerarXML: TSpeedButton
      Left = 247
      Top = 13
      Width = 76
      Height = 33
      Caption = 'XML'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFC0BDB8
        5852445852445852445852445852445852445852445852445852445852445852
        44585244C1BFB9FFFFFFFFFFFFBFBCB6958D81E0DAD3E2DCD6E2DCD6E2DCD6E2
        DCD6E2DCD6E2DCD6E2DCD6E2DCD6E0DAD3958D81C3C0BBFFFFFFFFFFFFBABAB4
        968F83F9F8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8
        F7968F83C3C1BBFFFFFFFFFFFFB8BAB3989186FAF9F8FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F8989186C2C1BBFFFFFFB5B8B08A8A80
        8D8477E2DDD6ECE9E5F1EFECF6F4F3FAF9F8FDFDFCFEFEFEFFFFFFFFFFFFFAF9
        F8999288C3C2BCFFFFFF585244426C53527A60739A817DA58E84AD988AB5A18F
        BBA893C0AD95C2B095C2B1E4EFEBFAF9F99A948AC4C4BFFFFFFF5852442C8663
        6DAB932C86636DAB936DAB934695766DAB9395C2B195C2B1398D6CCAE0D7FBFA
        F99C968CC4C4BEFFFFFF5852442C86637AB39D95C2B098C4B3AFD1C460A489AF
        D1C48BBCA94695762F8765CAE0D7FBFAFA9D988EC2C3BDFFFFFF5852442C8663
        59A084B6D5C977B19AD0E4DCB6D5C8AFD1C47BB39D2C86632C8663CAE0D7FBFB
        FA9F9A90C1C2BCFFFFFF5852442C86638EBEAB2C86638EBEABA2CABA6DAB938E
        BEAB67A88E2C86632C8663CAE0D7FCFBFBA09B92C0C1BBFFFFFF585244426C53
        557D63749A827DA58E84AD988AB5A18FBBA893BFAD92BEAC8CB7A3CFD6CEDCD5
        CD928A7DBFBFB9FFFFFFB6BAB38C8C81968F84E5DFD9ECE9E5F1EFECF6F4F3FA
        F9F8FBFAF9BEB8ADBEB9ADC3BEB3C3BEB3857F72BEBEB7FFFFFFFFFFFFBABDB6
        A5A199FDFDFCFFFFFFFFFFFFFFFFFFFFFFFFF9F8F7B9B2A5F3F2F0FFFFFFC7C5
        C1625C4FE3E2E0FFFFFFFFFFFFBBBDB6A6A39BFDFDFDFFFFFFFFFFFFFFFFFFFF
        FFFFF5F3F1B2AA9CF3F2F0C7C5C1625C4FDCDBD8FFFFFFFFFFFFFFFFFFC0BFB9
        A8A59DFBFAF9FBFBF9FBFBF9FBFBF9FBFBF9EEEAE6AAA191BCB8B2625C4FDDDC
        D9FFFFFFFFFFFFFFFFFFFFFFFFC4C2BD58524458524458524458524458524458
        5244585244585244605A4DDDDCD9FFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButtonGerarXMLClick
    end
    object SpeedButtonGravar: TSpeedButton
      Left = 167
      Top = 13
      Width = 76
      Height = 33
      Caption = 'Gravar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FDFDFDC5C5C5
        ACACAC9E9E9E969696939393CDCDCD3B8F53167931A3ACA6BCBCBCC0C0C0DCDC
        DCFEFEFEFFFFFFFFFFFFF6F6F64949492E2E2E2E2E2E2E2E2E2E2E2E3F8C551B
        983E1EE06111742D3E46404444446D6D6DE7E7E7FFFFFFFFFFFFF7F7F7191919
        191919191919191919155F2A249E4B31ED7631ED762EE27011732D18211B1919
        19C8C8C8FFFFFFFFFFFFFFFFFF2222221A1A1A1A1A1A16612C22984A46F18A46
        F18A3CDA7946F18A41E68212732E19221CE5E5E5FFFFFFFFFFFFFFFFFF454545
        2525252525251969312EA0565DF59E26863B318B4C32A75C5DF59E56EA941374
        2FE8F0EAFFFFFFFFFFFFFFFFFF88888834343434343434343428733F20823E50
        6E21DFE0DF287D4239A86372F9B269EDA61F7F3CECF4EEFFFFFFFFFFFFF2F2F2
        AEAEAE6767674343437D7D7DCBD7CEC37700E4E4E48789881F743943AC6C84FC
        C249B67623813E7BB38BFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAC7C8CAB0CCE472
        A8D769A2D578A9D5D2E1E93B90554BB2748FFECB4DB478338B4EFFFFFFFFFFFF
        FFFFFFFFFFFFDEDEDE6085A57EB7E3A7D7F4ADDBF790C6EB82B3DDF7FAF8378D
        5245A96C23813F7BB38CFFFFFFFFFFFFFFFFFFFFFFFF797A7B3B5E7EB9E4FBBF
        E6FDB4E1FCA2D2F37FB0DCFFFFFFFFFFFF3E925882B691FFFFFFFFFFFFFFFFFF
        FFFFFFF0F0F0202122598DB9BDE6FDC1E8FDA8DCFBA6D5F37DAFDBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF15151523313DBFE7FDC2
        E9FDAADDFCACDAF675AAD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA5A5A52727272F404EBFE8FDC2E9FEBFE7FEABD9F675AAD9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF323232313E4A7993A15F
        727D45545C2A343C536372F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE4E4E42F2F2F3232322222221010100D0D0D121212181818C3C3C3FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C76D6D6D4F505241
        43463A3A3A5C5C5C9D9D9DF9F9F9FFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButtonGravarClick
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    AcceptEncoding = 'identity'
    BaseURL = 'http://viacep.com.br/ws/34002065/json'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 704
    Top = 232
  end
  object RESTResponse1: TRESTResponse
    Left = 704
    Top = 336
  end
  object DSProviderConnection1: TDSProviderConnection
    Left = 704
    Top = 416
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 704
    Top = 280
  end
end