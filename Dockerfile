FROM dpage/pgadmin4:latest
RUN sed -i 's/\[::\]/0.0.0.0/' /entrypoint.sh
# This is just candy:
SHELL ["/bin/sh"]