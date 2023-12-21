unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, jpeg, ExtCtrls, Buttons;

type
  TfootWear = class(TForm)
    Image1: TImage;
    Image2: TImage;
    MainMenu1: TMainMenu;
    UBK1: TMenuItem;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    btn1: TBitBtn;
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  footWear: TfootWear;

implementation

uses Unit3, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit8, Unit1;

{$R *.dfm}

procedure TfootWear.Image2Click(Sender: TObject);
begin
  footWear.Hide;
  form3.show;
end;

procedure TfootWear.Image4Click(Sender: TObject);
begin
  footWear.hide;
  sockLakers.show;
end;

procedure TfootWear.Image5Click(Sender: TObject);
begin
  footWear.Hide;
  sockWarriors.show;
end;

procedure TfootWear.Image6Click(Sender: TObject);
begin
  footWear.Hide;
  sockChicago.show;
end;

procedure TfootWear.Image7Click(Sender: TObject);
begin
  footWear.Hide;
  slipLakers.show;
end;

procedure TfootWear.Image8Click(Sender: TObject);
begin
  footWear.Hide;
  slipWarriors.show;
end;

procedure TfootWear.Image9Click(Sender: TObject);
begin
  footWear.Hide;
  slipChicago.show;
end;

procedure TfootWear.Image3Click(Sender: TObject);
begin
  footWear.Hide;
  cart.show;
end;

procedure TfootWear.btn1Click(Sender: TObject);
begin
  if(Application.MessageBox('Apakah mau keluar?','Notifikasi', MB_YESNO + MB_ICONQUESTION)=id_yes) then
  begin
    form1.show;
    footWear.hide;
    ShowMessage('Anda berhasil keluar!');
  end;
end;

end.
