unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, jpeg, ExtCtrls, Buttons;

var
  a,total:Integer;

type
  TslipChicago = class(TForm)
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
  slipChicago: TslipChicago;

implementation

uses Unit9, Unit8, Unit1;

{$R *.dfm}

procedure TslipChicago.Image1Click(Sender: TObject);
begin
  slipChicago.Hide;
  footWear.show;
end;

procedure TslipChicago.Image3Click(Sender: TObject);
begin
  slipChicago.Hide;
  cart.show;
end;

procedure TslipChicago.Button2Click(Sender: TObject);
begin
  a:=a-1;
  if a = -1 then
  begin
    ShowMessage('Anda mencapai batas minimal');
    a:=0;
  end;
  label3.Caption:=IntToStr(a);
end;

procedure TslipChicago.Button1Click(Sender: TObject);
begin
  a:=a+1;
  Label3.Caption:=IntToStr(a);
end;

procedure TslipChicago.Button3Click(Sender: TObject);
begin


  total := StrToInt (label3.Caption)*150000;


  if total >0 then
  begin
    ShowMessage(Label3.Caption + ' Sendal Chicago telah dimasukkan ke dalam keranjang');
    cart.Memo1.Lines.Add(label3.Caption + ' Sendal Chicago  x 150.000 = ' + FormatFloat('Rp #,###,#0.00',total));
    cart.edt9.Text:= IntToStr(total);
  end;

end;

procedure TslipChicago.btn1Click(Sender: TObject);
begin
  if(Application.MessageBox('Apakah mau keluar?','Notifikasi', MB_YESNO + MB_ICONQUESTION)=id_yes) then
  begin
    form1.show;
    slipChicago.hide;
    ShowMessage('Anda berhasil keluar!');
  end;
end;

end.
