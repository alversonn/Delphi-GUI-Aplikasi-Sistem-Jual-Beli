unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, jpeg;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    MainMenu1: TMainMenu;
    UBK1: TMenuItem;
    Button2: TButton;
    Label4: TLabel;
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
   edit2.PasswordChar:=#0;    // mengubah format edit2 menjadi default keyboard
  end
  else
  begin
   edit2.PasswordChar:='*';   // mengubah format edit2 menjadi *
  end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form2.Hide;
  Form1.Show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  ShowMessage('berhasil Registrasi'); // menampilkan pesan popup
  Form2.Hide;  // menyembunyikan form3
  Form1.show;  // menampilkan form1
end;

end.
