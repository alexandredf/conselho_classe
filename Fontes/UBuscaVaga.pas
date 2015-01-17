unit UBuscaVaga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, RzButton, RzRadGrp, RzPanel, ExtCtrls,
  ComCtrls, Grids, DBGrids, RzDBGrid, RzBckgnd, FMTBcd, DB, DBClient,
  Provider, SqlExpr, StdCtrls, RpCon, RpConDS, RpBase, RpSystem, RpDefine,
  RpRave;

type
  TFrmBuscaVaga = class(TFrm_ModeloBusca)
    SqlVaga: TSQLDataSet;
    SqlVagaIDVAGA: TIntegerField;
    SqlVagaIDEMP: TIntegerField;
    SqlVagaIDRELTURALU: TIntegerField;
    SqlVagaDESCRI_VAGA: TStringField;
    SqlVagaBOLSA_VAGA: TFMTBCDField;
    SqlVagaNUMAPOLICE_VAGA: TStringField;
    SqlVagaTEMPO_VAGA: TIntegerField;
    SqlVagaREQUISITO_VAGA: TStringField;
    SqlVagaDTCAD_VAGA: TDateField;
    SqlVagaHORACAD_VAGA: TTimeField;
    SqlVagaDTPRENCH_VAGA: TDateField;
    SqlVagaHORAPRENCH_VAGA: TTimeField;
    SqlVagaDTINICIO_VAGA: TDateField;
    SqlVagaSTATUS_VAGA: TStringField;
    SqlVagaNOMEFAN_EMP: TStringField;
    SqlVagaSTATUS_EMP: TStringField;
    SqlVagaNOME_ALU: TStringField;
    SqlVagaNUM_TUR: TStringField;
    Provider: TDataSetProvider;
    CdsVaga: TClientDataSet;
    CdsVagaIDVAGA: TIntegerField;
    CdsVagaIDEMP: TIntegerField;
    CdsVagaIDRELTURALU: TIntegerField;
    CdsVagaDESCRI_VAGA: TStringField;
    CdsVagaBOLSA_VAGA: TFMTBCDField;
    CdsVagaNUMAPOLICE_VAGA: TStringField;
    CdsVagaTEMPO_VAGA: TIntegerField;
    CdsVagaREQUISITO_VAGA: TStringField;
    CdsVagaDTCAD_VAGA: TDateField;
    CdsVagaHORACAD_VAGA: TTimeField;
    CdsVagaDTPRENCH_VAGA: TDateField;
    CdsVagaHORAPRENCH_VAGA: TTimeField;
    CdsVagaDTINICIO_VAGA: TDateField;
    CdsVagaSTATUS_VAGA: TStringField;
    CdsVagaNOMEFAN_EMP: TStringField;
    CdsVagaSTATUS_EMP: TStringField;
    CdsVagaNOME_ALU: TStringField;
    CdsVagaNUM_TUR: TStringField;
    DsVaga: TDataSource;
    CodIni: TLabeledEdit;
    CodFin: TLabeledEdit;
    Descricao: TLabeledEdit;
    BtnImprimir: TRzBitBtn;
    RaveProj: TRvProject;
    RvSystem1: TRvSystem;
    RaveConectar: TRvDataSetConnection;
    procedure GrupoFiltroChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure FormCreate(Sender: TObject);
    procedure BtBuscarClick(Sender: TObject);
    procedure GridDadosDblClick(Sender: TObject);
    procedure BTsairClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBuscaVaga: TFrmBuscaVaga;
  SqlOriginal, SqlFiltro, SqlOrdem : String;

implementation

uses UCadVaga;

{$R *.dfm}

procedure TFrmBuscaVaga.GrupoFiltroChange(Sender: TObject; Index: Integer;
  NewState: TCheckBoxState);
begin
  If (GrupoFiltro.ItemChecked[0] =  True) then
    Begin
      CodIni.Enabled := True;
      CodFin.Enabled := True;
    End
  Else
    Begin
      CodIni.Clear;
      CodFin.Clear;
      CodIni.Enabled := False;
      CodFin.Enabled := False;
    End;

  If (GrupoFiltro.ItemChecked[1] =  True) then
    Begin
      Descricao.Enabled := True;
    End
  Else
    Begin
      Descricao.Enabled  := False;
    End;
end;

procedure TFrmBuscaVaga.FormCreate(Sender: TObject);
begin
  inherited;
  SqlOriginal := SqlVaga.CommandText;
end;

procedure TFrmBuscaVaga.BtBuscarClick(Sender: TObject);
begin
  SqlFiltro := ' WHERE 1 = 1';

  If (GrupoFiltro.ItemChecked[0] = True) then
    Begin
         SQLFILTRO :=  SQLFILTRO + ' AND VAGAEST.IDVAGA >= ' + QuotedStr(CodIni.Text) +  ' AND VAGAEST.IDVAGA <= ' + QuotedStr(CodFin.Text);
    End;
  If (GrupoFiltro.ItemChecked[1] = True) then
    Begin
        SQLFILTRO :=  SQLFILTRO + ' AND VAGAEST.DESCRI_VAGA  LIKE ' + QuotedStr('%' + Descricao.Text + '%') ;
    End;

  If (GrupoOrdem.ItemIndex = 0) then
    Begin
      SqlOrdem := ' ORDER BY VAGAEST.IDVAGA';
    End
  Else If (GrupoOrdem.ItemIndex = 1) then
    Begin
      SqlOrdem := ' ORDER BY VAGAEST.DESCRI_VAGA';
    End;

  If (GrupoSituacao.ItemIndex = 0) then
    Begin
       SqlFiltro := SqlFiltro + ' AND VAGAEST.STATUS_VAGA = ' + QuotedStr('A');
    End
  Else If (GrupoSituacao.ItemIndex = 1) then
    Begin
       SqlFiltro := SqlFiltro + ' AND VAGAEST.STATUS_VAGA = ' + QuotedStr('C');
    End;

    CdsVaga.Close;
    SqlVaga.Close;

    SqlVaga.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SqlVaga.Open;
    CdsVaga.Open;
end;

procedure TFrmBuscaVaga.GridDadosDblClick(Sender: TObject);
begin
  inherited;
  If (QuemChamou = 'Vaga') then
    Begin
       FrmCadVaga.SqlVaga.ParamByName('PARVAGA').AsInteger := CdsVagaIDVAGA.AsInteger;
       Close;
    End;
end;

procedure TFrmBuscaVaga.BTsairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrmBuscaVaga.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  RaveProj.Close;
  RaveProj.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\Relat_Vaga_Simples.rav';
  RaveProj.Open;

  RaveProj.Execute;
end;

end.
