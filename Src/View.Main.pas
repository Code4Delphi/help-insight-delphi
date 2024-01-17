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
  Types,
  Utils;

type
  TViewMain = class(TForm)
    Panel9: TPanel;
    btnMultiplicar: TButton;
    btnUsandoEmEnums: TButton;
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnUsandoEmEnumsClick(Sender: TObject);
  private

  public

  end;

var
  ViewMain: TViewMain;

implementation

{$R *.dfm}

procedure TViewMain.btnMultiplicarClick(Sender: TObject);
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

//LINKS UTEIS
//https://docwiki.embarcadero.com/RADStudio/Athens/en/Help_Insight
//https://docwiki.embarcadero.com/RADStudio/Athens/en/XML_Documentation_Comments

//ARQUIVO C:\Program Files (x86)\Embarcadero\Studio\20.0\ObjRepos\en\HelpInsight.xsl
//ARQUIVO C:\Program Files (x86)\Embarcadero\Studio\20.0\ObjRepos\en\HelpInsight.css
//ARQUIVO C:\Program Files (x86)\Embarcadero\Studio\20.0\ObjRepos\en\HelpInsight_Dark.css

end.
