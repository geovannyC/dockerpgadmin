FROM dpage/pgadmin4:latest
USER root
RUN groupmod -g 5050 pgadmin
RUN ["chmod", "+x", "/entrypoint.sh"]
RUN sed -i 's/\[::\]/${PGADMIN_BIND_ADDRESS:-[::]}/' /entrypoint.sh
USER pgadmin