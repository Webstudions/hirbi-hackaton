unit klanten;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

const bestandsnaam='klanten.txt';

type
  TKlant=Class
    private
      ffnaam,flnaam:string;
      tnr:integer;
    public
      constructor create(afnaam,alnaam:string;ATel:integer);
      procedure opslaan;
      function getfnaam:string;
      function getlnaam:string;
      function gettnr:integer;
  end;
type
  TKlantenLijst=Class(TList)
    private
    public
      //procedure loadfromfile;
  end;

implementation
   constructor TKlant.Create(afnaam,alnaam:string;atel:integer);
   begin
        inherited create;
        ffnaam:=afnaam;
        flnaam:=alnaam;
        tnr:=atel;
   end;
   procedure TKlant.opslaan;
   var bestand:text;
   begin
        assignfile(bestand,bestandsnaam);
        append(bestand);
        writeln(bestand,'<klant>');
        writeln(bestand,ffnaam);
        writeln(bestand,flnaam);
        writeln(bestand,tnr);
        writeln(bestand,'</klant>');
        closefile(bestand);
   end;
   function TKlant.getfnaam:string;
   begin
        result:=ffnaam;
   end;
   function TKlant.getlnaam:string;
   begin
        result:=flnaam;
   end;
   function TKlant.gettnr:integer;
   begin
        result:=tnr;
   end;

   // Type TKlantenLijst



end.

