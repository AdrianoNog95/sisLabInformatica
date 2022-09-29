program sisLabInformatica;



uses
  Vcl.Forms,
  uFrmCadastroBasico in 'modelos\uFrmCadastroBasico.pas' {frmCadastroBasico},
  uFrmCadastroUsuario in 'view\uFrmCadastroUsuario.pas' {frmCadastroUsuario},
  uFrmConsultaBasico in 'modelos\uFrmConsultaBasico.pas' {frmConsultaBasico},
  uFrmLogin in 'view\uFrmLogin.pas' {frmLogin},
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uFrmConsultaUsuario in 'view\uFrmConsultaUsuario.pas' {frmConsultaUsuario},
  uFrmCadastroFuncionario in 'view\uFrmCadastroFuncionario.pas' {frmCadastroFuncionario},
  uFrmConsultaFuncionario in 'view\uFrmConsultaFuncionario.pas' {frmConsultaFuncionario},
  uFrmCadastroPessoaFisica in 'view\uFrmCadastroPessoaFisica.pas' {frmCadastroPessoaFisica},
  uDataModule1 in 'DataModule\uDataModule1.pas' {DataModule1: TDataModule},
  uFrmChamadaNomeCliente in 'view\uFrmChamadaNomeCliente.pas' {frmChamadaNomeCliente},
  uFrmCadastroCargo in 'view\uFrmCadastroCargo.pas' {frmCadastroCargo},
  uFrmConsultaCargo in 'view\uFrmConsultaCargo.pas' {frmConsultaCargo},
  uFrmCadastroPessoaJuridica in 'view\uFrmCadastroPessoaJuridica.pas' {frmCadastroPessoaJuridica},
  uFrmConsultaPessoaFisica in 'view\uFrmConsultaPessoaFisica.pas' {frmConsultaPessoaFisica},
  uFrmConsultaPessoaJuridica in 'view\uFrmConsultaPessoaJuridica.pas' {frmConsultaPessoaJuridica},
  uFrmChamadaRazaoSocial in 'view\uFrmChamadaRazaoSocial.pas' {frmChamadaRazaoSocial},
  uFrmChamada in 'modelos\uFrmChamada.pas' {frmChamada},
  uFrmConsultaEquipamento in 'view\uFrmConsultaEquipamento.pas' {frmConsultaEquipamento},
  uSistema in 'classes\uSistema.pas',
  uFrmServico in 'view\uFrmServico.pas' {frmServico},
  uFrmCadastroPagamento in 'view\uFrmCadastroPagamento.pas' {frmCadastroPagamento},
  uFrmChamadaServico in 'view\uFrmChamadaServico.pas' {frmChamadaServico},
  uFrmSaidaEquipamento in 'view\uFrmSaidaEquipamento.pas' {frmSaidaEquipamento},
  uFrmLiberarEquipamento in 'view\uFrmLiberarEquipamento.pas' {frmLiberarEquipamento},
  uFrmContinuarServico in 'view\uFrmContinuarServico.pas' {frmContinuarServico},
  uFrmChamadaClienteGeral in 'view\uFrmChamadaClienteGeral.pas' {frmChamadaClienteGeral},
  uFrmConsultaPagamento in 'view\uFrmConsultaPagamento.pas' {frmConsultaPagamento},
  uDmRelatorios in 'DataModule\uDmRelatorios.pas' {DmRelatorios: TDataModule},
  uFrmGerarReciboFisica in 'view\uFrmGerarReciboFisica.pas' {frmGerarReciboFisica},
  uFrmConsultaReciboFisica in 'view\uFrmConsultaReciboFisica.pas' {frmConsultaReciboFisica},
  uFrmEntradaEquipamento in 'view\uFrmEntradaEquipamento.pas' {frmEntradaEquipamento},
  uFrmChamadaPagamento in 'view\uFrmChamadaPagamento.pas' {frmChamadaPagamentoFisica},
  uFrmChamadaNomeClientePagamento in 'view\uFrmChamadaNomeClientePagamento.pas' {frmChamadaNomeClientePagamento},
  uFrmChamadaServicoPagamento in 'view\uFrmChamadaServicoPagamento.pas' {frmChamadaServicoPagamento},
  uFrmConsultaReciboJuridica in 'view\uFrmConsultaReciboJuridica.pas' {frmConsultaReciboJuridica},
  uFrmGerarReciboJuridica in 'view\uFrmGerarReciboJuridica.pas' {frmGerarReciboJuridica},
  uFrmChamadaPagamentoJuridica in 'view\uFrmChamadaPagamentoJuridica.pas' {frmChamadaPagamentoJuridica},
  uFrmChamadaClienteJuridica in 'view\uFrmChamadaClienteJuridica.pas' {frmChamadaClienteJuridica},
  uFrmChamadaServicoJuridica in 'view\uFrmChamadaServicoJuridica.pas' {frmChamadaServicoJuridica},
  uFrmPagamentoRestante in 'view\uFrmPagamentoRestante.pas' {frmPagamentoRestante},
  uFrmContato in 'view\uFrmContato.pas' {frmContato},
  uFrmSobre in 'view\uFrmSobre.pas' {frmSobre},
  uFrmTelaServicos in 'view\uFrmTelaServicos.pas' {frmTelaServicos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
