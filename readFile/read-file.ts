const console = require('console')
const fs = require('fs')
const path = require('path')
const { Parser } = require('simple-hl7')

export class ReadFile {
    idUnidade: Number;

    constructor(idUnidade: Number) {
        this.idUnidade = idUnidade;
    }

    getPV1Payload(fileName: String) {
        const parser = new Parser({ segmentSeperator: '\n' })
        const message = fs.readFileSync(fileName).toString('utf8')
        const pid = parser.parse(message).getSegment('PV1');
        const payload = {
            idUnidade: this.idUnidade,
            pointOfCare: `${pid.getComponent(3, 1)}`,
            room: `${pid.getComponent(3, 2)}`,
            bed: `${pid.getComponent(3, 3)}`,
            facility: `${pid.getComponent(3, 4)}`,
            locationStatus: `${pid.getComponent(3, 5)}`,
            personLocationType: `${pid.getComponent(3, 6)}`,
            building: `${pid.getComponent(3, 7)}`
        }
        return payload;
    }

    movePath(oldPath: String, newPath: String){
        const execucao = fs.renameSync(oldPath, newPath);
        return execucao;
    }
}