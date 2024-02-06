FROM oven/bun:alpine as base



## 빌드 작업
FROM base as builder

## 환경 변수 설정 
ARG DEFAULT_PORT=80
ENV VITE_PORT=$DEFAULT_PORT

WORKDIR /app
# 의존성 설치
COPY ./port-app/package.json ./port-app/bun.lockb* ./
RUN bun i

# 빌드 
COPY ./port-app .
RUN bun run build

##############
## 프로덕션 ##
##############
FROM nginx:stable-alpine-slim as runner 

## 환경 변수 설정 
ARG DEFAULT_PORT=80
ENV PORT=$DEFAULT_PORT

## react 빌드 소스
COPY --from=builder  /app/dist /usr/share/nginx/html

## nginx default.conf
COPY ./nginx/ .

RUN envsubst < /nginx.template > /etc/nginx/conf.d/default.conf 

## nginx 이미지의 경우 자체 이미지 빌드레벨에서 EXPOSE 80 이 기본이라 안막아진다.. 
EXPOSE $PORT