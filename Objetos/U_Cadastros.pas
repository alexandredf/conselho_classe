unit U_Cadastros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzStatus, RzPanel, ExtCtrls, StdCtrls, RzLabel, Mask, RzEdit,
  RzBtnEdt, RzButton, RzTabs, IniFiles, Jpeg;

type
  TFRM_Cadastros = class(TForm)
    PanTitulo: TRzPanel;
    RzStatusBar1: TRzStatusBar;
    RzStatusPane1: TRzStatusPane;
    RzStatusPane2: TRzStatusPane;
    PanBotoes: TRzPanel;
    PanDados: TRzPanel;
    RzStatusPane3: TRzStatusPane;
    BuscaRapida: TRzButtonEdit;
    BtNovo: TRzBitBtn;
    BtCancelar: TRzBitBtn;
    BtGravar: TRzBitBtn;
    BtBuscar: TRzBitBtn;
    BtStatus: TRzBitBtn;
    BtSair: TRzBitBtn;
    Paginas: TRzPageControl;
    TabSheet1: TRzTabSheet;
    procedure BuscaRapidaAltBtnClick(Sender: TObject);
    procedure BuscaRapidaButtonClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Procedure AtivaInclui();
    Procedure DesativaInclui();
    procedure BtSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    QuemChamou: String;
  end;

var
  FRM_Cadastros: TFRM_Cadastros;

implementation

{$R *.dfm}
Procedure tfrm_cadastros.AtivaInclui();
begin
  BtNovo.Enabled:=false;
  BtCancelar.Enabled:=true;
  BtGravar.Enabled:=true;
  BtSair.Enabled:=false;
  BtStatus.Enabled:=false;
  BtBuscar.Enabled:=false;
  PanDados.Enabled:=true;
  BuscaRapida.Enabled:=false;
end;

Procedure tfrm_cadastros.DesativaInclui();
begin
  BtNovo.Enabled:=true;
  BtCancelar.Enabled:=false;
  BtGravar.Enabled:=false;
  BtSair.Enabled:=true;
  BtStatus.Enabled:=true;
  BtBuscar.Enabled:=true;
  PanDados.Enabled:=false;
  BuscaRapida.Enabled:=true;
end;

procedure TFRM_Cadastros.BuscaRapidaAltBtnClick(Sender: TObject);
begin
 BtNovo.Click;
end;

procedure TFRM_Cadastros.BuscaRapidaButtonClick(Sender: TObject);
begin
 BtBuscar.Click;
end;

procedure TFRM_Cadastros.BtNovoClick(Sender: TObject);
begin
   AtivaInclui;
end;

procedure TFRM_Cadastros.BtCancelarClick(Sender: TObject);
begin
   DesativaInclui;
end;

procedure TFRM_Cadastros.BtGravarClick(Sender: TObject);
begin
  DesativaInclui;
end;

procedure TFRM_Cadastros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if(BtSair.Enabled=false)then
  begin
    Action:=caNone;
    ShowMessage('Imposs�vel Sair! Dados em edi��o!');
  end;
end;

procedure TFRM_Cadastros.BtSairClick(Sender: TObject);
begin
 close;
end;

procedure TFRM_Cadastros.FormCreate(Sender: TObject);
var
  ArquivoIni : TIniFile;
  sistema : String;
  versao : Integer;
  caminho : String;
  nome_empresa: string; 
  cor_titulo, cor_pnl_superior, cor_pnl_inferior, cor_pnl_central, fonte_titulo: String;

begin
  try
    caminho      := ExtractFilePath(Application.ExeName) + 'CONFIGURACAO.INI';

    ArquivoIni   := TIniFile.Create(caminho);

    versao           := ArquivoIni.ReadInteger('CONFIGURACOES','VERSAO',0000);
    sistema          := ArquivoIni.ReadString('CONFIGURACOES','SISTEMA','Software pirata!');
    nome_empresa     := ArquivoIni.ReadString('CONFIGURACOES','NOME_EMPRESA','Empresa n�o especificada');
    cor_pnl_superior := ArquivoIni.ReadString('CONFIG_CADASTRO','COR_PNL_TITULO','clMoneyGreen');
    cor_pnl_central  := ArquivoIni.ReadString('CONFIG_CADASTRO','COR_PNL_DADO','clMoneyGreen');
    cor_pnl_inferior := ArquivoIni.ReadString('CONFIG_CADASTRO','COR_PNL_BOTAO','clMoneyGreen');
    cor_titulo       := ArquivoIni.ReadString('CONFIG_CADASTRO','COR_FONTE_TITULO','clBlack');
    fonte_titulo     := ArquivoIni.ReadString('CONFIG_CADASTRO','FONTE_TITULO','Arial');

    RzStatusPane1.Caption   := ' Vers�o: ' + IntToStr(versao);
    RzStatusPane3.Caption   := ' Empresa: ' + nome_empresa;
    RzStatusPane2.Caption   := ' Software: ' + sistema;
    Caption   := ' Empresa: ' + nome_empresa;

    TRY
      Paginas.BackgroundColor := StringToColor(cor_pnl_central);
      Paginas.Color           := StringToColor(cor_pnl_central);
      PanTitulo.Color         := StringToColor(cor_pnl_superior);
      PanBotoes.color         := StringToColor(cor_pnl_inferior);
      PanTitulo.Font.Color    := StringToColor(cor_titulo);
      PanTitulo.Font.Name     := fonte_titulo;
    EXCEPT
      ShowMessage('Um erro impediu a leitura do Arquivo de Configura��o...'+#10+#13+
      '  Poss�veis Causas:'+#10+#13+'    '+#26+'Algum par�metro, como fonte ou cor dos pain�is;'+#10+#13+
      '    '+#26+'A fonte do t�tulo pode estar errado.'+#10+#13+'  Definidos par�metros padr�o para o Sistema!'+#10+#13+
      '    '+#26+'V� em Configura��es e defina os seus Par�metros para os Cadastros.');
      Paginas.BackgroundColor := clMoneyGreen;
      Paginas.Color           := clMoneyGreen;
      PanTitulo.Color         := clMoneyGreen;
      PanBotoes.color         := clMoneyGreen;
      PanTitulo.Font.Color    := clHighlightText;
      PanTitulo.Font.Name     := 'Arial';
    END;

    ArquivoIni.Free;
  Except
    ShowMessage('Arquivo de configura��o inexistente!');
    Halt;
  end;
end;

end.
