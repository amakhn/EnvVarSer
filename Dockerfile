FROM node:10.16.3-stretch

WORKDIR /app
COPY ./app/* ./

EXPOSE 81
RUN echo $(TZ=GMT date +"%a, %d %b %Y %T %Z") > /app/container_build_date

ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["node", "/app/main.js"]