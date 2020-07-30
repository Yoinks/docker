FROM postgres
run mkdir -p /tmp/psql_data/
COPY pokemans.sql /tmp/psql_data/
COPY init_pokemans_db.sh /docker-entrypoint-initdb.d/