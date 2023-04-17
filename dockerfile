FROM postgres
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD sa
ENV POSTGRES_DB nombre_base_de_datos
COPY nombre_archivo.sql /docker-entrypoint-initdb.d/
