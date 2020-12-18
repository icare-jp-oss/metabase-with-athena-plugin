FROM metabase/metabase:v0.37.3

ADD --chown=2000:2000 \
  https://github.com/dacort/metabase-athena-driver/releases/download/v1.1.0/athena.metabase-driver.jar \
  /plugins/athena.metabase-driver.jar

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "/app/run_metabase.sh" ]
