docker build -t gateway -f docker/Dockerfile .

ID_UNIDADE=1

export GATEWAY_PATH="/Users/jeanaquino/Projects/hospital"
export ENDPOINT="http://10.36.143.177:3111/position"

#CRIANDO ENVS PARA UNIDADE
export PATH_PARA_RODAR="${GATEWAY_PATH}/para_rodar"
export PATH_OK="${GATEWAY_PATH}/arquivos_ok"
export PATH_ERROR="${GATEWAY_PATH}/arquivos_error"
export ID_UNIDADE="${ID_UNIDADE}"

#CRIANDO DIRETORIOS CASO NAO EXISTAM
mkdir -p $PATH_PARA_RODAR
mkdir -p $PATH_OK
mkdir -p $PATH_ERROR

#INICIANDO INSTANCIA
docker-compose -f docker/docker-compose.yml -p gateway up -d