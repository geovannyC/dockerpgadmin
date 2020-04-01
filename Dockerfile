FROM edoburu/pgbouncer:1.12.0
RUN  usermod -u 1500 iddqd
RUN groupmod -g 1500 iddqd