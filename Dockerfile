FROM node:bookworm

#Define pasta dentro do container
WORKDIR /calculadora_imc

#Copia todos os arquivos da pasta atual para a pasta do container
COPY . /calculadora_imc

#Porta para rodar servidores
EXPOSE 5000

RUN npm install -g http-server

#tem que passar os parametros em aspas duplas
ENTRYPOINT ["http-server", "-p 5000"]