FROM node:10.16.3-stretch

WORKDIR /app
COPY ./app/* ./

EXPOSE 81
RUN echo $(date) > /app/container_build_date

ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["node", "/app/main.js"]