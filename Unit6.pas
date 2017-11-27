unit Unit6;

interface             

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sEdit, sButton, sLabel;

type
  TForm6 = class(TForm)
    sLabelFX1: TsLabelFX;
    sButton1: TsButton;
    sEdit1: TsEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

  cClose: boolean=false;

implementation

uses Unit2,muuttujat,proseduurit;

{$R *.dfm}

procedure TForm6.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  canclose:=cClose;
end;

procedure TForm6.sButton1Click(Sender: TObject);
type
  TEmailToimitus = record
    mtype: word;
    mtype2: word;
    ra: word;
    email: string[50];
  end;
var
  EmailToimitus: TEmailToimitus;
begin

  if please_wait_arvo=true then exit;
  if form6.sEdit1.text='' then exit;
  if ValidEmail(form6.sEdit1.text)=false then begin
    showmessage('Invalid email');
    exit;
  end;

  please_wait(true);
  EmailToimitus.mtype:=241;
  EmailToimitus.mtype2:=241;
  EmailToimitus.ra:=random(55000)+1;
  EmailToimitus.email:=sedit1.text;
  TCPClient2.WriteBuffer(@EmailToimitus,sizeof(EmailToimitus));

end;

end.
