FROM --platform=linux/arm64/v8 liquibase/liquibase:4.29.2

COPY changelog.yaml changelog.yaml
COPY migrations/ migrations/
COPY liquibase.properties liquibase.properties

CMD liquibase update --url "jdbc:postgresql://db:5432/archimedes" --username=${DB_USERNAME} --password=${DB_PASSWORD}
