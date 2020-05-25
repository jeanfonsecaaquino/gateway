docker build -t gateway -f docker/Dockerfile .

######################### UNIDADE 1 #########################

ID_UNIDADE=1
export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni1"
export ENDPOINT="https://ondetemleito.com.br/api/position"
export ID_UNIDADE="${ID_UNIDADE}"

#CRIANDO DIRETORIOS CASO NAO EXISTAM
mkdir -p "${GATEWAY_PATH}/para_rodar"
mkdir -p "${GATEWAY_PATH}/arquivos_ok"
mkdir -p "${GATEWAY_PATH}/arquivos_error"

#INICIANDO INSTANCIA
docker-compose -f docker/docker-compose.yml -p gateway_1 up -d

# ######################### UNIDADE 2 #########################

# ID_UNIDADE=2
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni2"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_2 up -d

# ######################### UNIDADE 3 #########################

# ID_UNIDADE=3
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni3"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_3 up -d

# ######################### UNIDADE 4 #########################

# ID_UNIDADE=4
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni4"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_4 up -d

# ######################### UNIDADE 5 #########################

# ID_UNIDADE=5
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni5"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_5 up -d

# ######################### UNIDADE 6 #########################

# ID_UNIDADE=6
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni6"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_6 up -d

# ######################### UNIDADE 7 #########################

# ID_UNIDADE=7
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni7"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_7 up -d

# ######################### UNIDADE 8 #########################

# ID_UNIDADE=8
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni8"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_8 up -d

# ######################### UNIDADE 9 #########################

# ID_UNIDADE=9
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni9"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_9 up -d

# ######################### UNIDADE 10 #########################

# ID_UNIDADE=10
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni10"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_10 up -d

# ######################### UNIDADE 11 #########################

# ID_UNIDADE=11
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni11"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_11 up -d

# ######################### UNIDADE 12 #########################

# ID_UNIDADE=12
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni12"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_12 up -d

# ######################### UNIDADE 13 #########################

# ID_UNIDADE=13
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni13"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_13 up -d

# ######################### UNIDADE 14 #########################

# ID_UNIDADE=14
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni14"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_14 up -d

# ######################### UNIDADE 15 #########################

# ID_UNIDADE=15
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni15"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_15 up -d

# ######################### UNIDADE 16 #########################

# ID_UNIDADE=16
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni16"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_16 up -d

# ######################### UNIDADE 17 #########################

# ID_UNIDADE=17
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni17"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_17 up -d

# ######################### UNIDADE 18 #########################

# ID_UNIDADE=18
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni18"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_18 up -d

# ######################### UNIDADE 19 #########################

# ID_UNIDADE=19
# export GATEWAY_PATH="/Users/jeanaquino/Projects/bot_carga/uni19"
# export ENDPOINT="https://ondetemleito.com.br/api/position"
# export ID_UNIDADE="${ID_UNIDADE}"

# #CRIANDO DIRETORIOS CASO NAO EXISTAM
# mkdir -p "${GATEWAY_PATH}/para_rodar"
# mkdir -p "${GATEWAY_PATH}/arquivos_ok"
# mkdir -p "${GATEWAY_PATH}/arquivos_error"

# #INICIANDO INSTANCIA
# docker-compose -f docker/docker-compose.yml -p gateway_19 up -d