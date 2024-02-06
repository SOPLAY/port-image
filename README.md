# port image repo

## tkdgns1341/port

- Docker Hub : [**`tkdgns1341/port`**](hub.docker.com/repository/docker/tkdgns1341/port)
- platforms : **`linux/amd64`**,**`linux/arm64`**
- tag : 80, 3000, 8000, 8080
- runner image base : nginx
- CI : Github Actions

docker에서 이미지의 포트를 확인할 때 사용 할 수 있는 이미지입니다.
이미지의 베이스는 vite + react + nginx 입니다.

## 사용 방법

태그 리스트 중에서 사용할 포트를 선택해서 이미지의 태그로 지정하면 됩니다.

> 만약 3000 번 포트가 개방된 이미지를 사용하고자 한다면  
> **`tkdgns1341/port:3000`** 을 사용하면 됩니다.

```shell
docker run --name port-3000 -p 3000:3000 tkdgns1341/port:3000
```

### 스크린샷

![alt text](port-image.png)
