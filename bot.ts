const conf = require('./bot.json')
const fs = require('fs')
const cron = require('node-cron');

// const adtFileActive = "./arquivos_ok/S208550202005081225IDENT_active.txt"
const adtFileActive:String = "MSH|^~\&|HIS AGFA|Agfa HealthCare|||20200508132518||ORM^O01|27|P|2.3|"
+ "\n" +
"PID|1||005428506||CAMPOS DOS SANTOS^DULCINEA|VALERIANA SILVA CAMPOS|19440924|F|||RUA MONCLARO MENA BARRETO^50^VILA VALQUEIRE^RIO DE JANEIRO^BRASIL^21330410||2124531230|21994415538||V|CATO^CATOLICO||||||RJ^RIO DE JANEIRO||||||||||||||||" +
"\n" +
"PV1|1|I|274SI^2803^A^307607^active^1302^HOSPITAL ESPERANCA S.A (BARRA D'OR)|L|||000124^ROGERIO VILLELA LEMOS|000124^ROGERIO VILLELA LEMOS|||||||||||0116491|||||||||||||||||||||||||20150710142700||||||||" + 
"\n"+
"ORC|NW|0002600786|||IP||||20200508132200|||000124^545376^ROGERIO VILLELA LEMOS|||||||||FRAMOS.AGFA|||||||||"
"\n"+
"OBR|1|0002600786||052782^RXPERNA^^0002600786^ESQUERDA - TESTE||20200508132200||20200508132200|||||teste|||||||||||CR|||||||||||||||||||||||||"


const adtFileInaActive:String = "MSH|^~\&|HIS AGFA|Agfa HealthCare|||20200508132518||ORM^O01|27|P|2.3|"
+ "\n" +
"PID|1||005428506||CAMPOS DOS SANTOS^DULCINEA|VALERIANA SILVA CAMPOS|19440924|F|||RUA MONCLARO MENA BARRETO^50^VILA VALQUEIRE^RIO DE JANEIRO^BRASIL^21330410||2124531230|21994415538||V|CATO^CATOLICO||||||RJ^RIO DE JANEIRO||||||||||||||||" +
"\n" +
"PV1|1|I|274SI^2803^A^307607^inactive^1302^HOSPITAL ESPERANCA S.A (BARRA D'OR)|L|||000124^ROGERIO VILLELA LEMOS|000124^ROGERIO VILLELA LEMOS|||||||||||0116491|||||||||||||||||||||||||20150710142700||||||||" + 
"\n"+
"ORC|NW|0002600786|||IP||||20200508132200|||000124^545376^ROGERIO VILLELA LEMOS|||||||||FRAMOS.AGFA|||||||||"
"\n"+
"OBR|1|0002600786||052782^RXPERNA^^0002600786^ESQUERDA - TESTE||20200508132200||20200508132200|||||teste|||||||||||CR|||||||||||||||||||||||||"

// min = Math.ceil(min);
//   max = Math.floor(max);
//   return Math.floor(Math.random() * (max - min)) + min;


// cron.schedule('* * * * *', () => {

    // PEGAR AS UNIDADES E PARA CADA UMA PROCESSAR STATUS PARA DE 0 a 100 leitos

    console.log('running a task every minute');
    conf.unidades.forEach((element: any) => {
        for (let index = 0; index < conf.quantidadeLeitos; index++) {
            const leitoDisponivel = Math.random() > 0.5;
            const arquivoLeito : String = leitoDisponivel ? adtFileActive : adtFileInaActive;
            const nomeLeitoReplace = `${conf.nomeLeito}-${element.id}-${index}`
            const arquivoFinal = arquivoLeito.replace('274SI', nomeLeitoReplace);
            console.log(`Arquivo escrito ${element.path}/${element.id}-${index}`)
            fs.writeFile(`${element.path}/para_rodar/${element.id}-${index}.txt`, arquivoFinal, (error:any)=>{})
        }
    });

// });