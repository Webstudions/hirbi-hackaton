unit Unit4; // Klanten wijzigen

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Grids, unit5, mysql55conn, sqldb;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    MySQL55Connection1: TMySQL55Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form6: TForm6;
  idselected:integer;
  nameselected:string;

implementation

{$R *.lfm}

{ TForm6 }

procedure TForm6.Button1Click(Sender: TObject);
var i:integer; j:integer;
begin
     i:=1;
     SQLQuery1.open;
     while not SQLQuery1.Eof do begin
           stringgrid1.rowcount:=i+1;
           stringgrid1.Cells[0,i]:=SQLquery1.FieldByName('ID').AsString;
           stringgrid1.Cells[1,i]:=SQLquery1.FieldByName('VNAAM').AsString;
           stringgrid1.Cells[2,i]:=SQLquery1.FieldByName('ANAAM').AsString;
           stringgrid1.Cells[3,i]:=SQLquery1.FieldByName('TELNR').AsString;
           SQLQuery1.Next;
           inc(i);
     end;
     SQLQuery1.close;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  form6.close;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  idselected:=stringgrid1.row;
  nameselected:=stringgrid1.Cells[1,idselected];
  form7.labelreis.caption:='Boek een reis voor '+nameselected;
  form7.idselected.text:=inttostr(stringgrid1.Row);
  form7.show;
end;

procedure TForm6.StringGrid1Click(Sender: TObject);
begin
  Button3.enabled:=TRUE;
end;

initialization

end.




