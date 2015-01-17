unit U_StatusAuto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_BusAuto, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  ExtCtrls, RzButton, RzRadGrp, RzPanel, ComCtrls, Grids, DBGrids,
  RzDBGrid, RzBckgnd, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  TFRM_STATUSAUTO = class(TFRM_BUSAUTO)
    procedure GridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_STATUSAUTO: TFRM_STATUSAUTO;

implementation

{$R *.dfm}

procedure TFRM_STATUSAUTO.GridDadosDblClick(Sender: TObject);
begin
  IF (CDSbusautoSTATUS_AUTORIZA.AsString = 'C') AND
     (MessageDlg('CONFIRMAR A OPERA��O ?',mtConfirmation,[MBYES,MBNO],0) = MRYES) THEN
     BEGIN
       CDSbusauto.Edit;
       CDSbusautoSTATUS_AUTORIZA.AsString := 'A';
       CDSbusauto.Post;
       CDSbusauto.ApplyUpdates(0);
     END
     ELSE IF (CDSbusautoSTATUS_AUTORIZA.AsString = 'A') AND
             (MessageDlg('CONFIRMAR A OPERA��O ?',mtConfirmation,[MBYES,MBNO],0) = MRYES) THEN
     BEGIN
       CDSbusauto.Edit;
       CDSbusautoSTATUS_AUTORIZA.AsString := 'C';
       CDSbusauto.Post;
       CDSbusauto.ApplyUpdates(0);
     END  ;
end;

end.
