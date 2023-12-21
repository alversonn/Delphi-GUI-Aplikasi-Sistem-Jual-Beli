unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, jpeg, ExtCtrls, Buttons;

var
  a,total:Integer;

type
  TbotolChicago = class(TForm)
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
    procedure img3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  botolChicago: TbotolChicago;

implementation

uses Unit8, Unit16, Unit1;

{$R *.dfm}

procedure TbotolChicago.img3Click(Sender: TObject);
begin
  botolChicago.Hide;
  cart.show;
end;

procedure TbotolChicago.FormCreate(Sender: TObject);
begin
  botolChicago.Hide;
  aksesoris.show;
end;

procedure TbotolChicago.img1Click(Sender: TObject);
begin
  botolChicago.Hide;
  aksesoris.Show;
end;

procedure TbotolChicago.btn1Click(Sender: TObject);
begin
  a:=a+1;
  lbl3.Caption:=IntToStr(a);
end;

procedure TbotolChicago.btn2Click(Sender: TObject);
begin
  a:=a-1;
  if a = -1 then
  begin
    ShowMessage('Anda mencapai batas minimal');
    a:=0;
  end;
  lbl3.Caption:=IntToStr(a);
end;

procedure TbotolChicago.btn3Click(Sender: TObject);
begin

  total := StrToInt (lbl3.Caption)*200000;

  if total >0 then
  begin
    ShowMessage(lbl3.caption + ' Botol Chicago telah dimasukkan ke dalam keranjang');
    cart.Memo1.Lines.Add(lbl3.Caption + ' Bottle Chicago  x 200.000 = ' + FormatFloat('Rp #,###,#0.00',total));
    cart.edt12.Text:= IntToStr(total);
  end;

end;

procedure TbotolChicago.btn4Click(Sender: TObject);
begin
  if(Application.MessageBox('Apakah mau keluar?','Notifikasi', MB_YESNO + MB_ICONQUESTION)=id_yes) then
  begin
    form1.show;
    botolChicago.hide;
    ShowMessage('Anda berhasil keluar!');
  end;
end;

end.
