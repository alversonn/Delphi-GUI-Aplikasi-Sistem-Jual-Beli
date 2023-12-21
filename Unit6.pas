unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Menus, Buttons;

var
  a, total : Integer;

type
  TbajuWarriors = class(TForm)
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
  bajuWarriors: TbajuWarriors;

implementation

uses Unit4, Unit8, Unit1;

{$R *.dfm}

procedure TbajuWarriors.Button2Click(Sender: TObject);
begin
  a:=a-1;
  if a = -1 then
  begin
    ShowMessage('Anda mencapai batas minimal');
    a:=0;
  end;
  label3.Caption:=IntToStr(a);
end;

procedure TbajuWarriors.Button1Click(Sender: TObject);
begin
  a:=a+1;
  Label3.Caption := IntToStr(a);
end;

procedure TbajuWarriors.Image1Click(Sender: TObject);
begin
  bajuWarriors.Hide;
  jersey.show;
end;

procedure TbajuWarriors.Button3Click(Sender: TObject);
begin


  total := StrToInt (label3.Caption)*2000000;


  if total >0 then
  begin
    ShowMessage(label3.Caption + ' Jersey Warriors telah dimasukkan ke dalam keranjang');
    cart.Memo1.Lines.Add(label3.Caption + ' Warriors  x 2.000.000 = ' + FormatFloat('Rp #,###,#0.00',total));
    cart.edt2.Text:= IntToStr(total);
  end;



end;

procedure TbajuWarriors.Image3Click(Sender: TObject);
begin
  bajuWarriors.Hide;
  cart.Show;
end;

procedure TbajuWarriors.btn1Click(Sender: TObject);
begin
  if(Application.MessageBox('Apakah mau keluar?','Notifikasi', MB_YESNO + MB_ICONQUESTION)=id_yes) then
  begin
    form1.show;
    bajuWarriors.hide;
    ShowMessage('Anda berhasil keluar!');
  end;
end;

end.
