program ProvaInfoSistemas;

uses
  Vcl.Forms,
  untCadastro in 'untCadastro.pas' {FormCadastro},
  Biblioteca in 'Biblioteca.pas',
  untEnviarEmail in 'untEnviarEmail.pas' {FormEnviarEmail};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormCadastro, FormCadastro);
  Application.CreateForm(TFormEnviarEmail, FormEnviarEmail);
  Application.Run;
end.
