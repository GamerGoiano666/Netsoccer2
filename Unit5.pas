unit Unit5;
                   
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm5 = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure AssignKey(pkohde: byte);
  end;

var
  Form5: TForm5;
  kohde: byte;

implementation

uses Unit3,muuttujat,proseduurit;

{$R *.dfm}

Procedure TForm5.AssignKey(pkohde: byte);
begin
  kohde:=pkohde;
end;

procedure TForm5.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if kohde=1 then Settings.controlDirections[1]:=key;
  if kohde=2 then Settings.controlDirections[2]:=key;
  if kohde=3 then Settings.controlDirections[3]:=key;
  if kohde=4 then Settings.controlDirections[4]:=key;
  if kohde=5 then Settings.controlAction[1]:=key;
  if kohde=6 then Settings.controlAction[2]:=key;
  if kohde=7 then Settings.controlAction[3]:=key;
  if kohde=8 then Settings.controlAction[4]:=key;

  tallennaSettings;
  asetaTekstitControlNappeihin; 

  Close;

end;

end.
 