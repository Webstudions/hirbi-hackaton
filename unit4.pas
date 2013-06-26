unit Unit4; // Klanten wijzigen

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Grids, unit5, mysql55conn, sqldb;

type

  { TForm6 }

  TForm6 = class(TForm)
    Buttonreis: TButton;
    MySQL55Connection1: TMySQL55Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    StringGrid1: TStringGrid;
    procedure ButtonreisClick(Sender: TObject);
    procedure filform;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.lfm}

{ TForm6 }

procedure TForm6.ButtonreisClick(Sender: TObject);
begin
  form7.show;
end;

procedure TForm6.filform;
var i:integer;
begin
  SQLQuery1.Active:=FALSE;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('SELECT * FROM KLANTEN');
  SQLQuery1.ExecSQL;
  i:=1;
  while not  SQLQuery1.EOF do begin
    showmessage('we zitten erin');
    stringgrid1.Cells[1,i]:=SQLquery1.FieldByName('VNAAM').AsString;
    sqlquery1.Next;
    inc(i);
  end;

end;
initialization
begin
form6.filform;
end;

end.




