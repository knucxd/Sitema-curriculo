object frm_principal: Tfrm_principal
  Left = 0
  Top = 0
  Caption = 'Gerador de curr'#237'culo '
  ClientHeight = 842
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object lb_nome: TLabel
    Left = 40
    Top = 157
    Width = 109
    Height = 16
    Caption = 'Digite o seu nome:'
  end
  object lb_titulo: TLabel
    Left = 232
    Top = 64
    Width = 168
    Height = 18
    Caption = 'Fa'#231'a o seu curr'#237'culo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object lb_telefone: TLabel
    Left = 40
    Top = 213
    Width = 187
    Height = 16
    Caption = 'Digite o seu n'#250'mero de telefone:'
  end
  object lb_endereco: TLabel
    Left = 40
    Top = 325
    Width = 130
    Height = 16
    Caption = 'Digite o seu endereco:'
  end
  object lb_email: TLabel
    Left = 40
    Top = 269
    Width = 112
    Height = 16
    Caption = 'Digite o seu e-mail:'
  end
  object txt_exp: TLabel
    Left = 40
    Top = 381
    Width = 164
    Height = 16
    Caption = 'Digite as suas experiencias:'
  end
  object lb_idioma: TLabel
    Left = 40
    Top = 437
    Width = 226
    Height = 16
    Caption = 'Digite em quais idiomas voc'#234' '#233' fluente:'
  end
  object lb_formacao: TLabel
    Left = 40
    Top = 493
    Width = 130
    Height = 16
    Caption = 'Digite a sua forma'#231#227'o:'
  end
  object lb_clique: TLabel
    Left = 120
    Top = 624
    Width = 391
    Height = 18
    Caption = 'Clique aqui para salvar e  gerar o seu curr'#237'culo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object txt_nome: TDBEdit
    Left = 40
    Top = 176
    Width = 121
    Height = 24
    DataField = 'nome'
    DataSource = U_dm.DataSource1
    TabOrder = 0
  end
  object txt_telefone: TDBEdit
    Left = 40
    Top = 232
    Width = 121
    Height = 24
    DataField = 'telefone'
    DataSource = U_dm.DataSource1
    TabOrder = 1
  end
  object txt_endereco: TDBEdit
    Left = 40
    Top = 344
    Width = 121
    Height = 24
    DataField = 'endereco'
    DataSource = U_dm.DataSource1
    TabOrder = 2
  end
  object txt_email: TDBEdit
    Left = 40
    Top = 288
    Width = 121
    Height = 24
    DataField = 'email'
    DataSource = U_dm.DataSource1
    TabOrder = 3
  end
  object txt_experiencia: TDBEdit
    Left = 40
    Top = 400
    Width = 121
    Height = 24
    DataField = 'experiencias'
    DataSource = U_dm.DataSource1
    TabOrder = 4
  end
  object txt_idioma: TDBEdit
    Left = 40
    Top = 456
    Width = 121
    Height = 24
    DataField = 'idiomas'
    DataSource = U_dm.DataSource1
    TabOrder = 5
  end
  object txt_formacao: TDBEdit
    Left = 40
    Top = 512
    Width = 481
    Height = 24
    DataField = 'nome'
    DataSource = U_dm.DataSource1
    TabOrder = 6
  end
  object btn_salvar: TButton
    Left = 74
    Top = 680
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 7
    OnClick = btn_salvarClick
  end
  object btn_gerar: TButton
    Left = 480
    Top = 680
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 8
    OnClick = btn_gerarClick
  end
  object txt_impressao: TDBEdit
    Left = 240
    Top = 728
    Width = 121
    Height = 24
    TabOrder = 9
    Visible = False
  end
end
