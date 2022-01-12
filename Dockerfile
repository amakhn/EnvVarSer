FROM node:10.16.3-stretch

WORKDIR /app
COPY ./app/* ./

EXPOSE 81

ARG arg_container_build=default_value
ARG arg_container_start=default_value
ENV CONTAINER_BUILD=$arg_container_build
ENV CONTAINER_START=$arg_container_start

RUN bash -c "export CONTAINER_START=$arg_container_start"

CMD ["node", "main.js"]