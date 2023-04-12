FROM nginx:1.23-alpine3.17
WORKDIR /data/html/main
COPY nginx.conf /etc/nginx
COPY app.conf /etc/nginx
COPY main.zip /data/html
RUN sed -i "s@https://dl-cdn.alpinelinux.org/@https://repo.huaweicloud.com/@g" /etc/apk/repositories \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk update \
    && apk add --no-cache unzip \
    && cd /data/html && unzip main.zip && rm -rf main.zip
EXPOSE 4010