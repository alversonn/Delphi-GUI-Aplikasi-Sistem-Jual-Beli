unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, jpeg, ExtCtrls, Buttons;

var
  a, total:Integer;

type
  TbajuLakers = class(TForm)
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
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  bajuLakers: TbajuLakers;

implementation

uses Unit4, Unit8, Unit1;

{$R *.dfm}

procedure TbajuLakers.Button2Click(Sender: TObject);
begin
  a:=a-1;
  if a = -1 then
  begin
    ShowMessage('Anda mencapai batas minimal');
    a:=0;
  end;
  label3.Caption:=IntToStr(a);
end;

procedure TbajuLakers.Button1Click(Sender: TObject);
begin
  a:=a+1;
  Label3.Caption := IntToStr(a);
end;

procedure TbajuLakers.Image1Click(Sender: TObject);
begin
  bajuLakers.Hide;
  jersey.show;
end;

procedure TbajuLakers.Button3Click(Sender: TObject);
begin


  total := StrToInt (Label3.Caption)*1980000;


  if total >0 then
  begin
    ShowMessage(Label3.Caption + ' Jersey Lakers telah dimasukkan ke dalam keranjang');
    cart.Memo1.Lines.Add(Label3.Caption + ' Jersey Los Angeles Lakers  x 1.980.000 = ' + FormatFloat('Rp #,###,#0.00',total));
    cart.edt1.Text:= IntToStr(total);
  end;



end;

procedure TbajuLakers.Image3Click(Sender: TObject);
begin
  bajuLakers.Hide;
  cart.Show;
end;

procedure TbajuLakers.btn1Click(Sender: TObject);
begin
  if(Application.MessageBox('Apakah mau keluar?','Notifikasi', MB_YESNO + MB_ICONQUESTION)=id_yes) then
  begin
    form1.show;
    bajuLakers.hide;
    ShowMessage('Anda berhasil keluar!');
  end;
end;

end.
