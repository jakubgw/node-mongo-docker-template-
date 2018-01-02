FROM mongo:latest
LABEL mainteiner="jakubgw"


COPY ./.docker/mongo_scripts /mongo_scripts

RUN chmod +rx /mongo_scripts/*.sh
RUN touch /mongo_scripts/.first_run

EXPOSE 27017

ENTRYPOINT ["/mongo_scripts/run.sh"]


