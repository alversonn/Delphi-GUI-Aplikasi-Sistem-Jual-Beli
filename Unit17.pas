unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, jpeg, ExtCtrls, Buttons;

var
  a,total:Integer;

type
  TbotolLakers = class(TForm)
    img1: TImage;
    img2: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    img3: TImage;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    mm1: TMainMenu;
    UBK1: TMenuItem;
    btn4: TBitBtn;
    procedure img1Click(Sender: TObject);
    procedure img3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  botolLakers: TbotolLakers;

implementation

uses Unit16, Unit8, Unit1;

{$R *.dfm}

procedure TbotolLakers.img1Click(Sender: TObject);
begin
  botolLakers.Hide;
  aksesoris.show;
end;

procedure TbotolLakers.img3Click(Sender: TObject);
begin
  botolLakers.Hide;
  cart.show;
end;

procedure TbotolLakers.btn2Click(Sender: TObject);
begin
  a:=a-1;
  if a = -1 then
  begin
    ShowMessage('Anda mencapai batas minimal');
    a:=0;
  end;
  lbl3.Caption:=IntToStr(a);
end;

procedure TbotolLakers.btn1Click(Sender: TObject);
begin
  a:=a+1;
  lbl3.Caption:=IntToStr(a);
end;

procedure TbotolLakers.btn3Click(Sender: TObject);
begin

  total := StrToInt (lbl3.Caption)*200000;


  if total >0 then
  begin
    ShowMessage(lbl3.Caption + ' Botol Lakers telah dimasukkan ke dalam keranjang');
    cart.Memo1.Lines.Add(lbl3.Caption + ' Botol Lakers  x 200.000 = ' + FormatFloat('Rp #,###,#0.00',total));
    cart.edt10.Text:= IntToStr(total);
  end;

end;

procedure TbotolLakers.btn4Click(Sender: TObject);
begin
  if(Application.MessageBox('Apakah mau keluar?','Notifikasi', MB_YESNO + MB_ICONQUESTION)=id_yes) then
  begin
    form1.show;
    botolLakers.hide;
    ShowMessage('Anda berhasil keluar!');
  end;
end;

end.
