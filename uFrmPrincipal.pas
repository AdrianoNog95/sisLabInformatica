unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Data.DB,
  Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup, Vcl.XPStyleActnCtrls, Vcl.StdStyleActnCtrls;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    btnCadastroUsuario: TSpeedButton;
    Label2: TLabel;
    btnConsultaUsuario: TSpeedButton;
    btnCadastroFuncionario: TSpeedButton;
    btnConsultaFuncionario: TSpeedButton;
    btnCadastroCliente: TSpeedButton;
    btnCadastroCargo: TSpeedButton;
    btnConsultaCargo: TSpeedButton;
    btnConsultaCliente: TSpeedButton;
    btnEntradaEquipamento: TSpeedButton;
    btnConsultaEquipamento: TSpeedButton;
    Label3: TLabel;
    btnTelaServicos: TSpeedButton;
    StatusBar1: TStatusBar;
    btnReceberPagamento: TSpeedButton;
    btnConsultaPagamento: TSpeedButton;
    Label4: TLabel;
    btnLiberarEquipamento: TSpeedButton;
    Label5: TLabel;
    btnGerarReciboFisica: TSpeedButton;
    btnEmitirRecibo: TSpeedButton;
    btnContato: TSpeedButton;
    btnSobre: TSpeedButton;
    PopupMenuGerarRecibo: TPopupMenu;
    PessoaFisica: TMenuItem;
    PessoaJuridica: TMenuItem;
    PopupMenuEmitirRecibo: TPopupMenu;
    EmitirPessoaFisica: TMenuItem;
    EmitirPessoaJuridica: TMenuItem;
    PopupMenuCadCliente: TPopupMenu;
    PopupMenuConsCliente: TPopupMenu;
    CadPessoaFisica: TMenuItem;
    CadPessoaJuridica: TMenuItem;
    ConsPessoaFisica: TMenuItem;
    ConsPessoaJuridica: TMenuItem;
    procedure btnCadastroUsuarioClick(Sender: TObject);
    procedure btnConsultaUsuarioClick(Sender: TObject);
    procedure btnCadastroFuncionarioClick(Sender: TObject);
    procedure btnConsultaFuncionarioClick(Sender: TObject);
    procedure btnCadastroCargoClick(Sender: TObject);
    procedure btnConsultaCargoClick(Sender: TObject);
    procedure btnEntradaEquipamentoClick(Sender: TObject);
    procedure btnLiberarEquipamentoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTelaServicosClick(Sender: TObject);
    procedure btnReceberPagamentoClick(Sender: TObject);
    procedure btnConsultaEquipamentoClick(Sender: TObject);
    procedure btnConsultaPagamentoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnContatoClick(Sender: TObject);
    procedure btnSobreClick(Sender: TObject);
    procedure PessoaFisicaClick(Sender: TObject);
    procedure PessoaJuridicaClick(Sender: TObject);
    procedure EmitirPessoaFisicaClick(Sender: TObject);
    procedure EmitirPessoaJuridicaClick(Sender: TObject);
    procedure CadPessoaFisicaClick(Sender: TObject);
    procedure CadPessoaJuridicaClick(Sender: TObject);
    procedure ConsPessoaFisicaClick(Sender: TObject);
    procedure ConsPessoaJuridicaClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uFrmCadastroUsuario, uDataModule1, uFrmConsultaUsuario,
  uFrmCadastroFuncionario, uFrmConsultaFuncionario,
  uFrmCadastroCargo, uFrmConsultaCargo, uFrmCadastroPessoaFisica,
  uFrmCadastroPessoaJuridica, uFrmConsultaPessoaFisica,
  uFrmConsultaPessoaJuridica, uFrmConsultaEquipamento,
  uFrmLogin, uFrmTelaServicos, uFrmEntradaEquipamento, uFrmCadastroPagamento,
  uFrmLiberarEquipamento, uFrmConsultaPagamento,
  uFrmGerarReciboFisica, uFrmConsultaReciboFisica, uFrmConsultaReciboJuridica,
  uFrmGerarReciboJuridica, uFrmContato, uFrmSobre;

procedure TfrmPrincipal.btnCadastroUsuarioClick(Sender: TObject);
begin
  DataModule1.qUsuario.Open;
  DataModule1.qUsuario.insert;

  frmCadastroUsuario:=TfrmCadastroUsuario.create(self);
  frmCadastroUsuario.ShowModal;
end;

procedure TfrmPrincipal.btnConsultaCargoClick(Sender: TObject);
begin
  frmConsultaCargo:=TfrmConsultaCargo.create(self);
  frmConsultaCargo.ShowModal;
end;

procedure TfrmPrincipal.btnConsultaEquipamentoClick(Sender: TObject);
begin
  frmConsultaEquipamento:=TfrmConsultaEquipamento.create(self);
  frmConsultaEquipamento.ShowModal;
end;

procedure TfrmPrincipal.btnLiberarEquipamentoClick(Sender: TObject);
begin
  frmLiberarEquipamento:=TfrmLiberarEquipamento.create(self);
  frmLiberarEquipamento.ShowModal;
end;

procedure TfrmPrincipal.btnConsultaFuncionarioClick(Sender: TObject);
begin
  frmConsultaFuncionario:=TfrmConsultaFuncionario.create(self);
  frmConsultaFuncionario.ShowModal;
end;


procedure TfrmPrincipal.btnConsultaPagamentoClick(Sender: TObject);
begin
  DataModule1.qPagamento.open;
  DataModule1.qPagamento.Edit;

  frmConsultaPagamento:=TfrmConsultaPagamento.create(self);
  frmConsultaPagamento.ShowModal;
end;

procedure TfrmPrincipal.btnConsultaUsuarioClick(Sender: TObject);
begin
  frmConsultaUsuario:=TfrmConsultaUsuario.create(self);
  frmConsultaUsuario.ShowModal;
end;

procedure TfrmPrincipal.btnContatoClick(Sender: TObject);
begin
  frmContato:=TfrmContato.create(self);
  frmContato.ShowModal;
end;

procedure TfrmPrincipal.btnReceberPagamentoClick(Sender: TObject);
begin
  DataModule1.qPagamento.Open;
  DataModule1.qPagamento.insert;

  frmCadastroPagamento:=TfrmCadastroPagamento.create(self);
  frmCadastroPagamento.ShowModal;
end;

procedure TfrmPrincipal.btnSobreClick(Sender: TObject);
begin
  frmSobre:=TfrmSobre.create(self);
  frmSobre.ShowModal;
end;

procedure TfrmPrincipal.btnTelaServicosClick(Sender: TObject);
begin
  frmTelaServicos:=TfrmTelaServicos.create(self);
  frmTelaServicos.ShowModal;
end;

procedure TfrmPrincipal.CadPessoaFisicaClick(Sender: TObject);
begin
  DataModule1.qCliente.Open;
  DataModule1.qCliente.insert;

  frmCadastroPessoaFisica:=TfrmCadastroPessoaFisica.create(self);
  frmCadastroPessoaFisica.ShowModal;
end;

procedure TfrmPrincipal.CadPessoaJuridicaClick(Sender: TObject);
begin
  DataModule1.qCliente.Open;
  DataModule1.qCliente.insert;

  frmCadastroPessoaJuridica:=TfrmCadastroPessoaJuridica.create(self);
  frmCadastroPessoaJuridica.ShowModal;
end;

procedure TfrmPrincipal.ConsPessoaFisicaClick(Sender: TObject);
begin
  frmConsultaPessoaFisica:=TfrmConsultaPessoaFisica.create(self);
  frmConsultaPessoaFisica.ShowModal;
end;

procedure TfrmPrincipal.ConsPessoaJuridicaClick(Sender: TObject);
begin
  frmConsultaPessoaJuridica:=TfrmConsultaPessoaJuridica.create(self);
  frmConsultaPessoaJuridica.ShowModal;
end;

procedure TfrmPrincipal.EmitirPessoaFisicaClick(Sender: TObject);
begin
  frmConsultaReciboFisica:=TfrmConsultaReciboFisica.create(self);
  frmConsultaReciboFisica.ShowModal;
end;

procedure TfrmPrincipal.EmitirPessoaJuridicaClick(Sender: TObject);
begin
  frmConsultaReciboJuridica:=TfrmConsultaReciboJuridica.create(self);
  frmConsultaReciboJuridica.ShowModal;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  begin
    if Application.MessageBox('Deseja encerrar a sessão e sair do sistema?', 'Pergunta', MB_YESNO+MB_ICONQUESTION)  = mrYes  then
       Application.Terminate
    else
       Abort;
   end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  if frmLogin.edtUsuario.text <> 'ADNOGUEIRA' then
  begin
    btnCadastroCargo.Enabled:=false;
    btnCadastroFuncionario.Enabled:=false;
    btnCadastroUsuario.Enabled:=false;
  end;

end;

procedure TfrmPrincipal.PessoaFisicaClick(Sender: TObject);
begin
  DataModule1.qRecibo.Open;
  DataModule1.qRecibo.insert;

  frmGerarReciboFisica:=TfrmGerarReciboFisica.create(self);
  frmGerarReciboFisica.ShowModal;
end;

procedure TfrmPrincipal.PessoaJuridicaClick(Sender: TObject);
begin
  DataModule1.qRecibo.Open;
  DataModule1.qRecibo.insert;

  frmGerarReciboJuridica:=TfrmGerarReciboJuridica.create(self);
  frmGerarReciboJuridica.ShowModal;
end;

procedure TfrmPrincipal.btnEntradaEquipamentoClick(Sender: TObject);
begin
  DataModule1.qServico.Open;
  DataModule1.qServico.insert;

  frmEntradaEquipamento:=TfrmEntradaEquipamento.create(self);
  frmEntradaEquipamento.ShowModal;
end;

procedure TfrmPrincipal.btnCadastroCargoClick(Sender: TObject);
begin
  DataModule1.qCargo.Open;
  DataModule1.qCargo.insert;

  frmCadastroCargo:=TfrmCadastroCargo.create(self);
  frmCadastroCargo.ShowModal;
end;

procedure TfrmPrincipal.btnCadastroFuncionarioClick(Sender: TObject);
begin
  DataModule1.qFuncionario.Open;
  DataModule1.qFuncionario.insert;

  frmCadastroFuncionario:=TfrmCadastroFuncionario.create(self);
  frmCadastroFuncionario.ShowModal;
end;


end.
