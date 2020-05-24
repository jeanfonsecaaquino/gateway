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

```text
MSH|^~\&|HIS AGFA|Agfa HealthCare|||20200508132518||ORM^O01|27|P|2.3|
PID|1||005428506||CAMPOS DOS SANTOS^DULCINEA|UM NOME DE PACIENTE QUALQUER|19440924|F|||RUA MONCLARO MENA BARRETO^50^VILA VALQUEIRE^RIO DE JANEIRO^BRASIL^21330410||2124531230|21994415538||V|CATO^CATOLICO||||||RJ^RIO DE JANEIRO||||||||||||||||
PV1|1|I|274SI^2803^A^307607^active^1302^HOSPITAL ESPERANCA S.A (BARRA D'OR)|L|||000124^ROGERIO VILLELA LEMOS|000124^ROGERIO VILLELA LEMOS|||||||||||0116491|||||||||||||||||||||||||20150710142700||||||||
ORC|NW|0002600786|||IP||||20200508132200|||000124^545376^PACIENTE DE DADOS TESTE|||||||||FRAMOS.AGFA|||||||||
OBR|1|0002600786||052782^RXPERNA^^0002600786^ESQUERDA - TESTE||20200508132200||20200508132200|||||teste|||||||||||CR|||||||||||||||||||||||||```


## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install foobar.

```bash
pip install foobar
```

## Usage

```python
import foobar

foobar.pluralize('word') # returns 'words'
foobar.pluralize('goose') # returns 'geese'
foobar.singularize('phenomena') # returns 'phenomenon'
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)