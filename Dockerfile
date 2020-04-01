FROM dpage/pgadmin4:latest
USER root
RUN sed -i 's/\[::\]/0.0.0.0/' /entrypoint.sh
USER iddqd