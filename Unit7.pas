unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Menus, Buttons;

var
  a,total:integer;

type
  TbajuChicago = class(TForm)
    MainMenu1: TMainMenu;
    UBK1: TMenuItem;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image3: TImage;
    btn1: TBitBtn;
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  bajuChicago: TbajuChicago;

implementation

uses Unit4, Unit8, Unit1;

{$R *.dfm}

procedure TbajuChicago.Image1Click(Sender: TObject);
begin
  bajuChicago.Hide;
  jersey.show;
end;

procedure TbajuChicago.Image3Click(Sender: TObject);
begin
  bajuChicago.Hide;
  cart.show;
end;

procedure TbajuChicago.Button2Click(Sender: TObject);
begin
  a:=a-1;
  if a = -1 then
  begin
    ShowMessage('Anda mencapai batas minimal');
    a:=0;
  end;
  label3.Caption:=IntToStr(a);
end;

procedure TbajuChicago.Button1Click(Sender: TObject);
begin
  a:=a+1;
  Label3.Caption:=IntToStr(a);
end;

procedure TbajuChicago.Button3Click(Sender: TObject);
begin

  total := StrToInt (label3.Caption)*1859970;


  if total >0 then
  begin
    ShowMessage(Label3.caption + ' Jersey Chicago telah dimasukkan ke dalam keranjang');
    cart.Memo1.Lines.Add(label3.Caption + ' Jersey Chicago  x 1.859.970 = ' + FormatFloat('Rp #,###,#0.00',total));
    cart.edt3.Text:= IntToStr(total);
  end;

end;

procedure TbajuChicago.btn1Click(Sender: TObject);
begin
  if(Application.MessageBox('Apakah mau keluar?','Notifikasi', MB_YESNO + MB_ICONQUESTION)=id_yes) then
  begin
    form1.show;
    bajuChicago.hide;
    ShowMessage('Anda berhasil keluar!');
  end;
end;

end.
