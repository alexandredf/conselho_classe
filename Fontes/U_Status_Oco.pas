unit U_Status_Oco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_BusOco, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  ExtCtrls, RzButton, RzRadGrp, RzPanel, ComCtrls, Grids, DBGrids,
  RzDBGrid, RzBckgnd, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  TFRM_STATUSOCO = class(TFRM_BUSOCO)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_STATUSOCO: TFRM_STATUSOCO;

implementation

{$R *.dfm}

end.
