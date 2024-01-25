unit View.Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,
  ShellAPI,
  Types,
  Utils;

type
  /// <summary> Para realizar o cálculo, use tcSim; caso contrário, use tcNao. </summary>
  TCalcular = (tcSim, tcNao);

  TViewMain = class(TForm)
    pnBackTop: TPanel;
    btnUsandoEmMetodos: TButton;
    btnUsandoEmEnums: TButton;
    Panel6: TPanel;
    pnBackLogoELinks: TPanel;
    GroupBox1: TGroupBox;
    pnBackLinks01: TPanel;
    Label2: TLabel;
    lbRepositorio: TLabel;
    Label4: TLabel;
    pnBackLinks02: TPanel;
    lbYoutube: TLabel;
    lbTelegram: TLabel;
    lbGitHub: TLabel;
    lbLinkedIn: TLabel;
    pnBackLogo: TPanel;
    Image1: TImage;
    btnUsandoEmVariaveis: TButton;
    Button1: TButton;
    Panel9: TPanel;
    procedure btnUsandoEmMetodosClick(Sender: TObject);
    procedure btnUsandoEmEnumsClick(Sender: TObject);
    procedure lbRepositorioClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnUsandoEmVariaveisClick(Sender: TObject);
  private
    FTest: string;
  public

  end;

var
  ViewMain: TViewMain;

implementation

{$R *.dfm}

procedure TViewMain.lbRepositorioClick(Sender: TObject);
begin
  ShellExecute(0, nil, PChar(TLabel(Sender).Hint), '', '', SW_ShowNormal);
end;

procedure TViewMain.btnUsandoEmMetodosClick(Sender: TObject);
var
  LResult: Double;
begin
  //PARA TESTAR: REPOUSE O MOUSE SOBRE O NOME DO METODO: MultiplicarValores
  LResult := TUtils.MultiplicarValores(10, 20.5);
  ShowMessage(LResult.ToString);
end;

procedure TViewMain.btnUsandoEmEnumsClick(Sender: TObject);
var
  //PARA TESTAR: REPOUSE O MOUSE SOBRE O TYPE: TCalcular
  LCalcular: TCalcular;
  LMsg: string;
begin
  LCalcular := tcSim;

  LMsg := 'Não será calculado';
  if(LCalcular = tcSim)then
    LMsg := 'Será calculado';

  ShowMessage(LMsg);
end;

procedure TViewMain.btnUsandoEmVariaveisClick(Sender: TObject);
var
  /// <summary> 'Isso não sera exibido' </summary>
  LTest: string;
begin
  LTest := 'Recurso funciona apenas para variáveis de instância (declaradas no escopo private ou public das classes)';
  ShowMessage(LTest);
end;

procedure TViewMain.Button1Click(Sender: TObject);
begin
  FTest := 'Testando';
  ShowMessage(FTest);
end;

//LINKS UTEIS
//https://docwiki.embarcadero.com/RADStudio/Athens/en/Help_Insight
//https://docwiki.embarcadero.com/RADStudio/Athens/en/XML_Documentation_Comments

//ALTERAR O LAYOUT DO POPUP
//ARQUIVO C:\Program Files (x86)\Embarcadero\Studio\20.0\ObjRepos\en\HelpInsight.xsl
//ARQUIVO C:\Program Files (x86)\Embarcadero\Studio\20.0\ObjRepos\en\HelpInsight.css
//ARQUIVO C:\Program Files (x86)\Embarcadero\Studio\20.0\ObjRepos\en\HelpInsight_Dark.css

end.
