unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, jpeg, ExtCtrls, Buttons;

var
  a,total:integer;
  
type
  TsockChicago = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    MainMenu1: TMainMenu;
    UBK1: TMenuItem;
    Image3: TImage;
    btn1: TBitBtn;
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sockChicago: TsockChicago;

implementation

uses Unit9, Unit8, Unit1;

{$R *.dfm}

procedure TsockChicago.Image1Click(Sender: TObject);
begin
  sockChicago.Hide;
  footWear.show;
end;

procedure TsockChicago.Image3Click(Sender: TObject);
begin
  sockChicago.Hide;
  cart.show;
end;

procedure TsockChicago.Button1Click(Sender: TObject);
begin
  a:=a+1;
  Label3.Caption:=IntToStr(a);
end;

procedure TsockChicago.Button2Click(Sender: TObject);
begin
  a:=a-1;
  if a = -1 then
  begin
    ShowMessage('Anda mencapai batas minimal');
    a:=0;
  end;
  Label3.Caption:=IntToStr(a);
end;

procedure TsockChicago.Button3Click(Sender: TObject);
begin


  total := StrToInt (label3.Caption)*171000;


  if total >0 then
  begin
    ShowMessage(label3.Caption + ' Kaos Kaki Chicago telah dimasukkan ke dalam keranjang');
    cart.Memo1.Lines.Add(label3.Caption + ' Kaos kaki Chicago  x 171.000 = ' + FormatFloat('Rp #,###,#0.00',total));
    cart.edt6.Text:= IntToStr(total);
  end;

end;

procedure TsockChicago.btn1Click(Sender: TObject);
begin
  if(Application.MessageBox('Apakah mau keluar?','Notifikasi', MB_YESNO + MB_ICONQUESTION)=id_yes) then
  begin
    form1.show;
    sockChicago.hide;
    ShowMessage('Anda berhasil keluar!');
  end;
end;

end.
