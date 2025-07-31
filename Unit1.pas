unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, ExtDlgs, ComCtrls;

type
  TDen = record
   Car:Char;
   D:integer;
  end;

  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Fond: TImage;
    Memo1: TMemo;
    TBCon: TTrackBar;
    Police: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    TBLum: TTrackBar;
    CB2x: TCheckBox;
    Button3: TButton;
    PB1: TProgressBar;
    CBNeg: TCheckBox;
    StatusBar1: TStatusBar;
    Splitter1: TSplitter;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    procedure FaireTblDensite();
    procedure Paint();
    procedure QuickSort(iLo, iHi: Integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Densite:array[0..95] of TDen;
  OldPolice:string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute then begin
 Fond.Picture.LoadFromFile(OpenPictureDialog1.FileName);
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
var
a,b,c:integer;
TmpB:Tbitmap;
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
var
a:integer;
begin
for a := 0 to screen.Fonts.Count-1 do begin
Police.Items.Add(Screen.Fonts.Strings[a]);
end;
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
if OldPolice<>Police.Text then FaireTblDensite;
 Paint;
OldPolice := Police.Text;
end;

procedure TForm1.Paint;
var
a,b,c,d:integer;
MoyR,MoyV,MoyB,MoyCol:integer;
Couleur : LongInt;
TmpB:TBitmap;
TmpRec:TRect;
TmpStr:string;

begin
TmpB := TBitmap.create;
if not CB2x.Checked then begin
  TmpB.Height := Fond.Picture.Height;
  TmpB.Width := Fond.Picture.Width;
  TmpB.pixelformat := pf24bit;
  TmpB.Canvas.Draw(0,0,Fond.Picture.Graphic);
end else begin
  TmpRec.Left := 0; TmpRec.Top := 0;
  TmpRec.Right := Fond.Picture.Width*2;
  TmpRec.Bottom := Fond.Picture.Height*2;

  TmpB.Height := Fond.Picture.Height*2;
  TmpB.Width := Fond.Picture.Width*2;
  TmpB.pixelformat := pf24bit;
  TmpB.Canvas.StretchDraw(TmpRec,Fond.Picture.Graphic);
end;

TmpStr := '';
PB1.Position :=0;
PB1.Max := TmpB.Height*TmpB.Width;

b:=0;
while b<TmpB.Height-16-1 do begin
 a:=0;
 while a<TmpB.Width-8-1 do begin
   PB1.Position := PB1.Position+128;
   MoyCol := 0;
   MoyR := 0;
   MoyV := 0;
   MoyB := 0;
   c := a;
   while (c<=a+8) and (c<TmpB.Width) do begin
    d:=b;
    while (d<=b+16) and (d<TmpB.Height) do begin
      Couleur := ColorToRGB(TmpB.Canvas.Pixels[c,d]);
      MoyR := MoyR + GetRValue(Couleur);
      MoyV := MoyV + GetGValue(Couleur);
      MoyB := MoyB + GetBValue(Couleur);
      inc(d,1);
    end;
   inc(c,1);
   end;

   MoyR:=MoyR div 152;
   MoyV:=MoyV div 152;
   MoyB:=MoyB div 152;

   MoyR:= round(MoyR * ( 1 + (TBLum.Position-128)/100 ));
   MoyV:=round(MoyV * ( 1 + (TBLum.Position-128)/100));
   MoyB:=round(MoyB * ( 1 + (TBLum.Position-128)/100));

   MoyR:= round(MoyR + (TBCon.Position-128)/100*(MoyR-127));
   MoyV:= round(MoyV + (TBCon.Position-128)/100*(MoyV-127));
   MoyB:= round(MoyB + (TBCon.Position-128)/100*(MoyB-127));

   MoyCol := (MoyR + MoyV + MoyB) div 3;
   if MoyCol>255 then MoyCol := 255;
   if MoyCol<0 then MoyCol := 0;

   if CBNeg.Checked then MoyCol := 255- MoyCol;
   MoyCol := round(MoyCol * (95 / 255));
   TmpStr := TmpStr + Densite[MoyCol].Car;

   inc(a,8);
 end;
 TmpStr := TmpStr + #13+#10;
inc(b,16);
end;
TmpB.Free;
MeMo1.Font.Name := Police.Text;
Memo1.Text := TmpStr;


end;

procedure TForm1.Button3Click(Sender: TObject);
begin
TBCon.Position := 128;
TBLum.Position := 128;
end;

end.
