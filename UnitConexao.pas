unit UnitConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    tbPacientes: TFDTable;
    dsPacientes: TDataSource;
    tbAgendamentos: TFDTable;
    dsAgendamentos: TDataSource;
    tbAgendamentosid: TFDAutoIncField;
    tbAgendamentosid_paciente: TIntegerField;
    tbAgendamentosdata: TDateField;
    tbAgendamentoshora: TStringField;
    tbAgendamentosespecialidade: TStringField;
    tbAgendamentosmedico: TStringField;
    tbPacientesid: TFDAutoIncField;
    tbPacientescpf: TStringField;
    tbPacientesnome: TStringField;
    tbPacientescelular: TStringField;
    tbPacientesdata_cadastro: TDateField;
    procedure tbPacientesAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.tbPacientesAfterInsert(DataSet: TDataSet);
begin
tbPacientesdata_cadastro.Value := Date()
end;

end.
