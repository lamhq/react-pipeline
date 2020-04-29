#!/bin/bash
docker run --rm -it \
  --name nodejs \
  --entrypoint /bin/sh \
  lamhq/react-pipeline:latest