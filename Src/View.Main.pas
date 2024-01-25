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
  /// <summary> Usando em enums, use tcSim; caso contr�rio, use tcNao. </summary>
  TCalcular = (tcSim, tcNao);

  /// <summary> Usando Help Insight para classes. </summary>
  /// <C4DTag> Texto da minha tag teste </C4DTag>
  /// <C4DCode> ShowMessage(Self.Gerar); </C4DCode>
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
    btnUsandoEmVariaveisLocais: TButton;
    btnUsandoEmVariaveisDeInstancia: TButton;
    btnConstantes: TButton;
    procedure btnUsandoEmMetodosClick(Sender: TObject);
    procedure btnUsandoEmEnumsClick(Sender: TObject);
    procedure lbRepositorioClick(Sender: TObject);
    procedure btnUsandoEmVariaveisDeInstanciaClick(Sender: TObject);
    procedure btnUsandoEmVariaveisLocaisClick(Sender: TObject);
    procedure btnConstantesClick(Sender: TObject);
  private
    /// <summary> Usando Help Insight para vari�veis de inst�ncia </summary>
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

  LMsg := 'N�o ser� calculado';
  if(LCalcular = tcSim)then
    LMsg := 'Ser� calculado';

  ShowMessage(LMsg);
end;

procedure TViewMain.btnUsandoEmVariaveisLocaisClick(Sender: TObject);
var
  /// <summary> Recurso n�o suportado para vari�veis locais </summary>
  LTest: string;
begin
  LTest := 'Recurso funciona apenas para vari�veis de inst�ncia (declaradas no escopo private ou public das classes)';
  ShowMessage(LTest);
end;

procedure TViewMain.btnUsandoEmVariaveisDeInstanciaClick(Sender: TObject);
begin
  //PARA TESTAR: REPOUSE O MOUSE SOBRE FTest
  FTest := 'Funciona normalmente em vari�vel de inst�ncia';
  ShowMessage(FTest);
end;

procedure TViewMain.btnConstantesClick(Sender: TObject);
const
  /// <summary> Recurso suportado em constantes </summary>
  TESTE = 'Constante teste';
begin
  //PARA TESTAR: REPOUSE O MOUSE SOBRE TESTE
  ShowMessage(TESTE);
end;


//LINKS UTEIS
//https://docwiki.embarcadero.com/RADStudio/Athens/en/Help_Insight
//https://docwiki.embarcadero.com/RADStudio/Athens/en/XML_Documentation_Comments

//ALTERAR O LAYOUT DO POPUP
//ARQUIVO C:\Program Files (x86)\Embarcadero\Studio\20.0\ObjRepos\en\HelpInsight.xsl
//ARQUIVO C:\Program Files (x86)\Embarcadero\Studio\20.0\ObjRepos\en\HelpInsight.css
//ARQUIVO C:\Program Files (x86)\Embarcadero\Studio\20.0\ObjRepos\en\HelpInsight_Dark.css

end.
