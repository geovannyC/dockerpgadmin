FROM dpage/pgadmin4:latest
RUN sed -i 's/\[::\]/${PGADMIN_BIND_ADDRESS:-[::]}/' /entrypoint.sh