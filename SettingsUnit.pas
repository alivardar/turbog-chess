unit SettingsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls, Inifiles;

type
  TSettingsForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    RadioGroup2: TRadioGroup;
    RadioGroup1: TRadioGroup;
    SpinEdit1: TSpinEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    CheckBoxWhiteOnTop: TCheckBox;
    CheckBoxLines: TCheckBox;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SettingsForm: TSettingsForm;

implementation

{$R *.dfm}

procedure TSettingsForm.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TSettingsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Ini      : TIniFile;
begin   
    Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'TurboGChess.ini');
    try
      Ini.WriteBool('General', 'WhiteOnTop', CheckBoxWhiteOnTop.Checked );
      Ini.WriteBool('General', 'ShowBoardLines', CheckBoxLines.Checked );
      Ini.WriteString('General', 'ThinkDeep', InttoStr(SpinEdit1.Value) );
      Ini.WriteString('General', 'Player1', InttoStr(RadioGroup1.ItemIndex) );
      Ini.WriteString('General', 'Player2', InttoStr(RadioGroup2.ItemIndex) );
      Ini.WriteString('General', 'PieceSet', InttoStr(ComboBox1.ItemIndex) );
    finally
      Ini.Free;
    end;
end;

procedure TSettingsForm.FormShow(Sender: TObject);
var
  Ini      : TIniFile;
  WhiteOnTop, ShowBoardLines : Boolean;
  ThinkDeep, Player1, Player2, PieceSet : String;
begin
try
   Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'TurboGChess.ini');
   WhiteOnTop := Ini.ReadBool('General','WhiteOnTop', False);
   ShowBoardLines := Ini.ReadBool('General','ShowBoardLines', False);
   ThinkDeep := Ini.ReadString('General','ThinkDeep', '3');
   Player1 := Ini.ReadString('General','Player1', '0');
   Player2 := Ini.ReadString('General','Player2', '1');
   PieceSet := Ini.ReadString('General','PieceSet', '0');

   CheckBoxWhiteOnTop.Checked:=WhiteOnTop;
   CheckBoxLines.Checked:=ShowBoardLines;

   SpinEdit1.Value:=StrtoInt(ThinkDeep);
   RadioGroup1.ItemIndex:=StrtoInt(Player1);
   RadioGroup2.ItemIndex:=StrtoInt(Player2);
   ComboBox1.ItemIndex:=StrtoInt(PieceSet);

finally
   Ini.Free;
end;
end;  

end.
