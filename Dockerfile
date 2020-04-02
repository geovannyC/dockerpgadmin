FROM dpage/pgadmin4:latest
USER root
RUN usermod -u 1500 iddqd
RUN groupmod -g 1500 iddqd
RUN sed -i 's/\[::\]/0.0.0.0/' /entrypoint.sh
USER iddqd