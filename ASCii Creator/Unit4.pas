unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Jpeg, PngImage,
  GifImg;

type
  TForm4 = class(TForm)
    ScrollBox1: TScrollBox;
    Image1: TImage;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    StatusBar1: TStatusBar;
    SaveDialog1: TSaveDialog;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Shape1: TShape;
    Label1: TLabel;
    ColorDialog1: TColorDialog;
    CheckBox5: TCheckBox;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure ScrollBox1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses main;

{$R *.dfm}
function MainDir : string;
begin
   Result := ExtractFilePath(ParamStr(0));
end;

procedure ConvertBMP2GIF;
var
  bmp: TBitmap;
  gif: TGIFImage;
begin
  gif := TGifImage.Create;
  try
    bmp := TBitmap.Create;
    try
      bmp.LoadFromFile(MainDir + 'Data\Backup\_bmp');

      if Form4.CheckBox4.Checked = true then begin
      gif.Transparent := true;
      end;

      if Form4.CheckBox5.Checked = true then begin
      //gif.Compression := gcLZW;
      end;

      gif.Assign(bmp);
    finally
      bmp.Free;
    end;
    gif.SaveToFile(Form4.SaveDialog1.FileName + '.gif');
  finally
    gif.Free;
  end;
end;

procedure BitmapFileToPNG(const Source, Dest: String);
var
  Bitmap: TBitmap;
  PNG: TPNGObject;
begin
  Bitmap := TBitmap.Create;
  PNG := TPNGObject.Create;
  try
    Bitmap.LoadFromFile(Source);
    PNG.Assign(Bitmap);

    if Form4.CheckBox4.Checked = true then begin
    PNG.Transparent := true;
    PNG.TransparentColor := Form4.Shape1.Brush.Color;
    end;

    if Form4.CheckBox5.Checked = true then begin
    PNG.CompressionLevel := 9;
    end;

    PNG.SaveToFile(Dest);
  finally
    Bitmap.Free;
    PNG.Free;
  end
end;

procedure Bmp2Jpeg(const BmpFileName, JpgFileName: string);
var
  Bmp: TBitmap;
  Jpg: TJPEGImage;
begin
  Bmp := TBitmap.Create;
  Jpg := TJPEGImage.Create;
  try
    Bmp.LoadFromFile(BmpFileName);
    Jpg.Assign(Bmp);

    if Form4.CheckBox5.Checked = true then begin
    Jpg.CompressionQuality := 50;
    Jpg.Compress;
    end;

    Jpg.SaveToFile(JpgFileName);
  finally
    Jpg.Free;
    Bmp.Free;
  end;
end;

procedure MirrorV(AImage: TImage);
var
  lBmp: TBitmap;
begin
  lBmp := TBitmap.Create;
  try
    lBmp.Assign(AImage.Picture.Graphic);

    StretchBlt(lBmp.Canvas.Handle,
                 0,0,lBmp.Width,lBmp.Height,
               lBmp.Canvas.Handle,0,lBmp.Height,lBmp.Width,
                 -lBmp.Height,SRCCOPY);
    AImage.Picture.Assign(lBmp);;
  finally
    lBmp.Free;
  end;
end;

procedure MirrorH(AImage: TImage);
var
  lBmp: TBitmap;
begin
  lBmp := TBitmap.Create;
  try
    lBmp.Assign(AImage.Picture.Graphic);

    StretchBlt(lBmp.Canvas.Handle,0,0,lBmp.Width,
                 lBmp.Height,lBmp.Canvas.Handle,lBmp.Width,0,
                -lBmp.Width,lBmp.Height,SRCCOPY);
    AImage.Picture.Assign(lBmp);;
  finally
    lBmp.Free;
  end;
end;

function InvertBitmap(MyBitmap: TBitmap): TBitmap;
var
  x, y: Integer;
  ByteArray: PByteArray;
begin
  MyBitmap.PixelFormat := pf24Bit;
  for y := 0 to MyBitmap.Height - 1 do
  begin
    ByteArray := MyBitmap.ScanLine[y];
    for x := 0 to MyBitmap.Width * 3 - 1 do
    begin
      ByteArray[x] := 255 - ByteArray[x];
    end;
  end;
  Result := MyBitmap;
end;

procedure TForm4.FormActivate(Sender: TObject);
var bmp : TBitmap; TextRect : TRect; lcr, i : integer;
begin
  Image1.Picture.Graphic := nil;
  bmp := TBitmap.Create;
  bmp.Width := 1000;
  //bmp.Height := Form1.Memo1.Lines.Count * 16;

  Image1.Width := 1000;
  //Image1.Height := Form1.Memo1.Lines.Count * 16;
  Image1.Canvas.Brush.Color := Form1.Memo1.Color;
  Image1.Canvas.Rectangle(0,0, bmp.Width, bmp.Height);

  bmp.Canvas.Draw(0,0,Image1.Picture.Graphic);
  bmp.Canvas.Brush.Style := bsClear;
  bmp.Canvas.Brush.Color := Form1.Memo1.Color;
  bmp.Canvas.Font := Form1.Memo1.Font;
  lcr := 0;
  if Form1.Memo1.Alignment = taLeftJustify then lcr := DT_LEFT;
  if Form1.Memo1.Alignment = taCenter then lcr := DT_CENTER;
  if Form1.Memo1.Alignment = taRightJustify then lcr := DT_RIGHT;
  TextRect.Left := 0;
  TextRect.Top := 0;

  Shape1.Brush.Color := Form1.Memo1.Color;;

  //for i:= 0 to Form1.Memo1.Lines.Count-1 do begin
  //TextRect.Bottom := Form1.Memo1.Lines.Count; end;

  //Image1.Width := TextRect.Right;
  //Image1.Height := TextRect.Bottom;

  DrawText(bmp.Canvas.Handle,PChar(Form1.Memo1.Lines.Text), length(Form1.Memo1.Lines.Text),TextRect,
  DT_CALCRECT or DT_NOPREFIX or lcr);

  //for i:= 0 to Memo1.Lines.Count-1 do begin
  //Memo1.Lines.Strings[i];
  //end;
  //Image1.Height := TextRect.Bottom;
  bmp.Width :=  TextRect.Right;
  bmp.Height := TextRect.Bottom;
  Image1.Height := bmp.Height;
  Image1.Width := bmp.Width;
  //ScrollBox1.VertScrollBar.Range := bmp.Height;

  // If text is bigger than image then exit

  if (TextRect.Right > bmp.Width) or
     (TextRect.Bottom > bmp.Height) then begin
    ShowMessage('Text too large for image');

    bmp.Free;
    Exit;
  end;

  // Put the text in the center of the bmp
  OffsetRect(TextRect,(bmp.Width - TextRect.Right) Div 2,
                      (bmp.Height - TextRect.Bottom) Div 2);
  DrawText(bmp.Canvas.Handle,PChar(Form1.Memo1.Lines.Text),  // Draw Text
      length(Form1.Memo1.Lines.Text),TextRect,
      DT_NOPREFIX or lcr);
  Image1.Picture.Assign(bmp);
  bmp.Free;
  Image1.Refresh;

  StatusBar1.Panels[1].Text := IntToStr(Image1.Picture.Bitmap.Height) + ' x ' +
                               IntToStr(Image1.Picture.Bitmap.Width);
  StatusBar1.Panels[4].Text := Form1.StatusBar1.Panels[1].Text;

end;

procedure TForm4.CheckBox1Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  Image1.Picture.Bitmap := InvertBitmap(Image1.Picture.Bitmap);
  Image1.Refresh;

  if CheckBox1.Checked = true then begin
  Shape1.Brush.Color := clBlack;
  end else begin
  Shape1.Brush.Color := clWhite;
  end;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.BitBtn8.Enabled := true;
end;

procedure TForm4.CheckBox2Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  MirrorV(Image1);
end;

procedure TForm4.CheckBox3Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  MirrorH(Image1);
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
var bmp : TBitmap;
begin
  if SaveDialog1.Execute then begin

  if SaveDialog1.FilterIndex = 1 then begin
  if CheckBox4.Checked = true then begin
  bmp := TBitmap.Create;
  try
  bmp.Assign(Image1.Picture.Bitmap);
  bmp.Transparent := true;
  bmp.TransparentColor := Shape1.Brush.Color;
  Image1.Picture.Bitmap.Assign(bmp);
  finally
  bmp.Free;
  end;
  end;
  Image1.Picture.Bitmap.SaveToFile(SaveDialog1.FileName + '.bmp');
  end;

  if SaveDialog1.FilterIndex = 2 then begin
  Image1.Picture.Bitmap.SaveToFile(MainDir + 'Data\Backup\_bmp');
  Bmp2Jpeg(MainDir + 'Data\Backup\_bmp', SaveDialog1.FileName + '.jpg');
  end;

  if SaveDialog1.FilterIndex = 3 then begin
  Image1.Picture.Bitmap.SaveToFile(MainDir + 'Data\Backup\_bmp');
  BitmapFileToPNG(MainDir + 'Data\Backup\_bmp', SaveDialog1.FileName + '.png');
  end;

  if SaveDialog1.FilterIndex = 4 then begin
  Image1.Picture.Bitmap.SaveToFile(MainDir + 'Data\Backup\_bmp');
  ConvertBMP2GIF;
  end;


  end;
  StatusBar1.SetFocus;
end;

procedure TForm4.CheckBox4Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  if CheckBox4.Checked = true then begin
  Image1.Transparent := true; end else begin
  Image1.Transparent := false; end;
end;

procedure TForm4.CheckBox5Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm4.ScrollBox1Resize(Sender: TObject);
begin
  Label2.Left := (ScrollBox1.Width div 2) - 26;
  Label2.Top := (ScrollBox1.Height div 2);
end;

end.
