FROM mysql:5.7

ADD database /docker-entrypoint-initdb.d
