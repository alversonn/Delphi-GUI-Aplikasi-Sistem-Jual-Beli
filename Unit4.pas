unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, Buttons;

type
  Tjersey = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    UBK1: TMenuItem;
    Image3: TImage;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image6: TImage;
    btn1: TBitBtn;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  jersey: Tjersey;

implementation

uses Unit3, Unit5, Unit6, Unit7, Unit8, Unit1;

{$R *.dfm}

procedure Tjersey.Image2Click(Sender: TObject);
begin
  jersey.Hide;
  Form3.Show;
end;

procedure Tjersey.Image3Click(Sender: TObject);
begin
  jersey.Hide;
  bajuLakers.show;
end;

procedure Tjersey.Image4Click(Sender: TObject);
begin
  jersey.Hide;
  bajuWarriors.show;
end;

procedure Tjersey.Image5Click(Sender: TObject);
begin
  jersey.Hide;
  bajuChicago.show;
end;

procedure Tjersey.Image6Click(Sender: TObject);
begin
  jersey.Hide;
  cart.show;
end;

procedure Tjersey.btn1Click(Sender: TObject);
begin
  if(Application.MessageBox('Apakah mau keluar?','Notifikasi', MB_YESNO + MB_ICONQUESTION)=id_yes) then
  begin
    form1.show;
    jersey.hide;
    ShowMessage('Anda berhasil keluar!');
  end;
end;

end.
