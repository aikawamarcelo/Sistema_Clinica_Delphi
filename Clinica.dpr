program Clinica;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {frmPrincipal},
  UnitCadPacientes in 'UnitCadPacientes.pas' {frmCadPacientes},
  UnitCadAgendamento in 'UnitCadAgendamento.pas' {frmCadAgendamentos},
  UnitConexao in 'UnitConexao.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadPacientes, frmCadPacientes);
  Application.CreateForm(TfrmCadAgendamentos, frmCadAgendamentos);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
