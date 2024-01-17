unit Utils;

interface

uses
  System.SysUtils;

type
  /// <summary> Usando Help Insight para classes. Todas as tags XMLs podem ser usadas aqui também. </summary>
  TUtils = class
  private
  public
    /// <summary> Summary/resumo: Realiza e retorna a multiplicação de dois valor fornecidos como parâmetros.</summary>
    /// <param name="AValor1"> Informar o primeiro valor <see cref="Double"/> a ser multiplicado. </param>
    /// <param name="AValor2"> Informar o segundo valor <see cref="Double"/> a ser multiplicado. </param>
    /// <returns> O retorno será a multiplicação do primeiro com o segundo parâmetro</returns>
    /// <permission cref="PermissionType"> Este método é permitido a todos que possúem acesso a está unit. </permission>
    /// <remarks>
    ///   Observações: Forma de usar o código:
    ///   <code>
    ///     <para> LResult := THelpInsightUtils.MultiplicarValores(10 + 20.5); </para>
    ///     <para> ShowMessage(LResult.ToString); </para>
    ///   </code>
    /// </remarks>
    /// <comments> <para> Caso seja necessário, pode ser adicionado comentários. </para>
    ///   <para> Outras tags aceitas: </para>
    ///   <para> p ou P: Paragrafo </para>
    ///   <para> b ou B: <b> Negrito </b> </para>
    ///   <para> i ou I: <i> Itálico </i> </para>
    ///   <para> ------------------------------------------- </para>
    ///   <para> Texto em fonte normal: </para>
    ///   <para> III </para>
    ///   <para> WWW </para>
    ///   <para> <c>Texto em fonte de largura fixa:</c> </para>
    ///   <para> <c>III</c> </para>
    ///   <para> <c>WWW</c> </para>
    /// </comments>
    /// <comments> <para> Este é a comentário 2 e será agrupada ao comentário 1. </para></comments>
    /// <exception cref="ArgumentNullException">
    ///   Se os parâmetros <c>AValor1</c> ou <c>AValor2</c> for um número negativo, uma exceção será gerada.
    /// </exception>
    class function MultiplicarValores(const AValor1, AValor2: Double): Double;
  end;

implementation

class function TUtils.MultiplicarValores(const AValor1, AValor2: Double): Double;
begin
  if(AValor1 < 0)or(AValor2 < 0)then
    raise Exception.Create('Informe um valor válido para os 2 parâmetros');

  Result := AValor1 + AValor2;
end;

end.
