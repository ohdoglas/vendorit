object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Vendorit'
  ClientHeight = 602
  ClientWidth = 856
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mainMenu
  Position = poScreenCenter
  WindowState = wsMaximized
  TextHeight = 15
  object mainMenu: TMainMenu
    Left = 824
    Top = 568
    object mmArquivo: TMenuItem
      Caption = 'Arquivo'
      object Login1: TMenuItem
        Caption = 'Login'
      end
      object Login2: TMenuItem
        Caption = 'Logout'
        Enabled = False
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        ShortCut = 32883
        OnClick = Sair1Click
      end
    end
    object mmEstoque: TMenuItem
      Caption = 'Estoque'
      object CadastrarProduto1: TMenuItem
        Caption = 'Cadastrar Produto'
      end
      object GerenciarEstoque1: TMenuItem
        Caption = 'Gerenciar Estoque'
      end
      object EntradadeProdutos1: TMenuItem
        Caption = 'Entrada de Produtos'
      end
      object SadadeProdutos1: TMenuItem
        Caption = 'Sa'#237'da de Produtos'
      end
      object SadadeProdutos2: TMenuItem
        Caption = 'Relat'#243'rios de Estoque'
      end
    end
    object mmVendas: TMenuItem
      Caption = 'Vendas'
      object NovaVenda1: TMenuItem
        Caption = 'Nova Venda'
      end
      object ConsultarVendas1: TMenuItem
        Caption = 'Consultar Vendas'
      end
      object ConsultarVendas2: TMenuItem
        Caption = 'Relat'#243'rio de Vendas'
      end
    end
    object mmUsuarios: TMenuItem
      Caption = 'Usu'#225'rios'
      object CadastrarUsurios1: TMenuItem
        Caption = 'Cadastrar Usu'#225'rio'
      end
      object GerenciarUsurios1: TMenuItem
        Caption = 'Gerenciar Usu'#225'rios'
      end
      object GerenciarUsurios2: TMenuItem
        Caption = 'Permiss'#245'es'
      end
    end
    object mmFerramentas: TMenuItem
      Caption = 'Ferramentas'
      object SincronizarcomServidor1: TMenuItem
        Caption = 'Sincronizar com Servidor'
      end
      object SincronizarcomServidor2: TMenuItem
        Caption = 'Configura'#231#245'es'
      end
    end
    object mmAjuda: TMenuItem
      Caption = 'Ajuda'
      object SobreoSistema1: TMenuItem
        Caption = 'Sobre o Sistema'
      end
      object Documentao1: TMenuItem
        Caption = 'Documenta'#231#227'o'
      end
    end
  end
end
