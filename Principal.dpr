program Principal;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {frm_principal},
  Udm in 'Udm.pas' {U_dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(TU_dm, U_dm);
  Application.Run;
end.
