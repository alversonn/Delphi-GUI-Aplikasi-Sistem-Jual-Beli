unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, jpeg, Buttons;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    UBK1: TMenuItem;
    Image1: TImage;
    Image2: TImage;
    Image6: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Image5: TImage;
    Label3: TLabel;
    btn1: TBitBtn;
    procedure Image6Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit4, Unit8, Unit9, Unit16, Unit1;

{$R *.dfm}



procedure TForm3.Image6Click(Sender: TObject);
begin
  Form3.Hide;
  cart.Show;
end;

procedure TForm3.Image4Click(Sender: TObject);
begin
  Form3.Hide;
  jersey.Show;
end;

procedure TForm3.Image3Click(Sender: TObject);
begin
  Form3.Hide;
  footWear.show;
end;

procedure TForm3.Image5Click(Sender: TObject);
begin
  Form3.Hide;
  aksesoris.show;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
  if(Application.MessageBox('Apakah mau keluar?','Notifikasi', MB_YESNO + MB_ICONQUESTION)=id_yes) then
  begin
    form1.show;
    form3.hide;
    ShowMessage('Anda berhasil keluar!');
  end;
end;

end.
