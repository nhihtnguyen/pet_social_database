FROM postgres:12.2-alpine

# Install defaut editor
RUN ["apk", "update"]

# Install vim
RUN ["apk", "add", "vim"]

# Initialize database
COPY init-database.sh /docker-entrypoint-initdb.d/

# Initialize data
COPY web_development.sql ./
COPY web_development.sql /docker-entrypoint-initdb.d/

EXPOSE 5432

