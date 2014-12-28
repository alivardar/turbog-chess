program TurboGChess;

uses
  Forms,
  ChessPrg in 'ChessPrg.pas' {MainForm},
  ChessBrd in '..\chessbrd.pas',
  AboutUnit in 'AboutUnit.pas' {AboutForm},
  SettingsUnit in 'SettingsUnit.pas' {SettingsForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TSettingsForm, SettingsForm);
  Application.Run;
end.
