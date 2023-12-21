unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    MainMenu1: TMainMenu;
    UBK1: TMenuItem;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (Edit1.Text = 'dicky') and (Edit2.Text = '12345') then
  begin

    form3.Show;         // munculkan form2

    Form1.Hide;         // menyembunyikan form1
    Edit1.Clear;        // membersihkan text edit1
    Edit2.Clear;        // membersihkan text edit2
    ShowMessage('Berhasil Login!');

  end

  else if (Edit1.Text = '') then
  begin
    MessageDlg('masukkan username', mtWarning, [mbOK],0);   // menampilkan popuop / pesan
  end

  else if (Edit2.Text = '') then
  begin
    MessageDlg('masukkan Password', mtWarning, [mbOK],0); // menampilkan popuop / pesan
  end

  else if not (Edit1.Text = 'dicky') and (Edit2.Text = '12345') then
  begin
    MessageDlg('username salah', mtWarning, [mbOK],0);   // menampilkan popuop / pesan
    Edit1.Clear;        // membersihkan text edit1
    Edit2.Clear;        // membersihkan text edit2
  end

  else if (Edit1.Text = 'dicky') and not (Edit2.Text = '12345') then
  begin
    MessageDlg('password salah', mtWarning, [mbOK],0);      // menampilkan popuop / pesan
    Edit1.Clear;        // membersihkan text edit1
    Edit2.Clear;        // membersihkan text edit2
  end

  else
  begin
    MessageDlg('username dan password salah', mtWarning, [mbOK],0);   // menampilkan popuop / pesan
    Edit1.Clear;        // membersihkan text edit1
    Edit2.Clear;        // membersihkan text edit2
  end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
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

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Hide;
  form2.show;
end;

end.
