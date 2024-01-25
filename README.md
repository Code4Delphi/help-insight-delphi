<!-- ### Alterar idioma
[![Static Badge](https://img.shields.io/badge/Portugu%C3%AAs-(ptBR)-green)](https://github.com/Code4Delphi/diretivas-de-compilacao-delphi)
[![Static Badge](https://img.shields.io/badge/English-(en)-red)](https://github.com/Code4Delphi/diretivas-de-compilacao-delphi/blob/master/README.en.md)
-->


# Help Insight **Delphi**

<!--<p align="center">
  <img alt="Code4Delphi" height="100" src="https://github.com/Code4Delphi/diretivas-de-compilacao-delphi/assets/33873267/7191065f-96f6-46ed-aae4-4c4d3027b717">
</p> -->

Help Insight, um recurso do IDE do Delphi que exibe um popup com uma breve descrição sobre o identificador (classe, método, função, variável, ...) na qual o cursor do mouse está posicionado.

Veremos neste repositório/artigo criar e personalizar Help Insight para nassas aplicações.

## 📞 Contatos

<p align="left">
  <a href="https://t.me/Code4Delphi" target="_blank">
    <img src="https://img.shields.io/badge/Telegram:-Join%20Channel-blue?logo=telegram">
  </a>   
   &nbsp;
  <a href="https://www.youtube.com/@code4delphi" target="_blank">
    <img src="https://img.shields.io/badge/YouTube:-Join%20Channel-red?logo=youtube&logoColor=red">
  </a> 
   &nbsp;
  <a href="https://www.linkedin.com/in/cesar-cardoso-dev" target="_blank">
    <img src="https://img.shields.io/badge/LinkedIn:-Follow-blue?logo=LinkedIn&logoColor=blue">
  </a> 
  &nbsp;
  <a href="mailto:contato@code4delphi.com.br" target="_blank">
    <img src="https://img.shields.io/badge/E--mail-contato%40code4delphi.com.br-yellowgreen?logo=maildotru&logoColor=yellowgreen">
  </a>
</p>

## O QUE É HELP INSIGHT?
Help Insight, é um recurso do IDE do Delphi que apresenta um popup com uma breve descrição sobre o identificador (classe, procedure, function, variável, Enumerado, ...) a qual o cursor do mouse está posicionado no Editor de Códigos.
Também é possível invocar o Help Insight precionando as teclas CTRL + SHIFT + H.


<br/>

## HELP INSIGHT PADRÕES
Por padrão, o IDE do Delphi gera automáticamente e exibe dados básicos dos identificadores, com as seguintes informações:

![Help-Insight-Default-Variables.png](https://github.com/Code4Delphi/help-insight-delphi/blob/master/Images/Help-Insight-Default-Variables.png)

Para function ou procedure, é exibido também o(s) parâmetro(s) e o valor de retorno:

![Help-Insight-Default-Methods.png](https://github.com/Code4Delphi/help-insight-delphi/blob/master/Images/Help-Insight-Default-Methods.png)
 
Tudo isso é gerado automáticamente em tempo de edição, ou seja, **sem necessitar que o código seja compilado**.

<br/>

## CUSTOMIZANDO O HELP INSIGHT
Embora as informações geradas automáticamente pelo IDE já nos ajudem bastante, o Delphi nos proporciona a possibilidade de customizar de uma forma muito simples, o conteúdo e até mesmo o designer do popup exibido.

Com isso podemos adicionar mais detalhes, e criar uma espécie de "documentação" de nossos identificadores.
Para isso, devemos adicionar comentários com uma formatação especial ao nosso código fonte. 

Esses comentários devem estar imediatamente acima do identificador, e devem começar com **/// (três barras)** seguido por uma tag XML reconhecida pelo Help Insight viewer, como no exemplo a seguir:
```
/// <summary> Em resumo este método faz ... </summary>
```

![Images/Add-Summary-Simples.png](https://github.com/Code4Delphi/help-insight-delphi/blob/master/Images/Add-Summary-Simples.png)

> Note que o texto adicionado na tag \<summary> é exibido no popup menu do Help Insight

<br/>

## Exemplo utilizando diversas TAGs aceitas:
```
    /// <summary> Adiciona um resumo ... </summary>
    /// <param name="AValor1"> Primeiro parâmetro do tipo <see cref="Double"/> para ... </param>
    /// <param name="AValor2"> Segundo parâmetro do tipo <see cref="Double"/> para ... </param>
    /// <returns> O retorno será ... </returns>
    /// <permission cref="PermissionType"> Este método é permitido a ... </permission>
    /// <remarks>
    ///   Observações: Forma de usar o código:
    ///   <code>
    ///     <para> LResult := THelpInsightUtils.MultiplicarValores(10 + 20.5); </para>
    ///     <para> ShowMessage(LResult.ToString); </para>
    ///   </code>
    /// </remarks>
    /// <comments> <para> Caso seja necessário, pode ser adicionado comentários. </para>
    ///   <para> Outras tags aceitas: </para>
    ///   <para> p ou P: parágrafo </para>
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
```

<br/>

## 📄 TAGS XMLS QUE PODEM SER UTILIZADAS
```
/// <summary> Adicinar um resumo </summary>
```
```
/// <param name="nome-do-parametro"> Informar os parâmetros do método <see cref="Double"/>. </param>
```
```
/// <returns> Informar dados do retorno </returns>
```
```
/// <permission cref="PermissionType"> Dados sobre permissões ... </permission>
```
```
/// <remarks> Adicionar observações ... </remarks>
```
```
/// <code> Adicionar exemplos de códigos fontes de como usar </code>
```
```
/// <comments> Adicionar comentários sobre ... </comments>
```
```
/// <exception cref="ArgumentNullException"> Informar informações sobre exceções. Exemplo: se o parâmetro não for informado ... </exception>
```
```
<para> Adiciona um parágrafo </para>
```
```
<p> Adiciona um parágrafo </p>
```
```
<b> Texto em negrito </b>
```
```
<i> Texto em itálico </i>
```
```
<c> Texto com fonte de largura fixa (Courier New) </c>
```
* Referência a um tipo, símbolo ou identificador específico:
```
<see cref="string"/>
```






