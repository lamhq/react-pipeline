# React Pipeline Image

Docker image for running pipeline of React Boilerplate project.

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
          image: lamhq/react-pipeline:latest
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
  --name react-pipeline \
  --entrypoint /bin/sh \
  lamhq/react-pipeline:latest
```