unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    TMainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sistema2: TMenuItem;
    Cadastros1: TMenuItem;
    Pacientes: TMenuItem;
    Agendamentos1: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure Sistema2Click(Sender: TObject);
    procedure PacientesClick(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UnitCadPacientes, UnitCadAgendamento;

procedure TfrmPrincipal.Agendamentos1Click(Sender: TObject);
begin
frmCadAgendamentos.ShowModal;
end;

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
begin
frmCadAgendamentos.ShowModal;
end;

procedure TfrmPrincipal.BitBtn2Click(Sender: TObject);
begin
 frmCadPacientes.ShowModal;
end;

procedure TfrmPrincipal.PacientesClick(Sender: TObject);
begin
 frmCadPacientes.ShowModal;
end;

procedure TfrmPrincipal.Sistema2Click(Sender: TObject);
begin
Application.Terminate
end;

end.
