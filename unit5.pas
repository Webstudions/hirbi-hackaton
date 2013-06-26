unit Unit5;  // Reis boeken

{$mode objfpc}{$H+}

interface


uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Grids, Calendar, ButtonPanel, Spin;

type

  { TForm7 }

  TForm7 = class(TForm)
    Buttonwegschrijven: TButton;
    Buttonbegin: TButton;
    Buttoneinde: TButton;
    ButtonPanel1: TButtonPanel;
    Calendar1: TCalendar;
    ComboBoxspanje: TComboBox;
    ComboBoxfrankrijk: TComboBox;
    ComboBoxbelgie: TComboBox;
    ComboBoxland: TComboBox;
    Editbegin: TEdit;
    Editeind: TEdit;
    Labelextrainfo: TLabel;
    LabelHotel: TLabel;
    labelland: TLabel;
    Labelreis: TLabel;
    Memoextrainfo: TMemo;
    Panelonder: TPanel;
    Panelrechtsboven: TPanel;
    Panellinksboven: TPanel;
    SpinEdit1: TSpinEdit;
    procedure ButtonwegschrijvenClick(Sender: TObject);
    procedure ButtonbeginClick(Sender: TObject);
    procedure ButtoneindeClick(Sender: TObject);
    procedure ComboBoxlandChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure PanelonderClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

const
     bestandsnaam='reizen.txt';
var
  Form7: TForm7;


implementation

{$R *.lfm}

{ TForm7 }

procedure TForm7.FormCreate(Sender: TObject);
begin

end;

procedure TForm7.Memo1Change(Sender: TObject);
begin

end;

procedure TForm7.PanelonderClick(Sender: TObject);
begin

end;

procedure TForm7.ComboBoxlandChange(Sender: TObject);
begin
  if comboboxland.ItemIndex=0 then
  comboboxbelgie.Enabled:=true else
    comboboxbelgie.Enabled:=false;
  if comboboxland.ItemIndex=1 then
  comboboxfrankrijk.Enabled:=true else
    comboboxfrankrijk.Enabled:=false;
    if comboboxland.ItemIndex=2 then
  comboboxspanje.Enabled:=true else
    comboboxspanje.Enabled:=false;

end;

procedure TForm7.ButtonbeginClick(Sender: TObject);
begin
  Editbegin.text:=Calendar1.Date;
  spinedit1.Value:=calendar1.datetime;
end;

procedure TForm7.ButtonwegschrijvenClick(Sender: TObject);
var F:textfile;
  hotel:string;
begin
  assignfile(F,bestandsnaam);
  append(F);
  hotel:='niet ingevuld';
  if comboboxbelgie.enabled=true then
  hotel:=comboboxbelgie.text
  else if comboboxfrankrijk.enabled=true  then
  hotel:=comboboxfrankrijk.text else if comboboxspanje.enabled=true then
  hotel:=comboboxspanje.text else;
  writeln(f,'B:',  editbegin.text, ' E:', editeind.text,' ', comboboxland.Text,' ',hotel, ' extra opmerkingen: ', memoextrainfo.text) ;

  closefile(f);
end;

procedure TForm7.ButtoneindeClick(Sender: TObject);
begin

  if (editbegin.text<>'') and (spinedit1.value<calendar1.datetime) then
   Editeind.text:=Calendar1.Date
   else showmessage('Eind datum moet zich na begindatum bevinden');
end;

end.

