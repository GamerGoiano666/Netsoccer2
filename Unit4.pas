unit Unit4;
                 
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, sButton, sSkinProvider;

type
  TForm4 = class(TForm)
    sButton1: TsButton;
    sButton2: TsButton;
    sButton3: TsButton;
    sLabelFX1: TsLabelFX;
    sLabelFX2: TsLabelFX;
    sSkinProvider1: TsSkinProvider;
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses proseduurit;

{$R *.dfm}

procedure TForm4.sButton1Click(Sender: TObject);
begin
  muuta_admas_status(sLabelFX2.Caption,2);
end;

procedure TForm4.sButton2Click(Sender: TObject);
begin
  muuta_admas_status(sLabelFX2.Caption,1);
end;

procedure TForm4.sButton3Click(Sender: TObject);
begin
  muuta_admas_status(sLabelFX2.Caption,0);
end;

end.
