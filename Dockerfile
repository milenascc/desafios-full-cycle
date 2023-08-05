FROM alpine:3.18

WORKDIR /usr/local/helloworld

#instala curl
RUN apk --no-cache add curl

#baixa arquivo de instalção do Go e extrai arquivo compactado
RUN curl -OL https://go.dev/dl/go1.20.7.linux-amd64.tar.gz &&\ 
    rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.7.linux-amd64.tar.gz

