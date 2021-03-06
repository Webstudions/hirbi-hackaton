unit Unit3; // Klanten maken

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  klanten, mysql55conn, sqldb;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    fnaam: TEdit;
    anaam: TEdit;
    MySQL55Connection1: TMySQL55Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    tnr: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure tnrExit(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.lfm}

{ TForm5 }

procedure TForm5.tnrExit(Sender: TObject);
var value:integer;
begin
     try
     value := strtoint(tnr.text);
     except
     messagedlg('ça ne marche pas!', mtError,[mbOK], 0);
     end;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
  if((fnaam.text='') or (anaam.text='') or (tnr.text='')) then messagedlg('U heeft niet alle velden ingevuld', mtError, [mbok], 0);
  SQLQuery1.Active:=FALSE;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('INSERT INTO KLANTEN (VNAAM, ANAAM, TELNR)');
  SQLQuery1.SQL.Add('VALUES (:fnaam, :anaam, :tnr)');
  SQLQuery1.Params.ParamByName('fnaam').Value := fnaam.text;
  SQLQuery1.Params.ParamByName('anaam').Value := anaam.text;
  SQLQuery1.Params.ParamByName('tnr').Value := strtoint(tnr.text);
  SQLQuery1.ExecSQL;
  form5.close;
end;

end.

