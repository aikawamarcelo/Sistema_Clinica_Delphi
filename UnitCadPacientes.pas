unit UnitCadPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBID: TDBEdit;
    DBNome: TDBEdit;
    DBCelular: TDBEdit;
    DBDataCadastro: TDBEdit;
    DBCPF: TDBEdit;
    lblID: TLabel;
    lblCPF: TLabel;
    lblNome: TLabel;
    lblCelular: TLabel;
    lblDataCadastro: TLabel;
    DBGrid1: TDBGrid;
    DBNvPacientes: TDBNavigator;
    lblBuscarPacientes: TLabel;
    txtBuscarPaciente: TEdit;
    procedure txtBuscarPacienteChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPacientes: TfrmCadPacientes;

implementation

{$R *.dfm}

uses UnitConexao;

procedure TfrmCadPacientes.txtBuscarPacienteChange(Sender: TObject);
begin
// [loPartialKey] Busca o nome do paciente por partes
DM.tbPacientes.Locate('nome',txtBuscarPaciente.Text,[loPartialKey])
end;

end.
