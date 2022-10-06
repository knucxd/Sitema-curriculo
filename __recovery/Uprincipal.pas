unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB;

type
  Tfrm_principal = class(TForm)
    txt_nome: TDBEdit;
    lb_nome: TLabel;
    lb_titulo: TLabel;
    txt_telefone: TDBEdit;
    lb_telefone: TLabel;
    txt_email: TDBEdit;
    lb_endereco: TLabel;
    txt_endereco: TDBEdit;
    lb_email: TLabel;
    txt_experiencia: TDBEdit;
    txt_exp: TLabel;
    txt_idioma: TDBEdit;
    lb_idioma: TLabel;
    txt_formacao: TDBEdit;
    lb_formacao: TLabel;
    lb_clique: TLabel;
    btn_salvar: TButton;
    btn_gerar: TButton;
    btn_novo: TButton;
    txt_impressao: TEdit;

    procedure btn_gerarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);

  private
    procedure configbotoes;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses Udm;




procedure Tfrm_principal.btn_gerarClick(Sender: TObject);
begin
with U_dm.SQL_imprimir do
begin
Close;
Sql.Clear;
if txt_impressao.Text = ' ' then
begin
SQL.Add('select * from curriculo');
end
else
begin
SQL.Add('select * from curriculo where telefone = :telefone');
ParamByName('telefone').Value := StrToInt (txt_impressao.Text);
end;
Open;
U_dm.report_curriculo.LoadFromFile('C:\3-52 A BRABA\Dyanna\dyanna & alessandro\rel\rel_curriculo.fr3');
U_dm.report_curriculo.ShowReport();
end;
end;

procedure Tfrm_principal.btn_novoClick(Sender: TObject);
begin
u_dm.tb_curriculo.Insert;
end;

procedure Tfrm_principal.btn_salvarClick(Sender: TObject);
begin
U_dm.tb_curriculo.Post;
ShowMessage('Curriculo Salvo com Sucesso!!');
ConfigBotoes;
end;

procedure Tfrm_principal.configbotoes;
begin
 btn_salvar.Enabled := U_dm.tb_curriculo.State in [dsinsert, dsedit];
end;





end.
