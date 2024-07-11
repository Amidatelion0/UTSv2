program Fiture_Satuan;

uses
  Forms,
  Unit1 in '..\Visual2\Finals Vis2\Unit1.pas' {Form1},
  Unit2 in '..\Visual2\Finals Vis2\Unit2.pas',
  Unit3 in '..\Visual2\Finals Vis2\Unit3.pas' {Form3},
  Unit4 in '..\Visual2\Finals Vis2\Unit4.pas' {DataModule4: TDataModule},
  Unit5 in '..\Visual2\Finals Vis2\Unit5.pas' {Form5},
  Unit6 in '..\Visual2\Finals Vis2\Unit6.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDataModule4, DataModule4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
