<div align="center">
    <img src="https://raw.githubusercontent.com/dotDevGroup/ClothingBuilder/main/images/header.gif"/>
</div>

-Xmx2G
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
