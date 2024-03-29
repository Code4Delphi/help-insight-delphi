### Change the language
[![Static Badge](https://img.shields.io/badge/Portugu%C3%AAs-(ptBR)-green)](https://github.com/Code4Delphi/help-insight-delphi)
[![Static Badge](https://img.shields.io/badge/English-(en)-red)](https://github.com/Code4Delphi/help-insight-delphi/blob/master/README.en.md)

## 📞 Contacts

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

<br/>

## ▶️ Demo video
* [Access demo video](https://www.youtube.com/watch?v=GVwADVQ8qeI&list=PLLHSz4dOnnN1Hx0KtSwqN1Ory9HP7IDJn&index=5)

<br/>

# Help Insight **Delphi**

Help Insight, a feature of the Delphi IDE that displays a popup with a brief description of the identifier (class, procedure, function, variable, constant, enumerated...) at which the mouse cursor is positioned in the Code Editor. It is also possible to invoke Help Insight by pressing the CTRL + SHIFT + H keys.

In this repository/article we will see how to create and customize Help Insight for our applications.

<br/>

## HELP INSIGHT DEFAULTS
By default, the Delphi IDE automatically generates and displays basic identifier data, with the following information:

![Help-Insight-Default-Variables.png](https://github.com/Code4Delphi/help-insight-delphi/blob/master/Images/Help-Insight-Default-Variables.png)

For function or procedure, the parameter(s) and return value are also displayed:

![Help-Insight-Default-Methods.png](https://github.com/Code4Delphi/help-insight-delphi/blob/master/Images/Help-Insight-Default-Methods.png)
 
All of this is generated automatically at editing time, that is, **without requiring the code to be compiled**.

<br/>

## CUSTOMIZING HELP INSIGHT
Although the information automatically generated by the IDE already helps us a lot, Delphi gives us the possibility of customizing the content and even the designer of the displayed popup in a very simple way.

With this we can add more details, and create a kind of "documentation" of our identifiers.
To do this, we must add comments with special formatting to our source code.

These comments must be immediately above the identifier, and must begin with **/// (three slashes)** followed by an XML tag recognized by the Help Insight viewer, as in the following example:
```
/// <summary> Em resumo este método faz ... </summary>
```

![Images/Add-Summary-Simples.png](https://github.com/Code4Delphi/help-insight-delphi/blob/master/Images/Add-Summary-Simples.png)

> Note that the text added in the \<summary> tag is displayed in the Help Insight popup menu

<br/>

## EXAMPLE USING SEVERAL ACCEPTED TAGS:
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

## 📄 XML TAGS THAT CAN BE USED
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
/// <exception cref="ArgumentNullException"> Informações sobre exceções. Ex.: se o parâmetro não for informado... </exception>
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
Reference to a specific type, symbol or identifier:
```
<see cref="string"/>
```

<br/>

## WHERE CAN HELP INSIGHT BE USED?
Help Insight can be used in:

✔️ Classes <br/>
✔️ Procedures <br/>
✔️ Functions <br/>
✔️ Constantes <br/>
✔️ Enumerados <br/>
✔️ Instance variables (declared in the private, protected, public or published scope of the classes) <br/>
❌ Local variables **ARE NOT SUPPORTED** by Help Insight

<br/>

## CHANGING THE POPUP DATA AND LAYOUT
In addition to using the TAGs available and demonstrated in this article, we can also change or add our own XML TAGs, as well as change the Layout of the displayed popup.

To do this, simply edit the files HelpInsight.xsl and HelpInsight.css (HelpInsight_Dark.css for those using the IDE's dark theme) which are located in the ObjRepos subfolder of the RAD Studio installation directory.

For me C:\Program Files (x86)\Embarcadero\Studio\20.0\ObjRepos\ Once inside this directory we must access the language subfolder, in my case "en" for English. For me the full path to access the files are:
```
C:\Program Files (x86)\Embarcadero\Studio\20.0\ObjRepos\en\HelpInsight.xsl
C:\Program Files (x86)\Embarcadero\Studio\20.0\ObjRepos\en\HelpInsight.css
C:\Program Files (x86)\Embarcadero\Studio\20.0\ObjRepos\en\HelpInsight_Dark.css
```

Here's an example of how we can change the structure and layout of the Help Insight popup:
![PopupMenu-Alterado.png](https://github.com/Code4Delphi/help-insight-delphi/blob/master/Images/PopupMenu-Alterado.png)

<br/>

## 🔗USEFUL LINKS
- [Help Insight (docwiki embarcadero)](https://docwiki.embarcadero.com/RADStudio/Athens/en/Help_Insight)
- [XML Documentation Comments (docwiki embarcadero)](https://docwiki.embarcadero.com/RADStudio/Athens/en/XML_Documentation_Comments)

<br/>

> [!IMPORTANT]
> ⭐ Don't forget to leave your **star** to help propagate the repository.

[Back to Top](#help-insight-delphi) 




