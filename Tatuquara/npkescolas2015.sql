SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

CREATE SCHEMA npkescolas2015;


ALTER SCHEMA npkescolas2015 OWNER TO postgres;

SET search_path = npkescolas2015, pg_catalog, public;

SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE edificio (
    codigo_edificio integer NOT NULL,
    largura double precision,
    comprimento double precision,
    altura double precision,
    numero_andares integer,
    numero_salas integer,
    numero_banheiros integer,
    material_construcao character varying(30),
    codigo_escola integer NOT NULL
)
TABLESPACE postgiscwb;


ALTER TABLE edificio OWNER TO postgres;

CREATE TABLE escola (
    codigo_escola integer NOT NULL,
    cd_equi double precision,
    nome character varying(150),
    longitude character varying(30),
    latitude character varying(30),
    numero_alunos integer,
    numero_funcionarios integer,
    numero_professores integer,
    dep_admin character varying(60),
    tipo_equi character varying(60),
    email character varying(60),
    telefone character varying(15),
    estacionamento integer,
    acesso_deficientes integer,
    cep character varying(30),
    nome_rua character varying(106),
    num_pred character varying(15),
    bairro character varying(30),
    codigo_saneamento integer,
    area_construida character varying(30),
    area_total character varying(30),
    --the_geom public.geometry(Point,4326),
    longitude_2 double precision,
    latitude_2 double precision
)
TABLESPACE postgiscwb;;

SELECT AddGeometryColumn('npkescolas2015','escola','the_geom','4326','POINT',2);
ALTER TABLE escola OWNER TO postgres;

CREATE TABLE espaco_de_recreacao (
    codigo_recreacao integer NOT NULL,
    nome character varying(30),
    tipo character varying(30),
    descricao character varying(255),
    codigo_escola integer NOT NULL
)
TABLESPACE postgiscwb;;


ALTER TABLE espaco_de_recreacao OWNER TO postgres;

CREATE TABLE imagem (
    codigo_imagem integer NOT NULL,
    path character varying(255),
    descricao character varying(255),
    codigo_escola integer NOT NULL
)
TABLESPACE postgiscwb;;


ALTER TABLE imagem OWNER TO postgres;

CREATE TABLE sala_especial (
    codigo_salasespeciais integer NOT NULL,
    nome character varying(30),
    tipo character varying(30),
    descricao character varying(255),
    codigo_escola integer NOT NULL
)
TABLESPACE postgiscwb;;


ALTER TABLE sala_especial OWNER TO postgres;

CREATE TABLE saneamento_basico (
    codigo_saneamento integer NOT NULL,
    agua_potavel integer,
    agua_pluvial integer,
    coleta_lixo integer,
    esgoto integer
)
TABLESPACE postgiscwb;;


ALTER TABLE saneamento_basico OWNER TO postgres;

ALTER TABLE ONLY edificio
    ADD CONSTRAINT edificio_pkey PRIMARY KEY (codigo_edificio);

ALTER TABLE ONLY escola
    ADD CONSTRAINT escola_pkey PRIMARY KEY (codigo_escola);

ALTER TABLE ONLY espaco_de_recreacao
    ADD CONSTRAINT espaco_de_recreacao_pkey PRIMARY KEY (codigo_recreacao);

ALTER TABLE ONLY imagem
    ADD CONSTRAINT imagem_pkey PRIMARY KEY (codigo_imagem);

ALTER TABLE ONLY sala_especial
    ADD CONSTRAINT sala_especial_pkey PRIMARY KEY (codigo_salasespeciais);

ALTER TABLE ONLY saneamento_basico
    ADD CONSTRAINT saneamento_basico_pkey PRIMARY KEY (codigo_saneamento);

-- Índices
CREATE INDEX codigo_edificio_idx ON edificio USING btree (codigo_edificio)
	TABLESPACE postgisidx;

CREATE INDEX the_geom_idx ON escola USING gist (the_geom)
	TABLESPACE postgisidx;
CREATE INDEX codigo_escola_idx ON escola USING btree (codigo_escola)
	TABLESPACE postgisidx;

CREATE INDEX codigo_recreacao_idx ON espaco_de_recreacao USING btree (codigo_recreacao)
	TABLESPACE postgisidx;

CREATE INDEX codigo_imagem_idx ON imagem USING btree (codigo_imagem)
	TABLESPACE postgisidx;

CREATE INDEX codigo_salasespeciais_idx ON sala_especial USING btree (codigo_salasespeciais)
	TABLESPACE postgisidx;

CREATE INDEX codigo_saneamento_idx ON saneamento_basico USING btree (codigo_saneamento)
	TABLESPACE postgisidx;

ALTER TABLE ONLY edificio
    ADD CONSTRAINT edificio_codigo_escola_fkey FOREIGN KEY (codigo_escola) REFERENCES escola(codigo_escola);

ALTER TABLE ONLY escola
    ADD CONSTRAINT escola_codigo_saneamento_fkey FOREIGN KEY (codigo_saneamento) REFERENCES saneamento_basico(codigo_saneamento);

ALTER TABLE ONLY espaco_de_recreacao
    ADD CONSTRAINT espaco_de_recreacao_codigo_escola_fkey FOREIGN KEY (codigo_escola) REFERENCES escola(codigo_escola);

ALTER TABLE ONLY imagem
    ADD CONSTRAINT imagem_codigo_escola_fkey FOREIGN KEY (codigo_escola) REFERENCES escola(codigo_escola);

ALTER TABLE ONLY sala_especial
    ADD CONSTRAINT sala_especial_codigo_escola_fkey FOREIGN KEY (codigo_escola) REFERENCES escola(codigo_escola);

REVOKE ALL ON SCHEMA npkescolas2015 FROM PUBLIC;
REVOKE ALL ON SCHEMA npkescolas2015 FROM postgres;
GRANT ALL ON SCHEMA npkescolas2015 TO postgres;
GRANT USAGE ON SCHEMA npkescolas2015 TO postr;

REVOKE ALL ON TABLE edificio FROM PUBLIC;
REVOKE ALL ON TABLE edificio FROM postgres;
GRANT ALL ON TABLE edificio TO postgres;
GRANT SELECT ON TABLE edificio TO postr;

REVOKE ALL ON TABLE escola FROM PUBLIC;
REVOKE ALL ON TABLE escola FROM postgres;
GRANT ALL ON TABLE escola TO postgres;
GRANT SELECT ON TABLE escola TO postr;

REVOKE ALL ON TABLE espaco_de_recreacao FROM PUBLIC;
REVOKE ALL ON TABLE espaco_de_recreacao FROM postgres;
GRANT ALL ON TABLE espaco_de_recreacao TO postgres;
GRANT SELECT ON TABLE espaco_de_recreacao TO postr;

REVOKE ALL ON TABLE imagem FROM PUBLIC;
REVOKE ALL ON TABLE imagem FROM postgres;
GRANT ALL ON TABLE imagem TO postgres;
GRANT SELECT ON TABLE imagem TO postr;

REVOKE ALL ON TABLE saneamento_basico FROM PUBLIC;
REVOKE ALL ON TABLE saneamento_basico FROM postgres;
GRANT ALL ON TABLE saneamento_basico TO postgres;
GRANT SELECT ON TABLE saneamento_basico TO postr;

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = npkescolas2015, pg_catalog;

INSERT INTO saneamento_basico VALUES (1, 1, 1, 1, 1);
INSERT INTO saneamento_basico VALUES (2, 1, 1, 1, 1);
INSERT INTO saneamento_basico VALUES (3, 1, 1, 1, 1);
INSERT INTO saneamento_basico VALUES (4, 1, 1, 1, 1);
INSERT INTO saneamento_basico VALUES (5, 1, 1, 1, 1);
INSERT INTO saneamento_basico VALUES (6, 1, 1, 1, 1);
INSERT INTO saneamento_basico VALUES (7, 1, 1, 1, 1);
INSERT INTO saneamento_basico VALUES (8, 1, 1, 1, 1);

INSERT INTO escola VALUES (7, 0, 'Ã©rica Plewka Mlynarczyk', '-25,560434', '-49,312556', 386, 38, 32, 'publica', 'fundamental', 'emerica@sme.curitiba.pr.gov.br', '32657917', 1, 1, '81480160', 'R. Jaime JosÃ© Vojciechovski', '162', 'tatuquara', 7, '832mÂ²', '2.050mÂ²', -25.5604340000000008, -49.3125560000000007, '0101000020E61000000491459A788F39C09415C3D501A848C0');
INSERT INTO escola VALUES (8, 0, 'Vila Zanon', '-25,478782', '-49,337414', 248, 36, 26, 'publica', 'infantil e fundamental', 'emvilazanon@sme.curitiba.pr.gov.br', '33963484', 0, 1, '81240300', 'R. Raul Zanon', '0', 'tatuquara', 8, NULL, NULL, -25.4787819999999989, -49.3374140000000025, '0101000020E6100000D9E90775917A39C0359BC76130AB48C0');
INSERT INTO escola VALUES (1, 0, 'Osvaldo Arns', '-25,573157', '-49,333995', 740, 70, 50, 'publica', 'fundamental e mÃ©dio', 'emosvaldoarns@sme.curitiba.pr.gov.br', '33964051', 0, 1, '81470400', 'R. Odir Gomes da Rocha', '546', 'tatuquara', 1, '2.301,77mÂ²', '4.889,65mÂ²', -25.5731569999999984, -49.3339950000000016, '0101000020E61000003579CA6ABA9239C086032159C0AA48C0');
INSERT INTO escola VALUES (2, 0, 'Darcy Ribeiro', '-25,559917', '-49,338887', 581, 13, 33, 'publica', 'fundamental e mÃ©dio', 'emdarcy.ribeiro@sme.curitiba.pr.gov.br', '33961770', 1, 1, 'null', 'Rua Enette Dubard', '90', 'moradias santa rita', 2, '2.380,8mÂ²', '4.376mÂ²', -25.5599169999999987, -49.3388869999999997, '0101000020E6100000747973B8568F39C0100533A660AB48C0');
INSERT INTO escola VALUES (3, 0, 'Dona PompÃ­lia', '-25,560034', '-49,329620', 1061, 76, 80, 'publica', 'fundamental e mÃ©dio', 'emdonapompilia@sme.curitiba.pr.gov.br', '33962219', 1, 1, 'null', 'Rua Jovenilson AmÃ©rico de Oliveira', '2795', 'Jd da ordem', 3, '1.072,53mÂ²', '5.062,2mÂ²', -25.5600340000000017, -49.3296199999999985, '0101000020E6100000E8A562635E8F39C0C30DF8FC30AA48C0');
INSERT INTO escola VALUES (4, 0, 'AntÃ´nio Pietruza', '-25,550234', '-49,289547', 880, 90, 65, 'publica', 'infantil e fundamental', 'emapietruza@sme.curitiba.pr.gov.br', '33482425', 1, 1, 'null', 'Rua JoÃ£o Amadeu Pedro Bom', '135', 'VL Palmeira', 4, '2.176,53mÂ²', '5.162mÂ²', -25.5502339999999997, -49.2895469999999989, '0101000020E6100000B325AB22DC8C39C0D4D347E00FA548C0');
INSERT INTO escola VALUES (5, 0, 'Maria Ieknot Zeglin', '-25,577565', '-49,332338', 900, 80, 60, 'publica', 'infantil e fundamental', 'emmzeglin@sme.curitiba.pr.gov.br', '32652175', 1, 1, 'null', 'R. Pres. JoÃ£o Goulart', '1605', 'tatuquara', 5, '3.053,65mÂ²', '6.921,21mÂ²', -25.5775649999999999, -49.332338, '0101000020E61000007250C24CDB9339C0E99B340D8AAA48C0');
INSERT INTO escola VALUES (6, 0, 'Newton Borges dos Reis', '-25,566158', '-49,331249', 738, 70, 50, 'publica', 'infantil e fundamental', 'emnewtonborges@sme.curitiba.pr.gov.br', '33963427', 1, 1, 'null', 'R. Adriana Ceres Zago Bueno', '1350', 'tatuquara', 6, '800,1mÂ²', '4.245mÂ²', -25.5661580000000015, -49.3312489999999997, '0101000020E6100000685E0EBBEF9039C096EA025E66AA48C0');

INSERT INTO edificio VALUES (1, 26, 57, 3, 1, 10, 2, 'alvenaria', 1);
INSERT INTO edificio VALUES (2, 45.5, 45.5, 3, 1, 0, 2, 'alvenaria', 1);
INSERT INTO edificio VALUES (3, 26, 65, 3, 1, 15, 2, 'alvenaria', 1);
INSERT INTO edificio VALUES (4, 31, 43, 3, 1, 12, 4, 'alvenaria e madeira', 2);
INSERT INTO edificio VALUES (5, 12, 24, 3, 1, 14, 2, 'alvenaria', 3);
INSERT INTO edificio VALUES (6, 18, 32, 3, 1, 4, 3, 'alvenaria', 3);
INSERT INTO edificio VALUES (7, 21, 18, 3, 1, 8, 2, 'alvenaria', 4);
INSERT INTO edificio VALUES (8, 12, 18, 3, 1, 10, 4, 'alvenaria', 4);
INSERT INTO edificio VALUES (9, 0, 0, 0, 1, 20, 9, 'alvenaria', 5);
INSERT INTO edificio VALUES (10, 22, 32, 3, 2, 16, 7, 'alvenaria', 6);
INSERT INTO edificio VALUES (11, 10, 21, 3, 1, 8, 5, 'madeira,alvenaria e container', 7);
INSERT INTO edificio VALUES (12, 24, 32, 3, 1, 3, 4, 'madeira,alvenaria e container', 7);
INSERT INTO edificio VALUES (13, 22, 40, 3.5, 1, 6, 3, 'madeira', 8);

INSERT INTO espaco_de_recreacao VALUES (1, 'quadra', 'coberta', 'quadra poliesportiva', 1);
INSERT INTO espaco_de_recreacao VALUES (2, 'quadra', 'areia', 'areia poliesportiva', 1);
INSERT INTO espaco_de_recreacao VALUES (3, 'parquinho', 'infantil', 'parquinho para crianÃ§as', 1);
INSERT INTO espaco_de_recreacao VALUES (4, 'quadra', 'areia', 'poliesportiva', 2);
INSERT INTO espaco_de_recreacao VALUES (5, 'quadra', 'coberta', 'quadra poliesportiva', 2);
INSERT INTO espaco_de_recreacao VALUES (6, 'quadra', 'coberta', 'quadra poliesportiva', 3);
INSERT INTO espaco_de_recreacao VALUES (7, 'quadra', 'coberta', 'quadra poliesportiva', 4);
INSERT INTO espaco_de_recreacao VALUES (8, 'quadra', 'areia', 'quadra poliesportiva', 4);
INSERT INTO espaco_de_recreacao VALUES (9, 'quadra', 'coberta', 'quadra poliesportiva', 6);
INSERT INTO espaco_de_recreacao VALUES (10, 'quadra', 'descoberta', 'quadra poliesportiva', 6);
INSERT INTO espaco_de_recreacao VALUES (11, 'quadra', 'areia', 'quadra poliesportiva', 6);
INSERT INTO espaco_de_recreacao VALUES (12, 'quadra', 'coberta', 'quadra poliesportiva', 5);
INSERT INTO espaco_de_recreacao VALUES (13, 'parquinho', 'infantil', 'parquinho para crianÃ§as', 5);
INSERT INTO espaco_de_recreacao VALUES (14, 'quadra', 'coberta', 'quadra poliesportiva', 7);
INSERT INTO espaco_de_recreacao VALUES (15, 'quadra', 'descoberta', 'quadra poliesportiva', 7);
INSERT INTO espaco_de_recreacao VALUES (16, 'parquinho', 'infantil', 'parquinho para crianÃ§as', 8);
INSERT INTO espaco_de_recreacao VALUES (17, 'quadra', 'coberta', 'quadra poliesportiva', 8);

INSERT INTO sala_especial VALUES (1, 'biblioteca', 'biblioteca', 'null', 1);
INSERT INTO sala_especial VALUES (2, 'informatica', 'laboratorio', 'null', 1);
INSERT INTO sala_especial VALUES (3, 'biblioteca', 'biblioteca', 'null', 2);
INSERT INTO sala_especial VALUES (4, 'informatica', 'laboratorio', 'null', 2);
INSERT INTO sala_especial VALUES (5, 'farol do saber', 'biblioteca', 'null', 3);
INSERT INTO sala_especial VALUES (6, 'biblioteca', 'biblioteca', 'null', 4);
INSERT INTO sala_especial VALUES (7, 'sala de reforĄĂĄ§o', 'sala', 'sala para rec', 4);
INSERT INTO sala_especial VALUES (8, 'biblioteca', 'biblioteca', 'null', 5);
INSERT INTO sala_especial VALUES (9, 'biblioteca', 'biblioteca', 'null', 6);
INSERT INTO sala_especial VALUES (10, 'auditorio', 'multimidia', 'null', 6);
INSERT INTO sala_especial VALUES (11, 'biblioteca', 'biblioteca', 'null', 7);
INSERT INTO sala_especial VALUES (12, 'biblioteca', 'biblioteca', 'null', 8);

