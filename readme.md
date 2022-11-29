<div align="center">
    <img src="https://raw.githubusercontent.com/dotDevGroup/ClothingBuilder/main/images/header.gif"/>
</div>

![image](https://img.shields.io/badge/Versão-0.0.0-blue.svg?style=for-the-badge&logo=verizon)
![image](https://img.shields.io/badge/Estado-Fase%20Inicial-yellow.svg?style=for-the-badge&logo=instatus&logoColor=white)

## Suporte Bilíngue
Este repositório foi marcado pela [dotDev](https://github.com/dotDevGroup/) como um repositório bilíngue. Isto implica que ele trabalhará com duas línguas, sendo elas o **Português Brasileiro** e o **Inglês**.

#### English Translation
This repository has been marked by [dotDev](https://github.com/dotDevGroup/) as a bilingual repository. This implies that he will work with two languages, namely **Brazilian Portuguese** and **English**.

## Utilizando a Ferramenta
Existem **duas** formas de se utilizar desta ferramenta. A primeira é fazendo testes, para isso você vai precisar do [IntelliJ IDEA Community Edition](https://www.jetbrains.com/pt-br/idea/download/#section=windows). Dentro do programa, siga estes passos:

1. Vá até ``File``.
2. Clique em ``Settings``.
3. Acesse ``Tools``.  
5. Vá até ``External Tools`` e  
5. Clique no ``+``, inserindo o seguinte:  

``Name: AS3Compile``  
``Description: Compiling and generating SWF modifications.``  
``Program: Java``  
``Arguments:``
```
-Xmx512M
-Dsun.io.useCanonCaches=false
-Duser.language=pt
-Duser.region=BR
-Djava.util.Arrays.useLegacyMergeSort=true
-jar
compiler/flexsdk/4.6.0/lib/mxmlc.jar
+flexlib=compiler/flexsdk/4.6.0/frameworks
-compiler.compress=true
-load-config+=obj/Configuration.xml
-o
build/hair_U_testclothing.swf
```

## Organização de Pastas

## Configurando as Variáveis

## Privacidade e Segurança
