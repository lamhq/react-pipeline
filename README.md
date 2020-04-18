# Rest Boilerplate Pipeline Image

Dockerfile for docker image used in running pipeline of Rest Boilerplate Project.


## Installed softwares 

- Yarn 1.22.4
- Sentry cli 1.52.1
- AWS cli 1.18.39
- Python 2.7.16


## How to use this image

Refer it as a base image in `bitbucket-pipeline.yml`

```yml
pipelines:
  custom:
    deploy-to-test:
      - step:
          name: Build and Deploy
          deployment: Test
          image: lamhq/restpip:latest
          script:
            - yarn install --production=false
            - yarn run build
            - yarn run deploy
          services:
          - docker
```

Or run it directly in your machine with docker

```shell
docker run --rm -it \
  --name nodejs \
  --entrypoint /bin/sh \
  lamhq/restpip:latest
```