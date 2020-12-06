FROM golang:alpine AS golang

USER root

# Copiando arquivos
COPY . .


# Compilando projeto
RUN go build src/main/main.go 


FROM alpine:3.7

# Copiando arquivo binario para raiz
COPY --from=golang go/main .

# Executando o arquivo binario
ENTRYPOINT ["./main"]

