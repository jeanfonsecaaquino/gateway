const chokidar = require('chokidar');
const pipe = require('pipe-functions');
import fetch from 'cross-fetch';

import { ReadFile } from './readFile/read-file';
const pathSpace: String = process.env.PATH_SPACE ? String(process.env.PATH_SPACE) : String('/');

// const idUnidade: Number = 1;
// const pathReader: String = '/Users/jeanaquino/Projects/gateway/arquivos';
// const pathOk: String = '/Users/jeanaquino/Projects/gateway/arquivos_ok';
// const pathError: String = '/Users/jeanaquino/Projects/gateway/arquivos_error';
// const endpoint = 'http://10.36.143.177:3111/position'

const idUnidade: Number = Number(process.env.ID_UNIDADE);
const pathReader: String = String(process.env.PATH_READER);
const pathOk: String = String(process.env.PATH_OK);
const pathError: String = String(process.env.PATH_ERROR);
const endpoint = String(process.env.END_POINT);

const readFile = new ReadFile(idUnidade);
enum ERRORS {
    API_ERROR = "API_ERROR",
    TIPO_INVALIDO = "TIPO_INVALIDO",
    STATUS_INVALIDO = "STATUS_INVALIDO"
}


const sendToService = async (object: any) => {
    const { file, translatedObj } = object;

    const options: Object = {
        method: 'POST',
        body: JSON.stringify(translatedObj),
        headers: {
            'Content-Type': 'application/json'
        }
    }
    return fetch(endpoint, options).then(res => {
        if ([200, 201].includes(res.status)) {
            return { file }
        }
        throw Error(ERRORS.API_ERROR)
    })
}

const readContent = async (file: String) => {
    console.warn(`INICIANDO LEITURA DO ARQUIVO [${file}]`)
    const PV1Object = readFile.getPV1Payload(file);
    console.warn(`LEITURA DO ARQUIVO [${file}] REALIZADA`, PV1Object)
    return Promise.resolve({ file, PV1Object });
}

const convertObject = async (readContent: any) => {
    const { file, PV1Object } = readContent;
    console.warn(`INICIANDO TRADUÇÃO DO ARQUIVO [${file}]`, PV1Object);

    const locationStatus: String = PV1Object.locationStatus || '';
    const bed: String = PV1Object.bed || '';
    const validTypes: String[] = ['a', 'c', 'e', 'l', 'n', 'r', 'u'];
    const validStatus: String[] = ['active', 'suspended', 'inactive'];
    if (!validTypes.includes(bed.toLowerCase())) {
        throw Error(ERRORS.TIPO_INVALIDO)
    }
    if (!validStatus.includes(locationStatus.toLowerCase())) {
        throw Error(ERRORS.STATUS_INVALIDO)
    }

    const translatedObj = {
        name: PV1Object.pointOfCare,
        type: PV1Object.bed,
        available: PV1Object.locationStatus === 'active',
        unity: idUnidade
    }
    console.warn(` TRADUÇÃO DO ARQUIVO [${file}]`, translatedObj);
    return { file, translatedObj };
}

const processError = (error: any, file:any) => {
    const pathArray = file.split(pathSpace);
    const fileName = pathArray.pop();
    const newPathFile = `${pathError}${pathSpace}${fileName}`
    readFile.movePath(file, newPathFile);
    if (error.message && error.message in ERRORS) {
        console.log(`ARQUIVO [${file}] POSSUI ERRO [${error.message}]`);
    }
}

const success = (objOk: any) => {
    const { file } = objOk;
    const pathArray = file.split(pathSpace);
    const fileName = pathArray.pop();
    const newPathFile = `${pathOk}${pathSpace}${fileName}`
    readFile.movePath(file, newPathFile);
    console.log(`ARQUIVO [${file}] PROCESSADO COM SUCESSO`);
}

console.info('O GATEWAY DE PROCESSAMENTO DE LEITOS FOI INICIADO');
console.info('ID DA UNIDADE: ' + idUnidade);
console.info('DIRETORIO DE LEITURA: ' + pathReader);
console.info('DIRETORIO DE ARQUIVOS PROCESSADOS: ' + pathOk);
console.info('DIRETORIO DE ARQUIVOS COM ERRO: ' + pathError);
console.info('ENDEREÇO DO ENDPOINT: ' + endpoint);

chokidar.watch(pathReader).on('add', (file: any) => {
    pipe(file, readContent, convertObject, sendToService, success).catch((error: any) => (processError(error, file)))
});



