unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdHTTP, Vcl.Menus;

type
  TForm1 = class(TForm)
    mainMenu: TMainMenu;
    mmArquivo: TMenuItem;
    mmEstoque: TMenuItem;
    mmVendas: TMenuItem;
    mmUsuarios: TMenuItem;
    mmFerramentas: TMenuItem;
    mmAjuda: TMenuItem;
    SobreoSistema1: TMenuItem;
    Documentao1: TMenuItem;
    Sair1: TMenuItem;
    CadastrarProduto1: TMenuItem;
    GerenciarEstoque1: TMenuItem;
    EntradadeProdutos1: TMenuItem;
    SadadeProdutos1: TMenuItem;
    SadadeProdutos2: TMenuItem;
    NovaVenda1: TMenuItem;
    ConsultarVendas1: TMenuItem;
    ConsultarVendas2: TMenuItem;
    CadastrarUsurios1: TMenuItem;
    GerenciarUsurios1: TMenuItem;
    GerenciarUsurios2: TMenuItem;
    SincronizarcomServidor1: TMenuItem;
    SincronizarcomServidor2: TMenuItem;
    Login1: TMenuItem;
    Login2: TMenuItem;
    procedure Sair1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  HTTPClient: TIdHTTP;
  Response: string;

implementation

{$R *.dfm}





procedure TForm1.Sair1Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja sair do Vendorit?','Finalizar sess�o', MB_ICONWARNING+MB_YESNO) = IDYES then;
  begin
    Application.Terminate;
  end;
end;

end.
