FROM mongo:latest
LABEL mainteiner="jakubgw"


COPY ./.docker/mongo /mongo

RUN chmod +rx /mongo/*.sh
RUN touch /.firstrun
   
ENTRYPOINT ["/mongo/run.sh"]

