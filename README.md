# winjdkbatch

"Batch Script" para auxilar no chaveamento de várias JDK instaladas em ambientes Windows.

Para o funcionamento correto, consideramos que exista a variável de ambiente JAVA_HOME e que PATH contenha a instrução: %JAVA_HOME%\bin

#### Considerações sobre as variaveis internas do script: (linkJDK e userJavaPath)

- O script usa o comando "mklink /d" do Windows para criar um link simbólico (Esse link é representado pela variavel linkJDK). A variavel de ambiente JAVA_HOME deve apontar para o caminho de linkJDK

- userJavaPath: Deve apontar para o local onde se encontra intaladas todas as JDKs (Consideramos que todas JDKs estão em um mesmo path comum)

#### Final

Adicione no PATH do sistema o arquivo do script, de modo que vc possa executar o mesmo em qualquer parte do sistema

```shell
C:\> setjdk.bat

1. JDK 8
2. JDK 11

0. Sair

Selecione a opcao desejada: 2


Link simbólico criado para "linkJDK"  <<===>> "userPath"
-----------------------------------------------------
------- Java 11 ativado -----------------------
-----------------------------------------------------
openjdk version "11.0.8" 2020-07-14
OpenJDK Runtime Environment AdoptOpenJDK (build 11.0.8+10)
OpenJDK 64-Bit Server VM AdoptOpenJDK (build 11.0.8+10, mixed mode)

```
