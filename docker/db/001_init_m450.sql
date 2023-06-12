CREATE TABLE weather
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    ts timestamp with time zone NOT NULL,
    country character varying(10),
    zip character varying(20),
    city character varying(100),
    longitude real,
    latitude real,
    description text,
    icon text,
    temp real,
    temp_feels_like real,
    temp_min real,
    temp_max real,
    pressure real,
    humidity real,
    wind_speed real,
    wind_degree real,
    wind_gust real,
    clouds_percentage real,
    sunrise timestamp with time zone,
    sunset timestamp with time zone,
    PRIMARY KEY (id)
);

CREATE INDEX i_weather_ts ON weather USING BTREE (ts);
CREATE INDEX i_weather_country ON weather USING BTREE (country);
CREATE INDEX i_weather_zip ON weather USING BTREE (zip);

CREATE TABLE air_pollution
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    ts timestamp with time zone NOT NULL,
    country character varying(10),
    zip character varying(20),
    city character varying(100),
    longitude real,
    latitude real,
    air_quality_index integer,
    co real,
    no real,
    no2 real,
    o3 real,
    so2 real,
    pm2_5 real,
    pm10 real,
    nh3 real,
    PRIMARY KEY (id)
);

CREATE INDEX i_air_pollution_ts ON air_pollution USING BTREE (ts);
CREATE INDEX i_air_pollution_country ON air_pollution USING BTREE (country);
CREATE INDEX i_air_pollution_zip ON air_pollution USING BTREE (zip);
