unit U_StatusCur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_BusCur, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  ExtCtrls, RzButton, RzRadGrp, RzPanel, ComCtrls, Grids, DBGrids,
  RzDBGrid, RzBckgnd, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  TFRM_STATUSCUR = class(TFRM_BUSCUR)
    procedure GridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_STATUSCUR: TFRM_STATUSCUR;

implementation

uses UDM;

{$R *.dfm}

procedure TFRM_STATUSCUR.GridDadosDblClick(Sender: TObject);
begin
  IF (CDScursosBusSTATUS_CUR.AsString = 'C') AND
     (MessageDlg('CONFIRMAR A OPERA��O ?',mtConfirmation,[MBYES,MBNO],0) = MRYES) THEN
     BEGIN
       CDScursosBus.Edit;
       CDScursosBusSTATUS_CUR.AsString := 'A';
       CDScursosBus.Post;
       CDScursosBus.ApplyUpdates(0);
     END
     ELSE IF (CDScursosBusSTATUS_CUR.AsString = 'A') AND
             (MessageDlg('CONFIRMAR A OPERA��O ?',mtConfirmation,[MBYES,MBNO],0) = MRYES) THEN
     BEGIN
       CDScursosBus.Edit;
       CDScursosBusSTATUS_CUR.AsString := 'C';
       CDScursosBus.Post;
       CDScursosBus.ApplyUpdates(0);
     END  ;

end;

end.
