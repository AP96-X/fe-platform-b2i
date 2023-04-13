FROM nginx:1.23-alpine3.17
WORKDIR /data/html/main
RUN sed -i "s@https://dl-cdn.alpinelinux.org/@https://repo.huaweicloud.com/@g" /etc/apk/repositories \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone
COPY nginx.conf /etc/nginx
COPY app.conf /etc/nginx
COPY ./main /data/html/main
EXPOSE 4010