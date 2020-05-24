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