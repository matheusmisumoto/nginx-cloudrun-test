# Container Docker com servidor Nginx

Este repositório é um guia simples para criar um container Docker com um servidor Nginx que contém uma página index personalizada. O objetivo é fornecer uma maneira fácil e rápida de iniciar um servidor web Nginx com um conteúdo personalizado.

## Pré-requisitos

Certifique-se de que você tenha os seguintes pré-requisitos instalados no seu sistema:

1. **Docker**: Você pode obtê-lo em [Docker's website](https://www.docker.com/get-started) e siga as instruções de instalação para o seu sistema operacional.

## Como usar este repositório

Siga os passos abaixo para criar um container Docker com um servidor Nginx e uma página index personalizada:

1. **Clone o repositório**: Execute o seguinte comando no seu terminal para clonar este repositório:

   ```bash
   git clone https://github.com/matheusmisumoto/nginx-simple-container.git
   ```

2. **Acesse o diretório do repositório**:

   ```bash
   cd nginx-simple-container
   ```

3. **Personalize a página index**:

   Substitua o conteúdo do arquivo `index.html` na pasta `build` com o seu próprio conteúdo HTML personalizado. Esta página será exibida quando você acessar o servidor Nginx. Você também pode colocar pastas e arquivos (como imagens, estilos CSS, PDFs).

4. **Construa a imagem Docker**:

   Execute o seguinte comando para construir a imagem Docker:

   ```bash
   docker build -t meu-servidor-nginx .
   ```

   Certifique-se de que você está no diretório raiz do repositório ao executar este comando.

5. **Inicie o container Docker**:

   Agora, você pode iniciar o seu servidor Nginx personalizado executando o seguinte comando:

   ```bash
   docker run -d -p 80:80 meu-servidor-nginx
   ```

   Isso iniciará o container em segundo plano e mapeará a porta 80 do seu sistema para a porta 80 do container.

6. **Acesse o servidor Nginx**:

   Abra um navegador da web e acesse `http://localhost`. Você verá a sua página index personalizada sendo servida pelo servidor Nginx.

## Personalização Adicional

Você pode personalizar ainda mais a configuração do Nginx modificando o arquivo `nginx.conf` na pasta `config`. Lembre-se de reconstruir a imagem Docker após fazer qualquer alteração na configuração.

## Encerrando o Container Docker

Para encerrar o container Docker do servidor Nginx, execute o seguinte comando:

```bash
docker stop $(docker ps -q --filter ancestor=meu-servidor-nginx)
```

Isso encerrará o container em execução.

Esperamos que este repositório facilite a criação de servidores Nginx personalizados usando Docker. Sinta-se à vontade para personalizar ainda mais a configuração de acordo com suas necessidades específicas.

---
Developed with ☕ by [Matheus Misumoto](https://matheusmisumoto.dev) in Santos, Brazil