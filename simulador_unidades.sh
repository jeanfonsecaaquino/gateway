docker build -t gateway -f docker/Dockerfile .

ID_COPA_DOR=1
ID_QUINTA_DOR=2
ID_CAXIAS_DOR=3

export PATH_COPA="/Users/jeanaquino/Projects/hospitais/copa"
export PATH_QUINTA="/Users/jeanaquino/Projects/hospitais/quinta"
export PATH_CAXIAS="/Users/jeanaquino/Projects/hospitais/caxias"
export PATH_NITEROI="/Users/jeanaquino/Projects/hospitais/niteroi"
export ENDPOINT="http://10.36.143.177:3111/position"

################################ COPA DOR ################################
#CRIANDO ENVS PARA COPA
export GATEWAY_PATH="${PATH_COPA}"
export PATH_PARA_RODAR="${PATH_COPA}/para_rodar"
export PATH_OK="${PATH_COPA}/arquivos_ok"
export PATH_ERROR="${PATH_COPA}/arquivos_error"
export ID_UNIDADE="${ID_COPA_DOR}"
#Criando diretorios caso nao existam
mkdir -p $PATH_PARA_RODAR
mkdir -p $PATH_OK
mkdir -p $PATH_ERROR
#Parando instancias COPA
docker-compose -f docker/docker-compose.yml -p gateway_copa up -d

# ################################ QUINTA DOR ################################
# #CRIANDO ENVS PARA QUINTA
# export GATEWAY_PATH="${PATH_QUINTA}"
# export PATH_PARA_RODAR="${PATH_QUINTA}/para_rodar"
# export PATH_OK="${PATH_QUINTA}/arquivos_ok"
# export PATH_ERROR="${PATH_QUINTA}/arquivos_error"
# export ID_UNIDADE="${ID_QUINTA_DOR}"
# #Criando diretorios caso nao existam
# mkdir -p $PATH_PARA_RODAR
# mkdir -p $PATH_OK
# mkdir -p $PATH_ERROR
# docker-compose -f docker/docker-compose.yml -p gateway_quinta up -d

# ################################ CAXIAS DOR ################################
# #CRIANDO ENVS PARA CAXIAS
# export GATEWAY_PATH="${PATH_CAXIAS}"
# export PATH_PARA_RODAR="${PATH_CAXIAS}/para_rodar"
# export PATH_OK="${PATH_CAXIAS}/arquivos_ok"
# export PATH_ERROR="${PATH_CAXIAS}/arquivos_error"
# export ID_UNIDADE="${ID_CAXIAS_DOR}"
# #Criando diretorios caso nao existam
# mkdir -p $PATH_PARA_RODAR
# mkdir -p $PATH_OK
# mkdir -p $PATH_ERROR
# docker-compose -f docker/docker-compose.yml -p gateway_caxias up -d

# ################################ NITEROI DOR ################################
# #CRIANDO ENVS PARA CAXIAS
# export GATEWAY_PATH="${PATH_NITEROI}"
# export PATH_PARA_RODAR="${PATH_NITEROI}/para_rodar"
# export PATH_OK="${PATH_NITEROI}/arquivos_ok"
# export PATH_ERROR="${PATH_NITEROI}/arquivos_error"
# export ID_UNIDADE="${ID_NITEROI_DOR}"
# #Criando diretorios caso nao existam
# mkdir -p $PATH_PARA_RODAR
# mkdir -p $PATH_OK
# mkdir -p $PATH_ERROR
# docker-compose -f docker/docker-compose.yml -p gateway_niteroi up -d

# # TODO CRIAR UM SCRIPT QUE PEGA ARQUIVOS CORRETOS E FICAR SNIFANDO NAS PASTAS DE TEMOS EM TEMPOS

