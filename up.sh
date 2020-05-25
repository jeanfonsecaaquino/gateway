docker build -t gateway -f docker/Dockerfile .

ID_UNIDADE=1

export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga"
export ENDPOINT="http://10.36.143.177:3111/position"
export ID_UNIDADE="${ID_UNIDADE}"

#CRIANDO DIRETORIOS CASO NAO EXISTAM
mkdir -p "${GATEWAY_PATH}/para_rodar"
mkdir -p "${GATEWAY_PATH}/arquivos_ok"
mkdir -p "${GATEWAY_PATH}/arquivos_error"

#INICIANDO INSTANCIA
docker-compose -f docker/docker-compose.yml -p gateway up -d