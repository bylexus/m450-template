FROM postgres:15
RUN echo "de_CH.UTF-8 UTF-8" >> /etc/locale.gen
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen
ENV LANG de_CH.UTF-8
ENV LANGUAGE de_CH:en
ENV LC_ALL de_CH.UTF-8
RUN cp /usr/share/zoneinfo/Europe/Zurich /etc/localtime


# Initial data
RUN mkdir -p /docker-entrypoint-initdb.d/
# COPY 001_init_m450.sql /docker-entrypoint-initdb.d/
COPY 002_example_data.sql /docker-entrypoint-initdb.d/
