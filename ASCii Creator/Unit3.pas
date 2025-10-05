unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, Spin, IniFiles;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    BitBtn2: TBitBtn;
    StatusBar1: TStatusBar;
    CheckBox1: TCheckBox;
    BitBtn3: TBitBtn;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpinEdit7: TSpinEdit;
    SpinEdit8: TSpinEdit;
    SpinEdit9: TSpinEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpinEdit10: TSpinEdit;
    SpinEdit11: TSpinEdit;
    SpinEdit12: TSpinEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    CheckBox2: TCheckBox;
    ComboBox1: TComboBox;
    procedure BitBtn3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure SpinEdit5Change(Sender: TObject);
    procedure SpinEdit6Change(Sender: TObject);
    procedure SpinEdit10Change(Sender: TObject);
    procedure SpinEdit11Change(Sender: TObject);
    procedure SpinEdit12Change(Sender: TObject);
    procedure SpinEdit7Change(Sender: TObject);
    procedure SpinEdit8Change(Sender: TObject);
    procedure SpinEdit9Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FColorKey: TCOLOR;
  public
    { Public declarations }
    procedure WriteOptions;
    procedure ReadOptions;
  end;

var
  Form3: TForm3;
  TIF : TIniFile;

implementation

uses main;

{$R *.dfm}
function MainDir : string;
begin
  Result := ExtractFilePath(ParamStr(0));
end;

procedure TForm3.WriteOptions;    // ################### Options Write
var OPT :string;
begin
   OPT := 'Options';

   if not DirectoryExists(MainDir + 'Data\Options\')
   then ForceDirectories(MainDir + 'Data\Options\');

   TIF := TIniFile.Create(MainDir + 'Data\Options\RGBOptions.ini');
   with TIF do
   begin
   WriteBool(OPT,'StayTop',CheckBox1.Checked);
   WriteInteger(OPT,'DivR',SpinEdit1.Value);
   WriteInteger(OPT,'DivG',SpinEdit2.Value);
   WriteInteger(OPT,'DivB',SpinEdit3.Value);
   WriteInteger(OPT,'R',SpinEdit4.Value);
   WriteInteger(OPT,'G',SpinEdit5.Value);
   WriteInteger(OPT,'B',SpinEdit6.Value);
   WriteInteger(OPT,'RoundR',SpinEdit10.Value);
   WriteInteger(OPT,'RoundG',SpinEdit11.Value);
   WriteInteger(OPT,'RoundB',SpinEdit12.Value);
   WriteInteger(OPT,'RoundBrightnessR',SpinEdit7.Value);
   WriteInteger(OPT,'RoundBrightnessG',SpinEdit8.Value);
   WriteInteger(OPT,'RoundBrightnessB',SpinEdit9.Value);
   WriteBool(OPT,'Trz',CheckBox2.Checked);
   Free;
   end;
end;

procedure TForm3.ReadOptions;    // ################### Options Read
var OPT:string;
begin
  OPT := 'Options';
  if FileExists(MainDir + 'Data\Options\RGBOptions.ini') then
  begin
  TIF:=TIniFile.Create(MainDir + 'Data\Options\RGBOptions.ini');
  with TIF do
  begin
  CheckBox1.Checked:=ReadBool(OPT,'StayTop',CheckBox1.Checked);
  SpinEdit1.Value:=ReadInteger(OPT,'DivR',SpinEdit1.Value);
  SpinEdit2.Value:=ReadInteger(OPT,'DivG',SpinEdit2.Value);
  SpinEdit3.Value:=ReadInteger(OPT,'DivB',SpinEdit3.Value);
  SpinEdit4.Value:=ReadInteger(OPT,'R',SpinEdit4.Value);
  SpinEdit5.Value:=ReadInteger(OPT,'G',SpinEdit5.Value);
  SpinEdit6.Value:=ReadInteger(OPT,'B',SpinEdit6.Value);
  SpinEdit10.Value:=ReadInteger(OPT,'RoundR',SpinEdit10.Value);
  SpinEdit11.Value:=ReadInteger(OPT,'RoundG',SpinEdit11.Value);
  SpinEdit12.Value:=ReadInteger(OPT,'RoundB',SpinEdit12.Value);
  SpinEdit7.Value:=ReadInteger(OPT,'RoundBrightnessR',SpinEdit7.Value);
  SpinEdit8.Value:=ReadInteger(OPT,'RoundBrightnessG',SpinEdit8.Value);
  SpinEdit9.Value:=ReadInteger(OPT,'RoundBrightnessB',SpinEdit9.Value);
  CheckBox2.Checked:=ReadBool(OPT,'Trz',CheckBox2.Checked);
  Free;
  end;
  end;
end;

function MakeWindowTransparent(Wnd: HWND; nAlpha: Integer = 10): Boolean;
type
  TSetLayeredWindowAttributes = function(hwnd: HWND; crKey: COLORREF; bAlpha: Byte;
    dwFlags: Longint): Longint;
  stdcall;
const
  LWA_COLORKEY = 1;
  LWA_ALPHA     = 2;
  WS_EX_LAYERED = $80000;
var
  hUser32: HMODULE;
  SetLayeredWindowAttributes: TSetLayeredWindowAttributes;
begin
  Result := False;
  hUser32 := GetModuleHandle('USER32.DLL');
  if hUser32 <> 0 then
  begin @SetLayeredWindowAttributes := GetProcAddress(hUser32, 'SetLayeredWindowAttributes');
    if @SetLayeredWindowAttributes <> nil then
    begin
      SetWindowLong(Wnd, GWL_EXSTYLE, GetWindowLong(Wnd, GWL_EXSTYLE) or WS_EX_LAYERED);
      SetLayeredWindowAttributes(Wnd, 0, Trunc((255 / 100) * (100 - nAlpha)), LWA_ALPHA);
      Result := True;
    end;
  end;
end;

function SetLayeredWindowAttributes(
  Wnd: hwnd;
  crKey: ColorRef;
  Alpha: Byte;
  dwFlags: DWORD): Boolean;
  stdcall; external 'user32.dll';

procedure TForm3.BitBtn3Click(Sender: TObject);
begin
  SpinEdit1.Value := 100; SpinEdit2.Value := 100; SpinEdit3.Value := 100;
  SpinEdit4.Value := 152; SpinEdit5.Value := 152; SpinEdit6.Value := 152;
  SpinEdit7.Value := 100; SpinEdit8.Value := 100; SpinEdit9.Value := 100;
  SpinEdit10.Value := 127; SpinEdit11.Value := 127; SpinEdit12.Value := 127;
  StatusBar1.SimpleText := 'Load Default Settings';
  StatusBar1.SetFocus;
end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then begin
  SetWindowPos(Handle, HWND_TOPMOST, Left,Top, Width,Height,
             SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  end else begin
  SetWindowPos(Handle, HWND_NOTOPMOST, Left,Top, Width,Height,
             SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  end;
  StatusBar1.SetFocus;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
  WriteOptions;
  BitBtn2.Enabled := false;
  StatusBar1.SimpleText := 'Save && Accept Settings';
  StatusBar1.SetFocus;
end;

procedure TForm3.SpinEdit1Change(Sender: TObject);
begin
  BitBtn2.Enabled := true;
  StatusBar1.SimpleText := 'Modified Settings';
end;

procedure TForm3.SpinEdit2Change(Sender: TObject);
begin
  BitBtn2.Enabled := true;
  StatusBar1.SimpleText := 'Modified Settings';
end;

procedure TForm3.SpinEdit3Change(Sender: TObject);
begin
  BitBtn2.Enabled := true;
  StatusBar1.SimpleText := 'Modified Settings';
end;

procedure TForm3.SpinEdit4Change(Sender: TObject);
begin
  BitBtn2.Enabled := true;
  StatusBar1.SimpleText := 'Modified Settings';
end;

procedure TForm3.SpinEdit5Change(Sender: TObject);
begin
  BitBtn2.Enabled := true;
  StatusBar1.SimpleText := 'Modified Settings';
end;

procedure TForm3.SpinEdit6Change(Sender: TObject);
begin
  BitBtn2.Enabled := true;
  StatusBar1.SimpleText := 'Modified Settings';
end;

procedure TForm3.SpinEdit10Change(Sender: TObject);
begin
  BitBtn2.Enabled := true;
  StatusBar1.SimpleText := 'Modified Settings';
end;

procedure TForm3.SpinEdit11Change(Sender: TObject);
begin
  BitBtn2.Enabled := true;
  StatusBar1.SimpleText := 'Modified Settings';
end;

procedure TForm3.SpinEdit12Change(Sender: TObject);
begin
  BitBtn2.Enabled := true;
  StatusBar1.SimpleText := 'Modified Settings';
end;

procedure TForm3.SpinEdit7Change(Sender: TObject);
begin
  BitBtn2.Enabled := true;
  StatusBar1.SimpleText := 'Modified Settings';
end;

procedure TForm3.SpinEdit8Change(Sender: TObject);
begin
  BitBtn2.Enabled := true;
  StatusBar1.SimpleText := 'Modified Settings';
end;

procedure TForm3.SpinEdit9Change(Sender: TObject);
begin
  BitBtn2.Enabled := true;
  StatusBar1.SimpleText := 'Modified Settings';
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  ReadOptions;
end;

procedure TForm3.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = true then begin
  SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
  SetLayeredWindowAttributes(Handle, ColorToRGB(FColorKey), 220, LWA_ALPHA);
  end else begin
  SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
  SetLayeredWindowAttributes(Handle, ColorToRGB(FColorKey), 255, LWA_ALPHA);
  end;
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 0 then begin
  SpinEdit1.Value := 104; SpinEdit2.Value := 104; SpinEdit3.Value := 104;
  SpinEdit10.Value := 118; SpinEdit11.Value := 118; SpinEdit12.Value := 118;
  SpinEdit4.Value := 160; SpinEdit5.Value := 160; SpinEdit6.Value := 160;
  SpinEdit7.Value := 98; SpinEdit8.Value := 98; SpinEdit9.Value := 98;
  StatusBar1.SimpleText := 'RGB Colored';
  end;

  if ComboBox1.ItemIndex = 1 then begin
  SpinEdit1.Value := 95; SpinEdit2.Value := 104; SpinEdit3.Value := 95;
  SpinEdit10.Value := 131; SpinEdit11.Value := 127; SpinEdit12.Value := 131;
  SpinEdit4.Value := 147; SpinEdit5.Value := 152; SpinEdit6.Value := 147;
  SpinEdit7.Value := 110; SpinEdit8.Value := 100; SpinEdit9.Value := 110;
  StatusBar1.SimpleText := 'Gray';
  end;

  if ComboBox1.ItemIndex = 2 then begin
  SpinEdit1.Value := 80; SpinEdit2.Value := 80; SpinEdit3.Value := 80;
  SpinEdit10.Value := 130; SpinEdit11.Value := 130; SpinEdit12.Value := 130;
  SpinEdit4.Value := 162; SpinEdit5.Value := 162; SpinEdit6.Value := 162;
  SpinEdit7.Value := 120; SpinEdit8.Value := 120; SpinEdit9.Value := 120;
  StatusBar1.SimpleText := 'Uni Colored';
  end;

  if ComboBox1.ItemIndex = 3 then begin
  StatusBar1.SimpleText := 'Usage Set';
  end;

  StatusBar1.SetFocus;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.BitBtn7.Enabled := true;
end;

end.
