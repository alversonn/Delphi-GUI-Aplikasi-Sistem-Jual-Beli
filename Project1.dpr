program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {jersey},
  Unit5 in 'Unit5.pas' {bajuLakers},
  Unit6 in 'Unit6.pas' {bajuWarriors},
  Unit7 in 'Unit7.pas' {bajuChicago},
  Unit8 in 'Unit8.pas' {cart},
  Unit9 in 'Unit9.pas' {footWear},
  Unit10 in 'Unit10.pas' {sockLakers},
  Unit11 in 'Unit11.pas' {sockWarriors},
  Unit12 in 'Unit12.pas' {sockChicago},
  Unit13 in 'Unit13.pas' {slipLakers},
  Unit14 in 'Unit14.pas' {slipWarriors},
  Unit15 in 'Unit15.pas' {slipChicago},
  Unit16 in 'Unit16.pas' {aksesoris},
  Unit17 in 'Unit17.pas' {botolLakers},
  Unit18 in 'Unit18.pas' {botolWarriors},
  Unit19 in 'Unit19.pas' {botolChicago};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(Tjersey, jersey);
  Application.CreateForm(TbajuLakers, bajuLakers);
  Application.CreateForm(TbajuWarriors, bajuWarriors);
  Application.CreateForm(TbajuChicago, bajuChicago);
  Application.CreateForm(Tcart, cart);
  Application.CreateForm(TfootWear, footWear);
  Application.CreateForm(TsockLakers, sockLakers);
  Application.CreateForm(TsockWarriors, sockWarriors);
  Application.CreateForm(TsockChicago, sockChicago);
  Application.CreateForm(TslipLakers, slipLakers);
  Application.CreateForm(TslipWarriors, slipWarriors);
  Application.CreateForm(TslipChicago, slipChicago);
  Application.CreateForm(Taksesoris, aksesoris);
  Application.CreateForm(TbotolLakers, botolLakers);
  Application.CreateForm(TbotolWarriors, botolWarriors);
  Application.CreateForm(TbotolChicago, botolChicago);
  Application.Run;
end.
