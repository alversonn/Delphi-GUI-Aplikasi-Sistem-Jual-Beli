unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg, Menus;

var
  jum : Integer;

type
  Tcart = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    Image1: TImage;
    btn1: TBitBtn;
    mmo1: TMemo;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    edt11: TEdit;
    edt12: TEdit;
    mmo2: TMemo;
    pnl1: TPanel;
    lbl14: TLabel;
    cbb1: TComboBox;
    lbl1: TLabel;
    lbl15: TLabel;
    cbb2: TComboBox;
    btn3: TBitBtn;
    mmo3: TMemo;
    lbl16: TLabel;
    btn4: TBitBtn;
    btn2: TButton;
    lbl2: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    // procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cart: Tcart;

implementation

uses Unit4, Unit5, Unit3;

{$R *.dfm}


procedure Tcart.Image1Click(Sender: TObject);
begin
  cart.Hide;
  form3.show;
end;

procedure Tcart.btn1Click(Sender: TObject);
begin
  if(Application.MessageBox('Apakah mau dihapus?','Notifikasi', MB_YESNO + MB_ICONQUESTION)=id_yes) then
  begin
    Memo1.Clear;
    mmo2.Clear;
    btn2.Enabled := True;
  end;

end;

procedure Tcart.btn3Click(Sender: TObject);
var
  barang1,barang2,barang3,barang4,barang5,barang6,barang7,barang8,barang9,barang10,barang11,barang12 :Integer;
  total: integer;

begin
  barang1:=StrToInt(edt1.text);
  barang2:=StrToInt(edt2.text);
  barang3:=StrToInt(edt3.text);
  barang4:=StrToInt(edt4.text);
  barang5:=StrToInt(edt5.text);
  barang6:=StrToInt(edt6.text);
  barang7:=StrToInt(edt7.text);
  barang8:=StrToInt(edt8.text);
  barang9:=StrToInt(edt9.text);
  barang10:=StrToInt(edt10.text);
  barang11:=StrToInt(edt11.text);
  barang12:=StrToInt(edt12.text);

  total:= barang1 + barang2 + barang3+barang4+barang5+barang6+barang7+barang8+barang9+barang10+barang11+barang12;


  if(cbb1.Text > '') then
  begin
    mmo3.Lines.Add('Total Belanja                ' + FormatFloat('Rp #,###',total));
    mmo3.Lines.Add('Metode Pembayaran     ' + cbb1.Text);
    btn3.Enabled := False;
  end
  
  else if (cbb2.Text > '') then
  begin
    mmo3.Lines.Add('Total Belanja                ' + FormatFloat('Rp #,###',total));
    mmo3.Lines.Add('Metode Pembayaran     ' + cbb2.Text);
    btn3.Enabled := False;
  end;

end;

procedure Tcart.btn2Click(Sender: TObject);
var
  barang1,barang2,barang3,barang4,barang5,barang6,barang7,barang8,barang9,barang10,barang11,barang12 :Integer;
  total: integer;

begin
  barang1:=StrToInt(edt1.text);
  barang2:=StrToInt(edt2.text);
  barang3:=StrToInt(edt3.text);
  barang4:=StrToInt(edt4.text);
  barang5:=StrToInt(edt5.text);
  barang6:=StrToInt(edt6.text);
  barang7:=StrToInt(edt7.text);
  barang8:=StrToInt(edt8.text);
  barang9:=StrToInt(edt9.text);
  barang10:=StrToInt(edt10.text);
  barang11:=StrToInt(edt11.text);
  barang12:=StrToInt(edt12.text);

  total:= barang1 + barang2 + barang3+barang4+barang5+barang6+barang7+barang8+barang9+barang10+barang11+barang12;
  mmo2.Lines.Add('Total Belanja                                         :        ' + FormatFloat('Rp #,###,#0.00',total));
  btn2.Enabled := False;
end;


procedure Tcart.btn4Click(Sender: TObject);
begin
  if(Application.MessageBox('Apakah Pesanan Sudah benar?','Notifikasi', MB_YESNO + MB_ICONQUESTION)=id_yes) then
    begin
      ShowMessage('Pesanan sudah dibuat, segera lakukan pembayaran !');
    end;
end;

end.
