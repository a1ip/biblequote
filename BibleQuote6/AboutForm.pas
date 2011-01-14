unit AboutForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntForms, ExtCtrls, StdCtrls, TntStdCtrls, PngImage1, jpeg;

type
  TfrmAbout = class(TTntForm)
    Shape1: TShape;
    lbBQName: TTntLabel;
    Image1: TImage;
    memDevs: TTntMemo;
    btnOK: TTntButton;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure TntLabel1Click(Sender: TObject);
    procedure Panel2MouseEnter(Sender: TObject);
    procedure Panel2MouseLeave(Sender: TObject);

    procedure TntFormShow(Sender: TObject);

  private
  cnt:integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;

implementation
  uses main;
{$R *.DFM}

procedure TfrmAbout.Panel2MouseEnter(Sender: TObject);
begin
Screen.Cursor:=crHandPoint;

end;

procedure TfrmAbout.Panel2MouseLeave(Sender: TObject);
begin
Screen.Cursor:=crDefault;
end;





procedure TfrmAbout.TntFormShow(Sender: TObject);
begin
if Pos('Russian',LastLanguageFile)<>0 then begin
lbBQName.Caption:='������ �� ������ 6';
end
else begin
lbBQName.Caption:='BibleQuote 6';
end;
end;

procedure TfrmAbout.TntLabel1Click(Sender: TObject);
begin
if (sender as TComponent).Tag=1 then
MainForm.JCRU_HomeClick(MainForm.miDownloadLatest)
else
MainForm.JCRU_HomeClick(MainForm.miTechnoForum);

end;

end.
