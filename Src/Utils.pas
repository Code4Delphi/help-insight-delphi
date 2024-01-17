unit Utils;

interface

uses
  System.SysUtils;

type
  /// <summary> Usando Help Insight para classes. Todas as tags XMLs podem ser usadas aqui tamb�m. </summary>
  TUtils = class
  private
  public
    /// <summary> Summary/resumo: Realiza e retorna a multiplica��o de dois valor fornecidos como par�metros.</summary>
    /// <param name="AValor1"> Informar o primeiro valor <see cref="Double"/> a ser multiplicado. </param>
    /// <param name="AValor2"> Informar o segundo valor <see cref="Double"/> a ser multiplicado. </param>
    /// <returns> O retorno ser� a multiplica��o do primeiro com o segundo par�metro</returns>
    /// <permission cref="PermissionType"> Este m�todo � permitido a todos que poss�em acesso a est� unit. </permission>
    /// <remarks>
    ///   Observa��es: Forma de usar o c�digo:
    ///   <code>
    ///     <para> LResult := THelpInsightUtils.MultiplicarValores(10 + 20.5); </para>
    ///     <para> ShowMessage(LResult.ToString); </para>
    ///   </code>
    /// </remarks>
    /// <comments> <para> Caso seja necess�rio, pode ser adicionado coment�rios. </para>
    ///   <para> Outras tags aceitas: </para>
    ///   <para> p ou P: Paragrafo </para>
    ///   <para> b ou B: <b> Negrito </b> </para>
    ///   <para> i ou I: <i> It�lico </i> </para>
    ///   <para> ------------------------------------------- </para>
    ///   <para> Texto em fonte normal: </para>
    ///   <para> III </para>
    ///   <para> WWW </para>
    ///   <para> <c>Texto em fonte de largura fixa:</c> </para>
    ///   <para> <c>III</c> </para>
    ///   <para> <c>WWW</c> </para>
    /// </comments>
    /// <comments> <para> Este � a coment�rio 2 e ser� agrupada ao coment�rio 1. </para></comments>
    /// <exception cref="ArgumentNullException">
    ///   Se os par�metros <c>AValor1</c> ou <c>AValor2</c> for um n�mero negativo, uma exce��o ser� gerada.
    /// </exception>
    class function MultiplicarValores(const AValor1, AValor2: Double): Double;
  end;

implementation

class function TUtils.MultiplicarValores(const AValor1, AValor2: Double): Double;
begin
  if(AValor1 < 0)or(AValor2 < 0)then
    raise Exception.Create('Informe um valor v�lido para os 2 par�metros');

  Result := AValor1 + AValor2;
end;

end.
