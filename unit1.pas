unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ButtonPanel, unit3, unit4, unit5;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ButtonPanel1: TButtonPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  klantenlijst:TList;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
     Form5.show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     Form6.show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     Form7.show;
end;

procedure TForm1.OKButtonClick(Sender: TObject);
begin
  showmessage('(c) Nick, Yves, Stijn, Alexander & Charlotte');
end;

initialize



end.

