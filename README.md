# winjdkbatch

"Batch Script" para auxilar no chaveamento de várias JDK instaladas em ambientes Windows.

Para o funcionamento correto, consideramos que exista a variável de ambiente JAVA_HOME e que PATH contenha a instrução: %JAVA_HOME%\bin

#### Considerações sobre as variaveis internas do script: (linkJDK e userJavaPath)

- O script usa o comando "mklink /d" do Windows para criar um link simbólico (Esse link é representado pela variavel linkJDK). A variavel de ambiente JAVA_HOME deve apontar para o caminho de linkJDK

- userJavaPath: Deve apontar para o local onde se encontra intaladas todas as JDKs (Consideramos que todas JDKs estão em um mesmo path comum)
