FROM node:10.16.3-stretch

WORKDIR /app
COPY ./app/* ./

EXPOSE 81

#ARG arg_container_build=default_value
#ENV CONTAINER_BUILD=$arg_container_build
#ENV CONTAINER_START=""
#RUN sh -c "echo '#!/bin/sh' > set_env.sh"
#RUN sh -c 'echo export CONTAINER_BUILD=\"$(date)\" >> set_env.sh'
#RUN sh -c 'echo DATETIME=\$\(date\) >> set_env.sh'
#RUN sh -c 'echo export CONTAINER_START=\"\$DATETIME\" >> set_env.sh'
#RUN sh -c "chmod +x set_env.sh"
#RUN sh -c "./set_env.sh"

#RUN sh -c "chmod +x env.sh"
RUN sh -c "chmod +x entrypoint.sh"
RUN date > ./build_timestamp

ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["node", "/app/main.js"]