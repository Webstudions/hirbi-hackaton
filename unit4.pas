unit Unit4; // Klanten wijzigen

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, unit5;

type

  { TForm6 }

  TForm6 = class(TForm)
    Buttonreis: TButton;
    procedure ButtonreisClick(Sender: TObject);
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

end.

