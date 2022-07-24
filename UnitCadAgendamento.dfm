object frmCadAgendamentos: TfrmCadAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Agendamentos'
  ClientHeight = 475
  ClientWidth = 858
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblID: TLabel
    Left = 32
    Top = 120
    Width = 15
    Height = 13
    Caption = 'ID:'
  end
  object lblNome: TLabel
    Left = 176
    Top = 120
    Width = 90
    Height = 13
    Caption = 'Nome do Paciente:'
  end
  object Label2: TLabel
    Left = 30
    Top = 192
    Width = 27
    Height = 13
    Caption = 'Data:'
  end
  object Label3: TLabel
    Left = 176
    Top = 192
    Width = 27
    Height = 13
    Caption = 'Hora:'
  end
  object Label4: TLabel
    Left = 32
    Top = 342
    Width = 68
    Height = 13
    Caption = 'Especialidade:'
  end
  object Label5: TLabel
    Left = 30
    Top = 264
    Width = 85
    Height = 13
    Caption = 'Nome do  M'#233'dico:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 858
    Height = 89
    Align = alTop
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 692
    object Label1: TLabel
      Left = 48
      Top = 26
      Width = 174
      Height = 28
      Caption = 'Agendamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 28
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNvPacientes: TDBNavigator
      Left = 324
      Top = 25
      Width = 320
      Height = 39
      DataSource = DM.dsAgendamentos
      TabOrder = 0
    end
  end
  object DBtxtID: TDBEdit
    Left = 30
    Top = 154
    Width = 121
    Height = 21
    DataField = 'id'
    DataSource = DM.dsAgendamentos
    Enabled = False
    TabOrder = 1
  end
  object TDBCboNomePaciente: TDBLookupComboBox
    Left = 176
    Top = 154
    Width = 281
    Height = 21
    DataField = 'id_paciente'
    DataSource = DM.dsAgendamentos
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsPacientes
    TabOrder = 2
  end
  object DBtxtData: TDBEdit
    Left = 30
    Top = 221
    Width = 121
    Height = 21
    DataField = 'data'
    DataSource = DM.dsAgendamentos
    TabOrder = 3
  end
  object DBtxtHora: TDBEdit
    Left = 176
    Top = 221
    Width = 113
    Height = 21
    DataField = 'hora'
    DataSource = DM.dsAgendamentos
    TabOrder = 4
  end
  object DBtxtNomeMedico: TDBEdit
    Left = 30
    Top = 299
    Width = 121
    Height = 21
    DataField = 'medico'
    DataSource = DM.dsAgendamentos
    TabOrder = 5
  end
  object DBCboEspecialidade: TDBComboBox
    Left = 30
    Top = 361
    Width = 191
    Height = 21
    DataField = 'especialidade'
    DataSource = DM.dsAgendamentos
    Items.Strings = (
      'Cardiologista'
      'Nutricionista'
      'Ortopedista'
      'Otorrinologista'
      'Pediatra'
      'Psiquiatra')
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 514
    Top = 154
    Width = 320
    Height = 247
    DataSource = DM.dsAgendamentos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = 'DATA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hora'
        Title.Caption = 'HORA'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Title.Caption = 'ESPECIALIDADE'
        Width = 153
        Visible = True
      end>
  end
end
