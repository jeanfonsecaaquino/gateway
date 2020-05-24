# **Gateway**

Este projeto tem como finalidade extrair os dados de status dos leitos de unidades hospitalares e sincronizar com a API responsável por gerir o mapeamento de disponibilidade.

## HL7

Foi utilizado o padrão clínico internacional [**HL7**](https://www.hl7.org/) para conexão entre os sistemas das unidades hospitalares e o nosso barramento de APIS. Este padrão é adotado pelos sistemas de ERP clínicos (TASY, MV, WPD, etc.) da área particular e pública.

Segundo esta especificação as informações sobre o estado atual do paciente na unidade é descrita como [**PV1-3 Assigned Patient Location**](https://hl7-definition.caristix.com/v2/HL7v2.3/Fields/PV1.3)

| CODIGO DE POSICAO | Descricao 
|-------------------|------------------
| PV1.3.1           |  Point Of Care  
| PV1.3.2           |  Room 
| PV1.3.3           |  Bed
| PV1.3.4           |  Facility 
| PV1.3.5           |  Location Status 
| PV1.3.6           |  Person Location Type 
| PV1.3.7           |  Building
| PV1.3.8           |  Floor 
| PV1.3.9           |  Location Type 

Essas informações definem a posição de informações em um arquivo de padrão HL7 como o abaixo:


Munido destas informações este extrator observa um diretório específico e absorve o status do leito em tempo real, informando sempre que um leito for disponibilizado, ou ocupado.

## Arquitetura da solução

![alt text](/assets/topologia.jpeg?raw=true)
````yml
version: '2'
services:
  app:
    image: gateway
    volumes:
      - ${CAMINHO_LOCAL_DA_MAQUINA}:/usr/src/gateway
    environment:
      - PATH_READER=/usr/src/gateway/{$SUB_BASTA_DO_QUE_SERA_OBSERVADO}
      - PATH_OK=/usr/src/gateway/{$SUB_BASTA_DOS_ARQUIVOS_PROCESSADOS}
      - PATH_ERROR=/usr/src/gateway/{$SUB_BASTA_DOS_ARQUIVOS_COM_ERRO}
      - ID_UNIDADE={$CODIGO_DA_UNIDADE_NA_API}
      - END_POINT={$END_POINT}
    mem_limit: 512m
````

 ### Exemplo:

Diretórios no máqina:

![alt text](/assets/caminhos.jpeg?raw=true)

Configuração relativa

````yml
version: '2'
services:
  app:
    image: gateway
    volumes:
      - /Users/jeanaquino/Projects/adt:/usr/src/gateWay
    environment:
      - PATH_READER=/usr/src/gateWay/pra_rodar
      - PATH_OK=/usr/src/gateWay/arquivos_ok
      - PATH_ERROR=/usr/src/gateWay/arquivos_error
      - ID_UNIDADE=1
      - END_POINT=http://10.36.143.177:3111/position
    mem_limit: 512m
````