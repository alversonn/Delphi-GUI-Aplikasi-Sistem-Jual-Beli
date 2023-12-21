unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, jpeg, ExtCtrls, Buttons;

type
  Taksesoris = class(TForm)
    Image1: TImage;
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
    MainMenu1: TMainMenu;
    UBK1: TMenuItem;
    btn1: TBitBtn;
    procedure Image6Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  aksesoris: Taksesoris;

implementation

uses Unit8, Unit3, Unit17, Unit18, Unit19, Unit1;

{$R *.dfm}

procedure Taksesoris.Image6Click(Sender: TObject);
begin
  aksesoris.Hide;
  cart.show;
end;

procedure Taksesoris.Image2Click(Sender: TObject);
begin
  aksesoris.Hide;
  form3.show;
end;

procedure Taksesoris.Image3Click(Sender: TObject);
begin
  aksesoris.Hide;
  botolLakers.show;
end;

procedure Taksesoris.Image4Click(Sender: TObject);
begin
  aksesoris.Hide;
  botolWarriors.show;
end;

procedure Taksesoris.Image5Click(Sender: TObject);
begin
  aksesoris.Hide;
  botolChicago.show;
end;

procedure Taksesoris.btn1Click(Sender: TObject);
begin
  if(Application.MessageBox('Apakah mau keluar?','Notifikasi', MB_YESNO + MB_ICONQUESTION)=id_yes) then
  begin
    form1.show;
    aksesoris.hide;
    ShowMessage('Anda berhasil keluar!');
  end;
end;

end.
