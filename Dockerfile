FROM alpine

RUN apk update && apk upgrade

RUN apk add npm openssh-client

RUN apk add neovim git make gcc curl krb5-libs icu-libs openssl-libs-static zlib zip diffutils wget musl-dev 

RUN adduser dev -D 

RUN mkdir -p /home/dev/.config/nvim

USER dev

COPY input.css /home/dev/input.css

WORKDIR /home/dev

RUN npm install tailwindcss @tailwindcss/vite

RUN npx @tailwindcss/cli -i /home/dev/input.css -o /home/dev/output.css --watch
