unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, ExtDlgs, ComCtrls, Buttons, Menus,
  XPMan, Unit3, IniFiles, PngImage, GifImg, GpTextStream;

type
  TDen = record
   Car:Char;
   D:integer;
  end;

  TForm1 = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    PB1: TProgressBar;
    CBNeg: TCheckBox;
    ScrollBar1: TScrollBar;
    StatusBar1: TStatusBar;
    ScrollBox1: TScrollBox;
    Fond: TImage;
    ScrollBar2: TScrollBar;
    ScrollBar3: TScrollBar;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Police: TComboBox;
    MainMenu1: TMainMenu;
    F1: TMenuItem;
    O1: TMenuItem;
    Label7: TLabel;
    SaveDialog1: TSaveDialog;
    RadioGroup1: TRadioGroup;
    S1: TMenuItem;
    A1: TMenuItem;
    O2: TMenuItem;
    H1: TMenuItem;
    N1: TMenuItem;
    C1: TMenuItem;
    Memo2: TMemo;
    C2: TMenuItem;
    C3: TMenuItem;
    N2: TMenuItem;
    C4: TMenuItem;
    S2: TMenuItem;
    x1: TMenuItem;
    x2: TMenuItem;
    x3: TMenuItem;
    x4: TMenuItem;
    x5: TMenuItem;
    x6: TMenuItem;
    N3: TMenuItem;
    U1: TMenuItem;
    U2: TMenuItem;
    U3: TMenuItem;
    U4: TMenuItem;
    A2: TMenuItem;
    D1: TMenuItem;
    D2: TMenuItem;
    N4: TMenuItem;
    P1: TMenuItem;
    S3: TMenuItem;
    H2: TMenuItem;
    C5: TMenuItem;
    N5: TMenuItem;
    ColorDialog1: TColorDialog;
    F2: TMenuItem;
    N7: TMenuItem;
    M1: TMenuItem;
    C6: TMenuItem;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn8: TBitBtn;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    Label8: TLabel;
    Label10: TLabel;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    N9: TMenuItem;
    A4: TMenuItem;
    P2: TMenuItem;
    x7: TMenuItem;
    x8: TMenuItem;
    x9: TMenuItem;
    x10: TMenuItem;
    Label9: TLabel;
    BitBtn9: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CP12501: TMenuItem;
    CP12521: TMenuItem;
    ISO885911: TMenuItem;
    ISO885921: TMenuItem;
    S5: TMenuItem;
    BitBtn2: TBitBtn;
    F3: TMenuItem;
    B1: TMenuItem;
    N10: TMenuItem;
    I1: TMenuItem;
    BitBtn10: TBitBtn;
    ColorDialog2: TColorDialog;
    BitBtn5: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure ScrollBar3Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure O1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure C4Click(Sender: TObject);
    procedure x1Click(Sender: TObject);
    procedure x2Click(Sender: TObject);
    procedure x3Click(Sender: TObject);
    procedure x4Click(Sender: TObject);
    procedure x5Click(Sender: TObject);
    procedure x6Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure CBNegClick(Sender: TObject);
    procedure U2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure U3Click(Sender: TObject);
    procedure U4Click(Sender: TObject);
    procedure A2Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure D2Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure H2Click(Sender: TObject);
    procedure C5Click(Sender: TObject);
    procedure F2Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure C6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn8Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure A4Click(Sender: TObject);
    procedure P2Click(Sender: TObject);
    procedure ScrollBox1DblClick(Sender: TObject);
    procedure x7Click(Sender: TObject);
    procedure x8Click(Sender: TObject);
    procedure x9Click(Sender: TObject);
    procedure x10Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure ScrollBox1Resize(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CP12501Click(Sender: TObject);
    procedure CP12521Click(Sender: TObject);
    procedure ISO885911Click(Sender: TObject);
    procedure ISO885921Click(Sender: TObject);
    procedure S5Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
    procedure FaireTblDensite();
    procedure Dessiner();
    procedure QuickSort(iLo, iHi: Integer);
  public
    { Public declarations }
    procedure WriteOptions;
    procedure ReadOptions;
  end;

var
  Form1: TForm1;
  Densite:array[0..95] of TDen;
  OldPolice : string;
  TIF : TIniFile;

implementation

uses Unit4;

{$R *.dfm}
function MainDir : string;
begin
   Result := ExtractFilePath(ParamStr(0));
end;

procedure TForm1.WriteOptions;    // ################### Options Write
var OPT :string;
begin
   OPT := 'Options';

   if not DirectoryExists(MainDir + 'Data\Options\')
   then ForceDirectories(MainDir + 'Data\Options\');

   TIF := TIniFile.Create(MainDir + 'Data\Options\Options.ini');
   with TIF do
   begin
   WriteInteger(OPT,'Contrast',ScrollBar2.Position);
   WriteInteger(OPT,'Brightness',ScrollBar3.Position);
   WriteInteger(OPT,'Size',ScrollBar1.Position);
   WriteInteger(OPT,'Unicode',RadioGroup1.ItemIndex);
   WriteBool(OPT,'Negativ',CBNeg.Checked);
   WriteBool(OPT,'x1',RadioButton1.Checked);
   WriteBool(OPT,'x2',RadioButton2.Checked);
   WriteBool(OPT,'x3',RadioButton7.Checked);
   WriteBool(OPT,'x4',RadioButton3.Checked);
   WriteBool(OPT,'x5',RadioButton8.Checked);
   WriteBool(OPT,'x6',RadioButton4.Checked);
   WriteBool(OPT,'x7',RadioButton9.Checked);
   WriteBool(OPT,'x8',RadioButton5.Checked);
   WriteBool(OPT,'x9',RadioButton10.Checked);
   WriteBool(OPT,'x10',RadioButton6.Checked);
   WriteBool(OPT,'PanelBottom',P1.Checked);
   WriteBool(OPT,'PanelLeft',P2.Checked);
   WriteBool(OPT,'StayTop',S3.Checked);
   WriteBool(OPT,'HideOnTask',H2.Checked);
   WriteBool(OPT,'Oversize',S5.Checked);
   WriteBool(OPT,'Bold',CheckBox1.Checked);
   WriteBool(OPT,'Italic',CheckBox2.Checked);

   Free;
   end;
end;

procedure TForm1.ReadOptions;    // ################### Options Read
var OPT:string;
begin
  OPT := 'Options';
  if FileExists(MainDir + 'Data\Options\Options.ini') then
  begin
  TIF:=TIniFile.Create(MainDir + 'Data\Options\Options.ini');
  with TIF do
  begin
  ScrollBar2.Position:=ReadInteger(OPT,'Contrast',ScrollBar2.Position);
  ScrollBar3.Position:=ReadInteger(OPT,'Brightness',ScrollBar3.Position);
  ScrollBar1.Position:=ReadInteger(OPT,'Size',ScrollBar1.Position);
  RadioGroup1.ItemIndex:=ReadInteger(OPT,'Unicode',RadioGroup1.ItemIndex);
  CBNeg.Checked:=ReadBool(OPT,'Negativ',CBNeg.Checked);

  RadioButton1.Checked:=ReadBool(OPT,'x1',RadioButton1.Checked);
  RadioButton2.Checked:=ReadBool(OPT,'x2',RadioButton2.Checked);
  RadioButton7.Checked:=ReadBool(OPT,'x3',RadioButton7.Checked);
  RadioButton3.Checked:=ReadBool(OPT,'x4',RadioButton3.Checked);
  RadioButton8.Checked:=ReadBool(OPT,'x5',RadioButton8.Checked);
  RadioButton4.Checked:=ReadBool(OPT,'x6',RadioButton4.Checked);
  RadioButton9.Checked:=ReadBool(OPT,'x7',RadioButton9.Checked);
  RadioButton5.Checked:=ReadBool(OPT,'x8',RadioButton5.Checked);
  RadioButton10.Checked:=ReadBool(OPT,'x9',RadioButton10.Checked);
  RadioButton6.Checked:=ReadBool(OPT,'x10',RadioButton6.Checked);
  P1.Checked:=ReadBool(OPT,'PanelBottom',P1.Checked);
  P2.Checked:=ReadBool(OPT,'PanelLeft',P2.Checked);
  S3.Checked:=ReadBool(OPT,'StayTop',S3.Checked);
  H2.Checked:=ReadBool(OPT,'HideOnTask',H2.Checked);
  S5.Checked:=ReadBool(OPT,'Oversize',S5.Checked);
  CheckBox1.Checked:=ReadBool(OPT,'Bold',CheckBox1.Checked);
  CheckBox2.Checked:=ReadBool(OPT,'Italic',CheckBox2.Checked);

  Free;
  end;
  end;
end;

procedure WriteToStream(s: string; fileName: string; codepage: word);
  var
    fs: TFileStream;
    ts: TGpTextStream;
  begin
    fs := TFileStream.Create(fileName,fmCreate);
    try
      ts := TGpTextStream.Create(fs,tsaccWrite,[],codepage);
      try
        ts.WriteString(s);
      finally FreeAndNil(ts); end;
    finally FreeAndNil(fs); end;
end;

procedure ConvertANSIFileToUTF8File(AInputFileName, AOutputFileName: TFileName);
var Strings: TStrings;
begin
  Strings := TStringList.Create; try
    Strings.LoadFromFile(AInputFileName);
    Strings.Text := UTF8Encode(Strings.Text);
    Strings.SaveToFile(AOutputFileName);
  finally Strings.Free; end;
end;

function Get_File_Size4(const S: string): Int64;
var
  FD: TWin32FindData;
  FH: THandle;
begin
  FH := FindFirstFile(PChar(S), FD);
  if FH = INVALID_HANDLE_VALUE then Result := 0
  else
    try
      Result := FD.nFileSizeHigh;
      Result := Result shl 32;
      Result := Result + FD.nFileSizeLow;
    finally
      //CloseHandle(FH);
    end;
end;

procedure tForm1.QuickSort(iLo, iHi: Integer);
  var
    Lo, Hi:integer;
    Mid:single;
    T: TDen;
  begin
    Lo := iLo;
    Hi := iHi;
    if (Hi+Lo) <= 0 then exit;
    Mid := Densite[(Hi+Lo) div 2].D;
    repeat
      while Densite[Lo].D < Mid do Inc(Lo);
      while Densite[Hi].D > Mid do Dec(Hi);
      if Lo <= Hi then
      begin
        T := Densite[Lo];
        Densite[Lo] := Densite[Hi];
        Densite[Hi] := T;
        Inc(Lo);
        Dec(Hi);
      end;
    until Lo > Hi;
    if Hi > iLo then QuickSort(iLo, Hi);
    if Lo < iHi then QuickSort(Lo, iHi);
    //if Terminated then Exit;
end;

procedure TForm1.FaireTblDensite;
var  a,b,c:integer;
     TmpB : Tbitmap;
begin
  TmpB := TBitmap.Create;
  TmpB.Height := 50;
  TmpB.Width := 50;
  TmpB.Canvas.Brush.Color := clwhite;
  TmpB.Canvas.Pen.Color := clwhite;
  TmpB.Canvas.Font.Color := clblack;
  TmpB.Canvas.Font.Name := Police.Text;

  for c := 32 to 127 do begin
  Densite[c-32].Car := chr(c);
  Densite[c-32].D := 0;
  TmpB.Canvas.Rectangle(0,0,50,50);
  TmpB.Canvas.TextOut(0,0,chr(c));
  for a:=1 to 20 do begin
   for b:=1 to 20 do begin
    if TmpB.Canvas.Pixels[a,b] = clwhite then Densite[c-32].D:=Densite[c-32].D+1;
   end;
  end;
 end;
 TmpB.Free;
 QuickSort(0,95);
end;

procedure TForm1.FormCreate(Sender: TObject);
var a : integer;
begin
  Panel1.DoubleBuffered := true;
  Panel2.DoubleBuffered := true;

  if not DirectoryExists(MainDir + 'Data\Backup\')
   then ForceDirectories(MainDir + 'Data\Backup\');

  if not DirectoryExists(MainDir + 'Data\Unicode\')
   then ForceDirectories(MainDir + 'Data\Unicode\');

  for a := 0 to Screen.Fonts.Count - 1 do
  begin
    Police.Items.Add(Screen.Fonts.Strings[a]);
  end;

  Application.HintPause := 0;
  Application.HintHidePause := 50000;

  Memo1.MaxLength := $7FFFFFF0;
end;

procedure TForm1.Dessiner;
var
  a,b,c,d:integer;
  MoyR,MoyV,MoyB,MoyCol:integer;
  Couleur : LongInt;
  TmpB:TBitmap;
  TmpRec:TRect;
  TmpStr:string;
begin
  TmpB := TBitmap.create;

  if RadioButton1.Checked = true then begin
  TmpB.Height := Fond.Picture.Height;
  TmpB.Width := Fond.Picture.Width;
  TmpB.pixelformat := pf24bit;
  TmpB.Canvas.Draw(0,0,Fond.Picture.Graphic);
  end;

  if RadioButton2.Checked = true then begin
  TmpRec.Left := 0; TmpRec.Top := 0;
  TmpRec.Right := Fond.Picture.Width*2;
  TmpRec.Bottom := Fond.Picture.Height*2;
  TmpB.Height := Fond.Picture.Height*2;
  TmpB.Width := Fond.Picture.Width*2;
  TmpB.pixelformat := pf24bit;
  TmpB.Canvas.StretchDraw(TmpRec,Fond.Picture.Graphic);
  end;

  if RadioButton3.Checked = true then begin
  TmpRec.Left := 0; TmpRec.Top := 0;
  TmpRec.Right := Fond.Picture.Width*4;
  TmpRec.Bottom := Fond.Picture.Height*4;
  TmpB.Height := Fond.Picture.Height*4;
  TmpB.Width := Fond.Picture.Width*4;
  TmpB.pixelformat := pf24bit;
  TmpB.Canvas.StretchDraw(TmpRec,Fond.Picture.Graphic);
  end;

  if RadioButton4.Checked = true then begin
  TmpRec.Left := 0; TmpRec.Top := 0;
  TmpRec.Right := Fond.Picture.Width*6;
  TmpRec.Bottom := Fond.Picture.Height*6;
  TmpB.Height := Fond.Picture.Height*6;
  TmpB.Width := Fond.Picture.Width*6;
  TmpB.pixelformat := pf24bit;
  TmpB.Canvas.StretchDraw(TmpRec,Fond.Picture.Graphic);
  end;

  if RadioButton5.Checked = true then begin
  TmpRec.Left := 0; TmpRec.Top := 0;
  TmpRec.Right := Fond.Picture.Width*8;
  TmpRec.Bottom := Fond.Picture.Height*8;
  TmpB.Height := Fond.Picture.Height*8;
  TmpB.Width := Fond.Picture.Width*8;
  TmpB.pixelformat := pf24bit;
  TmpB.Canvas.StretchDraw(TmpRec,Fond.Picture.Graphic);
  end;

  if RadioButton6.Checked = true then begin
  TmpRec.Left := 0; TmpRec.Top := 0;
  TmpRec.Right := Fond.Picture.Width*10;
  TmpRec.Bottom := Fond.Picture.Height*10;
  TmpB.Height := Fond.Picture.Height*10;
  TmpB.Width := Fond.Picture.Width*10;
  TmpB.pixelformat := pf24bit;
  TmpB.Canvas.StretchDraw(TmpRec,Fond.Picture.Graphic);
  end;

  if RadioButton7.Checked = true then begin
  TmpRec.Left := 0; TmpRec.Top := 0;
  TmpRec.Right := Fond.Picture.Width*3;
  TmpRec.Bottom := Fond.Picture.Height*3;
  TmpB.Height := Fond.Picture.Height*3;
  TmpB.Width := Fond.Picture.Width*3;
  TmpB.pixelformat := pf24bit;
  TmpB.Canvas.StretchDraw(TmpRec,Fond.Picture.Graphic);
  end;

  if RadioButton8.Checked = true then begin
  TmpRec.Left := 0; TmpRec.Top := 0;
  TmpRec.Right := Fond.Picture.Width*5;
  TmpRec.Bottom := Fond.Picture.Height*5;
  TmpB.Height := Fond.Picture.Height*5;
  TmpB.Width := Fond.Picture.Width*5;
  TmpB.pixelformat := pf24bit;
  TmpB.Canvas.StretchDraw(TmpRec,Fond.Picture.Graphic);
  end;

  if RadioButton9.Checked = true then begin
  TmpRec.Left := 0; TmpRec.Top := 0;
  TmpRec.Right := Fond.Picture.Width*7;
  TmpRec.Bottom := Fond.Picture.Height*7;
  TmpB.Height := Fond.Picture.Height*7;
  TmpB.Width := Fond.Picture.Width*7;
  TmpB.pixelformat := pf24bit;
  TmpB.Canvas.StretchDraw(TmpRec,Fond.Picture.Graphic);
  end;

  if RadioButton10.Checked = true then begin
  TmpRec.Left := 0; TmpRec.Top := 0;
  TmpRec.Right := Fond.Picture.Width*9;
  TmpRec.Bottom := Fond.Picture.Height*9;
  TmpB.Height := Fond.Picture.Height*9;
  TmpB.Width := Fond.Picture.Width*9;
  TmpB.pixelformat := pf24bit;
  TmpB.Canvas.StretchDraw(TmpRec,Fond.Picture.Graphic);
  end;

  TmpStr := '';
  PB1.Position := 0;
  PB1.Max := TmpB.Height*TmpB.Width;
  b := 0;
  while b < TmpB.Height - 16 - 1 do begin
  a := 0;
  while a < TmpB.Width - 8 - 1 do begin
   PB1.Position := PB1.Position + 128;
   if StatusBar1.Panels[6].Text = 'Cancel' then Exit;
   MoyCol := 0;
   MoyR := 0;
   MoyV := 0;
   MoyB := 0;
   c := a;
   while (c<=a + 8) and (c < TmpB.Width) do begin //parcour une surface de 8*16
    d:=b;
    while (d <= b + 16) and (d<TmpB.Height) do begin
      Couleur := ColorToRGB(TmpB.Canvas.Pixels[c,d]);
      MoyR := MoyR + GetRValue(Couleur);
      MoyV := MoyV + GetGValue(Couleur);
      MoyB := MoyB + GetBValue(Couleur);
      inc(d, 1);
    end;
   inc(c, 1);
   end;

   MoyR := MoyR div Form3.SpinEdit4.Value;    // rgb
   MoyV := MoyV div Form3.SpinEdit5.Value;
   MoyB := MoyB div Form3.SpinEdit6.Value;

   MoyR:= round(MoyR * ( 1 + (ScrollBar3.Position-128)/Form3.SpinEdit7.Value));   // brightness
   MoyV:=round(MoyV * ( 1 + (ScrollBar3.Position-128)/Form3.SpinEdit8.Value));
   MoyB:=round(MoyB * ( 1 + (ScrollBar3.Position-128)/Form3.SpinEdit9.Value));

   MoyR:= round(MoyR + (ScrollBar2.Position-128)/Form3.SpinEdit1.Value * (MoyR- Form3.SpinEdit10.Value));   // contrast
   MoyV:= round(MoyV + (ScrollBar2.Position-128)/Form3.SpinEdit2.Value * (MoyV- Form3.SpinEdit11.Value));
   MoyB:= round(MoyB + (ScrollBar2.Position-128)/Form3.SpinEdit3.Value * (MoyB- Form3.SpinEdit12.Value));

   MoyCol := (MoyR + MoyV + MoyB) div 3;
   if MoyCol > 255 then MoyCol := 255;
   if MoyCol < 0 then MoyCol := 0;
   if CBNeg.Checked then MoyCol := 255 - MoyCol;

   MoyCol := round(MoyCol * (95 / 255));
   TmpStr := TmpStr + Densite[MoyCol].Car;
   inc(a,8);
 end;
 TmpStr := TmpStr + #13+#10;
 inc(b,16);
 Label7.Caption := IntToStr(PB1.Position div 100) + ' px';

 Application.ProcessMessages;
 end;
 
 TmpB.Free;
 PB1.Position := PB1.Max;
 Memo1.Font.Name := Police.Text;
 Memo1.Text := TmpStr;
 StatusBar1.Panels[8].Text := IntToStr(Memo1.Lines.Count);

 Label10.Caption := IntToStr(Length(Memo1.Text));

 ScrollBar1.Enabled := true;
 ScrollBar2.Enabled := true;
 ScrollBar3.Enabled := true;
 Label1.Enabled := true; Label2.Enabled := true; Label3.Enabled := true;
 Label4.Enabled := true; Label5.Enabled := true; Label6.Enabled := true;
 RadioGroup1.Enabled := true;
 Police.Enabled := true;
 RadioButton1.Enabled := true; RadioButton2.Enabled := true;
 RadioButton3.Enabled := true; RadioButton4.Enabled := true;
 RadioButton5.Enabled := true; RadioButton6.Enabled := true;
 RadioButton7.Enabled := true; RadioButton8.Enabled := true;
 RadioButton9.Enabled := true; RadioButton10.Enabled := true;
 CBNeg.Enabled := true;
 BitBtn1.Enabled := true; BitBtn3.Enabled := true;
 BitBtn6.Enabled := true; BitBtn4.Enabled := true;
 BitBtn2.Enabled := true; BitBtn8.Enabled := true;
 BitBtn9.Enabled := true; BitBtn7.Enabled := true;
 BitBtn10.Enabled := true;
 
 O1.Enabled := true; S1.Enabled := true;
 C2.Enabled := true; C4.Enabled := true; N3.Enabled := true;
 S2.Enabled := true; U1.Enabled := true; C5.Enabled := true;

 Form3.Label1.Enabled := true; Form3.Label7.Enabled := true;
  Form3.Label2.Enabled := true; Form3.Label8.Enabled := true;
  Form3.Label3.Enabled := true; Form3.Label9.Enabled := true;
  Form3.Label4.Enabled := true; Form3.Label10.Enabled := true;
  Form3.Label5.Enabled := true; Form3.Label11.Enabled := true;
  Form3.Label6.Enabled := true; Form3.Label12.Enabled := true;
  Form3.SpinEdit1.Enabled := true; Form3.SpinEdit7.Enabled := true;
  Form3.SpinEdit2.Enabled := true; Form3.SpinEdit8.Enabled := true;
  Form3.SpinEdit3.Enabled := true; Form3.SpinEdit9.Enabled := true;
  Form3.SpinEdit4.Enabled := true; Form3.SpinEdit10.Enabled := true;
  Form3.SpinEdit5.Enabled := true; Form3.SpinEdit11.Enabled := true;
  Form3.SpinEdit6.Enabled := true; Form3.SpinEdit12.Enabled := true;
  Form3.BitBtn3.Enabled := true; Form3.BitBtn2.Enabled := true;

  CheckBox1.Enabled := true; CheckBox2.Enabled := true;

  Form3.StatusBar1.SimpleText := 'ready..';

 StatusBar1.Panels[6].Text := 'ready..';
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  Memo1.Font.Size := ScrollBar1.Position;
  Label6.Caption := IntToStr(ScrollBar1.Position) + ' px';
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
   ScrollBar2.Position := 255;
   ScrollBar3.Position := 128;
   ScrollBar1.Position := 5;
   RadioGroup1.ItemIndex := 4;
   CBNeg.Checked := false;
   RadioButton2.Checked := true;
   Police.Text := 'Courier';

   StatusBar1.SetFocus;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  if Fond.Picture.Graphic = nil then begin
  MessageBox(Form1.Handle,Pchar('No Picture loaded !'),Pchar('Error Calculating..'),
  MB_ICONINFORMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_TOPMOST);
  Exit;
  end;

  Memo1.Clear;
  if OldPolice <> Police.Text then FaireTblDensite;

  StatusBar1.Panels[6].Text := 'Calculating..';
  Label10.Caption := 'calculate..';
  ScrollBar1.Enabled := false;
  ScrollBar2.Enabled := false;
  ScrollBar3.Enabled := false;
  Label1.Enabled := false; Label2.Enabled := false; Label3.Enabled := false;
  Label4.Enabled := false; Label5.Enabled := false; Label6.Enabled := false;
  RadioGroup1.Enabled := false;
  Police.Enabled := false;
  RadioButton1.Enabled := false; RadioButton2.Enabled := false;
  RadioButton3.Enabled := false; RadioButton4.Enabled := false;
  RadioButton5.Enabled := false; RadioButton6.Enabled := false;
  RadioButton7.Enabled := false; RadioButton8.Enabled := false;
  RadioButton9.Enabled := false; RadioButton10.Enabled := false;

  CBNeg.Enabled := false;
  BitBtn1.Enabled := false; BitBtn3.Enabled := false;
  BitBtn6.Enabled := false; BitBtn4.Enabled := false;
  BitBtn2.Enabled := false; BitBtn8.Enabled := false;
  BitBtn9.Enabled := false; BitBtn7.Enabled := false;
  BitBtn10.Enabled := false;

  O1.Enabled := false; S1.Enabled := false;
  C2.Enabled := false; C4.Enabled := false; N3.Enabled := false;
  S2.Enabled := false; U1.Enabled := false; C5.Enabled := false;

  Form3.Label1.Enabled := false; Form3.Label7.Enabled := false;
  Form3.Label2.Enabled := false; Form3.Label8.Enabled := false;
  Form3.Label3.Enabled := false; Form3.Label9.Enabled := false;
  Form3.Label4.Enabled := false; Form3.Label10.Enabled := false;
  Form3.Label5.Enabled := false; Form3.Label11.Enabled := false;
  Form3.Label6.Enabled := false; Form3.Label12.Enabled := false;
  Form3.SpinEdit1.Enabled := false; Form3.SpinEdit7.Enabled := false;
  Form3.SpinEdit2.Enabled := false; Form3.SpinEdit8.Enabled := false;
  Form3.SpinEdit3.Enabled := false; Form3.SpinEdit9.Enabled := false;
  Form3.SpinEdit4.Enabled := false; Form3.SpinEdit10.Enabled := false;
  Form3.SpinEdit5.Enabled := false; Form3.SpinEdit11.Enabled := false;
  Form3.SpinEdit6.Enabled := false; Form3.SpinEdit12.Enabled := false;
  Form3.BitBtn3.Enabled := false; Form3.BitBtn2.Enabled := false;

  CheckBox1.Enabled := false; CheckBox2.Enabled := false;

  Form3.StatusBar1.SimpleText := 'Calculating please wait..';

  Dessiner;
  OldPolice := Police.Text;
  StatusBar1.SetFocus;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then begin
  Fond.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  StatusBar1.Panels[3].Text := IntToStr(Fond.Width) + ' x ' + IntToStr(Fond.Height);
  StatusBar1.Panels[5].Text := IntToStr( Get_File_Size4(OpenPictureDialog1.FileName) div 1000 ) + ' Kb';
  StatusBar1.Panels[1].Text := ExtractFileName(OpenPictureDialog1.FileName);
  Memo1.Clear;
  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.ScrollBar2Change(Sender: TObject);
begin
  Label4.Caption := IntToStr(ScrollBar2.Position) + ' %';
end;

procedure TForm1.ScrollBar3Change(Sender: TObject);
begin
  Label5.Caption := IntToStr(ScrollBar3.Position) + ' %';
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ReadOptions;
  ScrollBar2.OnChange(Sender);
  ScrollBar1.OnChange(Sender);
  ScrollBar3.OnChange(Sender);
  P1.OnClick(Sender);
  S3.OnClick(Sender);
  H2.OnClick(Sender);
  P2.OnClick(Sender);
end;

procedure TForm1.O1Click(Sender: TObject);
begin
  BitBtn3.Click;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  StatusBar1.Panels[6].Text := 'Cancel';

  ScrollBar1.Enabled := true;
 ScrollBar2.Enabled := true;
 ScrollBar3.Enabled := true;
 Label1.Enabled := true; Label2.Enabled := true; Label3.Enabled := true;
 Label4.Enabled := true; Label5.Enabled := true; Label6.Enabled := true;
 RadioGroup1.Enabled := true;
 Police.Enabled := true;
 RadioButton1.Enabled := true; RadioButton2.Enabled := true;
 RadioButton3.Enabled := true; RadioButton4.Enabled := true;
 RadioButton5.Enabled := true; RadioButton6.Enabled := true;
 CBNeg.Enabled := true;
 BitBtn1.Enabled := true; BitBtn3.Enabled := true;
 BitBtn6.Enabled := true; BitBtn4.Enabled := true;
 BitBtn2.Enabled := true; BitBtn8.Enabled := true;
 BitBtn9.Enabled := true; BitBtn10.Enabled := true;
 O1.Enabled := true; S1.Enabled := true;
 C2.Enabled := true; C4.Enabled := true; N3.Enabled := true;
 S2.Enabled := true; U1.Enabled := true; C5.Enabled := true;

 Form3.Label1.Enabled := true; Form3.Label7.Enabled := true;
  Form3.Label2.Enabled := true; Form3.Label8.Enabled := true;
  Form3.Label3.Enabled := true; Form3.Label9.Enabled := true;
  Form3.Label4.Enabled := true; Form3.Label10.Enabled := true;
  Form3.Label5.Enabled := true; Form3.Label11.Enabled := true;
  Form3.Label6.Enabled := true; Form3.Label12.Enabled := true;
  Form3.SpinEdit1.Enabled := true; Form3.SpinEdit7.Enabled := true;
  Form3.SpinEdit2.Enabled := true; Form3.SpinEdit8.Enabled := true;
  Form3.SpinEdit3.Enabled := true; Form3.SpinEdit9.Enabled := true;
  Form3.SpinEdit4.Enabled := true; Form3.SpinEdit10.Enabled := true;
  Form3.SpinEdit5.Enabled := true; Form3.SpinEdit11.Enabled := true;
  Form3.SpinEdit6.Enabled := true; Form3.SpinEdit12.Enabled := true;
  Form3.BitBtn3.Enabled := true; Form3.BitBtn2.Enabled := true;
  BitBtn7.Enabled := true;
  Form3.StatusBar1.SimpleText := 'Cancel';

 StatusBar1.SetFocus;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
const  UTF8BOM: array[0..2] of Byte = ($EF, $BB, $BF);

var  Strings: TStrings;
     UTF8Str: UTF8String;
     FS: TFileStream;
     BOM: WideChar;
     WS: WideString;
     I : Integer;
     s : string;
begin
  if Memo1.Lines.Count = 0  then begin
  Beep;
  MessageDlg('No ASCii found!',mtInformation, [mbOK], 0);
  StatusBar1.SetFocus; Exit; end;

  s := Memo1.Text;

  if SaveDialog1.Execute then begin

  if SaveDialog1.FilterIndex = 1 then begin

  if RadioGroup1.ItemIndex = 0 then begin
  Strings := TStringList.Create;
  Strings.Text := UTF8Encode(Memo1.Text);
  Strings.SaveToFile(SaveDialog1.FileName + '.txt');
  end;

  if RadioGroup1.ItemIndex = 1 then begin
  UTF8Str := UTF8Encode(Memo1.Text);
  FS := TFileStream.Create(SaveDialog1.FileName + '.txt', fmCreate);
  try
    FS.WriteBuffer(UTF8BOM[0], SizeOf(UTF8BOM));
    FS.WriteBuffer(PAnsiChar(UTF8Str)^, Length(UTF8Str));
  finally
    FS.Free;
  end;
  end;

  if RadioGroup1.ItemIndex = 2 then begin
  FS := TFileStream.Create(SaveDialog1.FileName + '.txt', fmCreate);
  try
    BOM := WideChar($FEFF);
    FS.WriteBuffer(BOM, SizeOf(BOM));
    For I := 0 to Memo1.Lines.Count-1 do
    begin
      WS := WideString(Memo1.Lines[I] + sLineBreak);
      FS.WriteBuffer(PWideChar(WS)^, Length(WS) * SizeOf(WideChar));
    end;
  finally
    FS.Free;
  end;
  end;

  if RadioGroup1.ItemIndex = 3 then begin
  
  Memo1.Lines.SaveToFile(MainDir + 'Data\Unicode\_utf-8');
  ConvertANSIFileToUTF8File(MainDir + 'Data\Unicode\_utf-8',
                            MainDir + 'Data\Unicode\_ansi');
  Memo2.Clear;
  Memo2.Lines.LoadFromFile(MainDir + 'Data\Unicode\_ansi');
  for i := 0 to Memo2.Lines.Count - 1 do begin
  Memo2.Lines.Strings[i] := Utf8ToAnsi(Memo2.Lines.Strings[i]);
  end;
  for i:= 0 to 255 do begin
  Memo2.lines.Add(chr(i)); end;
  Memo2.Lines.SaveToFile(SaveDialog1.FileName + '.txt');
  end;

  if RadioGroup1.ItemIndex = 4 then begin
  Memo1.Lines.SaveToFile(SaveDialog1.FileName + '.txt');
  end;

  if RadioGroup1.ItemIndex = 5 then begin
  WriteToStream(s, SaveDialog1.FileName + '.txt',1250);
  end;

  if RadioGroup1.ItemIndex = 6 then begin
  WriteToStream(s, SaveDialog1.FileName + '.txt',1252);
  end;

  if RadioGroup1.ItemIndex = 7 then begin
  WriteToStream(s, SaveDialog1.FileName + '.txt',ISO_8859_1);
  end;

  if RadioGroup1.ItemIndex = 8 then begin
  WriteToStream(s, SaveDialog1.FileName + '.txt',ISO_8859_2);
  end;

  end;

  if SaveDialog1.FilterIndex = 2 then begin
  Memo1.Lines.SaveToFile(SaveDialog1.FileName + '.nfo');
  end;

  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  if Memo1.Lines.Count = 0  then begin
  Beep;
  MessageDlg('No ASCii found!',mtInformation, [mbOK], 0);
  StatusBar1.SetFocus; Exit; end;

  Memo1.SetFocus;
  Memo1.SelectAll;
  Memo1.CopyToClipboard;
end;

procedure TForm1.S1Click(Sender: TObject);
begin
  BitBtn4.Click;
end;

procedure TForm1.C1Click(Sender: TObject);
begin
  Close();
end;

procedure TForm1.C2Click(Sender: TObject);
begin
  BitBtn2.Click;
end;

procedure TForm1.C3Click(Sender: TObject);
begin
  BitBtn5.Click;
end;

procedure TForm1.C4Click(Sender: TObject);
begin
  BitBtn6.Click;
end;

procedure TForm1.x1Click(Sender: TObject);
begin
  RadioButton1.Checked := true;
end;

procedure TForm1.x2Click(Sender: TObject);
begin
  RadioButton2.Checked := true;
end;

procedure TForm1.x3Click(Sender: TObject);
begin
  RadioButton3.Checked := true;
end;

procedure TForm1.x4Click(Sender: TObject);
begin
  RadioButton4.Checked := true;
end;

procedure TForm1.x5Click(Sender: TObject);
begin
  RadioButton5.Checked := true;
end;

procedure TForm1.x6Click(Sender: TObject);
begin
  RadioButton6.Checked := true;
end;

procedure TForm1.RadioButton5Click(Sender: TObject);
begin
  StatusBar1.SetFocus; X5.Checked := true;
end;

procedure TForm1.RadioButton6Click(Sender: TObject);
begin
  StatusBar1.SetFocus; X6.Checked := true; 
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  if CBNeg.Checked = false then CBNeg.Checked := true else
  CBNeg.Checked := false;
end;

procedure TForm1.CBNegClick(Sender: TObject);
begin
  if CBNeg.Checked = false then N3.Checked := false else N3.Checked := true;
end;

procedure TForm1.U2Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 0;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then begin
  U2.Checked := true; end;

  if RadioGroup1.ItemIndex = 1 then begin
  U3.Checked := true; end;

  if RadioGroup1.ItemIndex = 2 then begin
  U4.Checked := true; end;

  if RadioGroup1.ItemIndex = 3 then begin
  A2.Checked := true; end;

  if RadioGroup1.ItemIndex = 4 then begin
  D1.Checked := true; end;

  if RadioGroup1.ItemIndex = 5 then begin
  CP12501.Checked := true; end;

  if RadioGroup1.ItemIndex = 6 then begin
  CP12521.Checked := true; end;

  if RadioGroup1.ItemIndex = 7 then begin
  ISO885911.Checked := true; end;

  if RadioGroup1.ItemIndex = 8 then begin
  ISO885921.Checked := true; end;
end;

procedure TForm1.U3Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 1;
end;

procedure TForm1.U4Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 2;
end;

procedure TForm1.A2Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 3;
end;

procedure TForm1.D1Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 4;
end;

procedure TForm1.D2Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TForm1.P1Click(Sender: TObject);
begin
  if P1.Checked = false then begin
  Panel1.Visible := false;
  end else begin
  Panel1.Visible := true; end;
end;

procedure TForm1.S3Click(Sender: TObject);
begin
  if S3.Checked = false then begin
  SetWindowPos(Handle, HWND_NOTOPMOST, Left,Top, Width,Height,
             SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  end else begin
  SetWindowPos(Handle, HWND_TOPMOST, Left,Top, Width,Height,
             SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  end;
end;

procedure TForm1.H2Click(Sender: TObject);
begin
  if H2.Checked = false then begin
  ShowWindow( Application.Handle, SW_SHOW );
  end else begin
  ShowWindow( Application.Handle, SW_HIDE );
  end;
end;

procedure TForm1.C5Click(Sender: TObject);
begin
  Fond.Picture.Graphic := nil; PB1.Position := 0;
  Label7.Caption := '0 px';
end;

procedure TForm1.F2Click(Sender: TObject);
begin
  if ColorDialog1.Execute then Memo1.Font.Color := ColorDialog1.Color;
end;

procedure TForm1.M1Click(Sender: TObject);
begin
  BitBtn7.Click;
end;
procedure TForm1.BitBtn7Click(Sender: TObject);
begin
  if Fond.Picture.Graphic = nil then begin
  Beep;
  MessageDlg('No Picture found!',mtInformation, [mbOK], 0);
  StatusBar1.SetFocus; Exit; end;

  try form3 := TForm3.Create(self); form3.Show;
  BitBtn7.Enabled := false; finally end;
  StatusBar1.SetFocus;
end;

procedure TForm1.C6Click(Sender: TObject);
begin
  WinExec('CharMap.exe', SW_SHOWNORMAL);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   WriteOptions;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
  if Memo1.Lines.Count = 0  then begin
  Beep;
  MessageDlg('No ASCii found!',mtInformation, [mbOK], 0);
  StatusBar1.SetFocus; Exit; end;
  BitBtn8.Enabled := false;
  try form4 := TForm4.Create(self); form4.Show; finally end;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := IntToStr(Memo1.Lines.Count);
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  StatusBar1.SetFocus; X1.Checked := true;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  StatusBar1.SetFocus; X2.Checked := true;
end;

procedure TForm1.RadioButton7Click(Sender: TObject);
begin
  StatusBar1.SetFocus; X7.Checked := true;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
  StatusBar1.SetFocus; X3.Checked := true;
end;

procedure TForm1.RadioButton8Click(Sender: TObject);
begin
  StatusBar1.SetFocus; X8.Checked := true;
end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
  StatusBar1.SetFocus; X4.Checked := true;
end;

procedure TForm1.RadioButton9Click(Sender: TObject);
begin
  StatusBar1.SetFocus; X9.Checked := true;
end;

procedure TForm1.A4Click(Sender: TObject);
begin
  BitBtn8.Click;
end;

procedure TForm1.P2Click(Sender: TObject);
begin
  if P2.Checked = false then begin
  Panel2.Visible := false;
  end else begin
  Panel2.Visible := true; end;
end;

procedure TForm1.ScrollBox1DblClick(Sender: TObject);
begin
  BitBtn3.Click;
end;

procedure TForm1.x7Click(Sender: TObject);
begin
  RadioButton7.Checked := true;
end;

procedure TForm1.x8Click(Sender: TObject);
begin
  RadioButton8.Checked := true;
end;

procedure TForm1.x9Click(Sender: TObject);
begin
  RadioButton9.Checked := true;
end;

procedure TForm1.x10Click(Sender: TObject);
begin
  RadioButton10.Checked := true;
end;

procedure TForm1.RadioButton10Click(Sender: TObject);
begin
  StatusBar1.SetFocus; X10.Checked := true;
end;

procedure TForm1.ScrollBox1Resize(Sender: TObject);
begin
  Label9.Left := (ScrollBox1.Width div 2) - 26;
  Label9.Top := (ScrollBox1.Height div 2);
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
  StatusBar1.SetFocus; F2.Click;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  if CheckBox1.Checked = true then begin
  Memo1.Font.Style := [fsBold]; B1.Checked := true;
  if CheckBox2.Checked = true then begin
  Memo1.Font.Style := [fsItalic, fsBold]; end;
  end else begin
  Memo1.Font.Style := []; B1.Checked := false;

  if CheckBox2.Checked = true then begin
  Memo1.Font.Style := [fsItalic]; end;
  end;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  if CheckBox2.Checked = true then begin
  Memo1.Font.Style := [fsItalic]; I1.Checked := true;
  if CheckBox1.Checked = true then begin
  Memo1.Font.Style := [fsBold, fsItalic]; end;
  end else begin
  Memo1.Font.Style := [];  I1.Checked := false;
  if CheckBox1.Checked = true then begin
  Memo1.Font.Style := [fsBold]; end;
  end;
end;

procedure TForm1.CP12501Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 5;
end;

procedure TForm1.CP12521Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 6;
end;

procedure TForm1.ISO885911Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 7;
end;

procedure TForm1.ISO885921Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 8;
end;

procedure TForm1.S5Click(Sender: TObject);
begin
  S5.Checked := not S5.Checked;
end;

procedure TForm1.B1Click(Sender: TObject);
begin
  CheckBox1.Checked := not CheckBox1.Checked;
end;

procedure TForm1.I1Click(Sender: TObject);
begin
  CheckBox2.Checked := not CheckBox2.Checked;
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  if ColorDialog2.Execute then Memo1.Color := ColorDialog2.Color;
end;

end.
