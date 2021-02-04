unit untCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  IPPeerClient, REST.Client, Data.DB, Datasnap.DBClient, Datasnap.DSConnect,
  Data.Bind.Components, Data.Bind.ObjectScope, XMLDoc, XMLIntf;

type
  TFormCadastro = class(TForm)
    EditNome: TEdit;
    EditIdentidade: TEdit;
    EditCPF: TEdit;
    EditTelefone: TEdit;
    EditEmail: TEdit;
    GroupBoxEndereco: TGroupBox;
    Label6: TLabel;
    EditCep: TEdit;
    EditLogradouro: TEdit;
    Label5: TLabel;
    Label8: TLabel;
    EditNumero: TEdit;
    Label9: TLabel;
    EditComplemento: TEdit;
    EditCidade: TEdit;
    Label10: TLabel;
    SpeedButtonBuscaCep: TSpeedButton;
    Label11: TLabel;
    EditPais: TEdit;
    PanelBotoes: TPanel;
    SpeedButtonNovo: TSpeedButton;
    SpeedButtonLimpar: TSpeedButton;
    SpeedButtonEnviarEmail: TSpeedButton;
    SpeedButtonSair: TSpeedButton;
    SpeedButtonGerarXML: TSpeedButton;
    SpeedButtonGravar: TSpeedButton;
    GroupBoxDados: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    RESTClient1: TRESTClient;
    RESTResponse1: TRESTResponse;
    DSProviderConnection1: TDSProviderConnection;
    RESTRequest1: TRESTRequest;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DefineEstadoCampos(estadoCampo : Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButtonNovoClick(Sender: TObject);
    procedure SpeedButtonLimparClick(Sender: TObject);
    procedure SpeedButtonSairClick(Sender: TObject);
    procedure SpeedButtonGravarClick(Sender: TObject);
    procedure SpeedButtonGerarXMLClick(Sender: TObject);
    procedure SpeedButtonBuscaCepClick(Sender: TObject);
    procedure EditCPFKeyPress(Sender: TObject; var Key: Char);
    procedure EditCepKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButtonEnviarEmailClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastro: TFormCadastro;
  estadoCampo : boolean;
  pathAnexo : string;

implementation

{$R *.dfm}

uses Biblioteca, untEnviarEmail;

procedure TFormCadastro.EditCepKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
     key := #0;
end;

procedure TFormCadastro.EditCPFKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
     key := #0;
end;

procedure TFormCadastro.FormCreate(Sender: TObject);
begin
  estadoCampo := True;
end;

procedure TFormCadastro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    perform(WM_NEXTDLGCTL,0,0)
end;

procedure TFormCadastro.FormShow(Sender: TObject);
begin
  DefineEstadoCampos(False);

  SpeedButtonNovo.Enabled := True;
  SpeedButtonLimpar.Enabled := False;
  SpeedButtonGravar.Enabled := False;
  SpeedButtonGerarXML.Enabled := False;
  SpeedButtonEnviarEmail.Enabled := False;
  SpeedButtonSair.Enabled := True;

end;
procedure TFormCadastro.SpeedButtonBuscaCepClick(Sender: TObject);
var
  dadosCep: TDadosCep;
begin
  dadosCep := CarregarCep(EditCEP.Text);

  if not dadosCep.sucesso then
  begin
    MessageDlg('Ocorreu um erro ao consultar o CEP. ' + #13 + 'Erro:' + dadosCep.msg, mtError, [mbOK], 0);
    exit;
  end;

  EditLogradouro.Text := dadosCep.logradouro;
  EditCidade.Text := dadosCep.localidade;
  EditPais.Text := 'Brasil';
  EditNumero.SetFocus;

end;

procedure TFormCadastro.SpeedButtonEnviarEmailClick(Sender: TObject);
begin
if not Assigned(FormEnviarEmail) then
  FormEnviarEmail := TFormEnviarEmail.Create(Self);
  FormEnviarEmail.EditPara.Text := EditEmail.Text;
  FormEnviarEmail.EditAnexo.Text := pathAnexo;
  FormEnviarEmail.ShowModal;
  FreeAndNil(FormEnviarEmail);
end;

procedure TFormCadastro.SpeedButtonGerarXMLClick(Sender: TObject);
var
  XMLDocument: TXMLDocument;
  NodeTabela, NodeRegistro, NodeEndereco: IXMLNode;
  I: Integer;
  pastaEXE : string;
begin
  // Gera Arquivo XML

  pastaEXE := ExtractFileDir(GetCurrentDir);

  XMLDocument := TXMLDocument.Create(Self);
  try
    XMLDocument.Active := True;
    NodeTabela := XMLDocument.AddChild('Clientes');

    NodeRegistro := NodeTabela.AddChild('Dados');
    NodeRegistro.ChildValues['Nome'] := EditNome.Text;
    NodeRegistro.ChildValues['Identidade'] := EditIdentidade.Text;
    NodeRegistro.ChildValues['CPF'] := EditCPF.Text;
    NodeRegistro.ChildValues['Telefone'] := EditTelefone.Text;
    NodeRegistro.ChildValues['Email'] := EditEmail.Text;

    NodeEndereco := NodeRegistro.AddChild('Endereco');
    NodeEndereco.ChildValues['Cep'] := EditCep.Text;
    NodeEndereco.ChildValues['Logradouro'] := EditLogradouro.Text;
    NodeEndereco.ChildValues['Numero'] := EditNumero.Text;
    NodeEndereco.ChildValues['Complemento'] := EditComplemento.Text;
    NodeEndereco.ChildValues['Cidade'] := EditCidade.Text;
    NodeEndereco.ChildValues['Pais'] := EditPais.Text;

    pathAnexo := pastaEXE + '\ArqXMLProva.xml';
    XMLDocument.SaveToFile(pathAnexo);

    MessageDlg('Arquivo Cliente.XML criado com sucesso !',mtInformation,[mbOk],0);

  finally
    XMLDocument.Free;
  end;

end;

procedure TFormCadastro.SpeedButtonGravarClick(Sender: TObject);
begin
  GroupBoxDados.Enabled := False;
  GroupBoxEndereco.Enabled := False;

  SpeedButtonNovo.Enabled := True;
  SpeedButtonLimpar.Enabled := False;
  SpeedButtonGravar.Enabled := False;
  SpeedButtonGerarXML.Enabled := True;
  SpeedButtonEnviarEmail.Enabled := True;
  SpeedButtonSair.Enabled := True;

end;

procedure TFormCadastro.SpeedButtonLimparClick(Sender: TObject);
begin
  EditNome.Text := EmptyStr;
  EditIdentidade.Text := EmptyStr;
  EditCPF.Text := EmptyStr;
  EditTelefone.Text := EmptyStr;
  EditEmail.Text := EmptyStr;
  EditCep.Text := EmptyStr;
  EditLogradouro.Text := EmptyStr;
  EditNumero.Text := EmptyStr;
  EditComplemento.Text := EmptyStr;
  EditCidade.Text := EmptyStr;
  EditPais.Text := EmptyStr;

  SpeedButtonNovo.Enabled := True;
  SpeedButtonLimpar.Enabled := False;
  SpeedButtonGravar.Enabled := False;
  SpeedButtonGerarXML.Enabled := False;
  SpeedButtonEnviarEmail.Enabled := False;
  SpeedButtonSair.Enabled := True;

  DefineEstadoCampos(False);

end;

procedure TFormCadastro.SpeedButtonNovoClick(Sender: TObject);
begin
  DefineEstadoCampos(True);

  SpeedButtonNovo.Enabled := False;
  SpeedButtonLimpar.Enabled := True;
  SpeedButtonGravar.Enabled := True;
  SpeedButtonGerarXML.Enabled := False;
  SpeedButtonEnviarEmail.Enabled := False;
  SpeedButtonSair.Enabled := True;

end;

procedure TFormCadastro.SpeedButtonSairClick(Sender: TObject);
begin
  Application.Terminate;
  Close;
end;

procedure TFormCadastro.DefineEstadoCampos(estadoCampo : boolean);
begin
  EditNome.Enabled := estadoCampo;
  EditIdentidade.Enabled := estadoCampo;
  EditCPF.Enabled := estadoCampo;
  EditTelefone.Enabled := estadoCampo;
  EditEmail.Enabled := estadoCampo;
  EditCep.Enabled := estadoCampo;
  SpeedButtonBuscaCep.Enabled := estadoCampo;
  EditLogradouro.Enabled := estadoCampo;
  EditNumero.Enabled := estadoCampo;
  EditComplemento.Enabled := estadoCampo;
  EditCidade.Enabled := estadoCampo;
  EditPais.Enabled := estadoCampo;

end;

end.
