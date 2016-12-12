--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.5.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: banco; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE banco (
    id_banco numeric(10,0) NOT NULL,
    nombanco character varying(50) NOT NULL
);


ALTER TABLE banco OWNER TO admin;

--
-- Name: cargo; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE cargo (
    idcargo numeric(10,0) NOT NULL,
    descargo character varying(20) NOT NULL
);


ALTER TABLE cargo OWNER TO admin;

--
-- Name: cargoempleado; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE cargoempleado (
    idcargo numeric(10,0) NOT NULL,
    idempleado numeric(10,0) NOT NULL
);


ALTER TABLE cargoempleado OWNER TO admin;

--
-- Name: catalogoproductos; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE catalogoproductos (
    idreferencia numeric(40,0) NOT NULL,
    idtipoprodcuto numeric(20,0) NOT NULL,
    idmarca numeric(20,0) NOT NULL,
    desreferencia character varying(40) NOT NULL
);


ALTER TABLE catalogoproductos OWNER TO admin;

--
-- Name: contacto; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE contacto (
    idtipocontacto numeric(20,0) NOT NULL,
    idpersona numeric(11,0) NOT NULL
);


ALTER TABLE contacto OWNER TO admin;

--
-- Name: descuento; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE descuento (
    idtipodescuento numeric(10,0) NOT NULL,
    idtipociente numeric(20,0) NOT NULL
);


ALTER TABLE descuento OWNER TO admin;

--
-- Name: detalletransaccion; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE detalletransaccion (
    numerotransaccion numeric(100,0) NOT NULL,
    facturacion numeric(10,0) NOT NULL,
    pedido numeric(10,0) NOT NULL,
    idreferencia numeric(40,0) NOT NULL,
    desdetalletransaccion character varying(30) NOT NULL
);


ALTER TABLE detalletransaccion OWNER TO admin;

--
-- Name: distribucion; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE distribucion (
    idpersona numeric(11,0) NOT NULL,
    idreferencia numeric(40,0) NOT NULL
);


ALTER TABLE distribucion OWNER TO admin;

--
-- Name: empleado; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE empleado (
    idempleado numeric(10,0) NOT NULL,
    nomempleado character varying(25) NOT NULL,
    apeempleado character varying(25) NOT NULL
);


ALTER TABLE empleado OWNER TO admin;

--
-- Name: estante; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE estante (
    idestante numeric(10,0) NOT NULL,
    idreferencia numeric(40,0),
    id_tipoestante numeric(10,0) NOT NULL,
    est_idestante numeric(10,0),
    desestante character varying(30) NOT NULL
);


ALTER TABLE estante OWNER TO admin;

--
-- Name: historicoprecio; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE historicoprecio (
    consechistoricoprecio numeric(20,0) NOT NULL,
    idreferencia numeric(40,0) NOT NULL,
    fechainicio date NOT NULL,
    precioventa numeric(10,0) NOT NULL,
    impuesto numeric(10,0)
);


ALTER TABLE historicoprecio OWNER TO admin;

--
-- Name: inventario; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE inventario (
    idtipomovimiento numeric(10,0) NOT NULL,
    numerotransaccion numeric(100,0) NOT NULL,
    facturacion numeric(10,0) NOT NULL,
    pedido numeric(10,0) NOT NULL
);


ALTER TABLE inventario OWNER TO admin;

--
-- Name: marca; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE marca (
    idmarca numeric(20,0) NOT NULL,
    nombremarca character varying(40) NOT NULL
);


ALTER TABLE marca OWNER TO admin;

--
-- Name: pago; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE pago (
    idpago numeric(50,0) NOT NULL,
    numerotransaccion numeric(100,0) NOT NULL,
    idtipotarjeta numeric NOT NULL,
    idtipopago numeric(4,0) NOT NULL,
    id_banco numeric(10,0),
    idempleado numeric(10,0) NOT NULL,
    despago character varying(40) NOT NULL
);


ALTER TABLE pago OWNER TO admin;

--
-- Name: persona; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE persona (
    idpersona numeric(11,0) NOT NULL,
    nompersona character varying(40) NOT NULL,
    apepersona character varying(40) NOT NULL
);


ALTER TABLE persona OWNER TO admin;

--
-- Name: tipocliente; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE tipocliente (
    idtipociente numeric(20,0) NOT NULL,
    idpersona numeric(11,0) NOT NULL
);


ALTER TABLE tipocliente OWNER TO admin;

--
-- Name: tipocontacto; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE tipocontacto (
    idtipocontacto numeric(20,0) NOT NULL,
    destipocontaco character varying(40) NOT NULL
);


ALTER TABLE tipocontacto OWNER TO admin;

--
-- Name: tipodescuento; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE tipodescuento (
    idtipodescuento numeric(10,0) NOT NULL,
    destipodescuento character varying(30) NOT NULL
);


ALTER TABLE tipodescuento OWNER TO admin;

--
-- Name: tipoestante; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE tipoestante (
    id_tipoestante numeric(10,0) NOT NULL,
    destipoestante character varying(40) NOT NULL
);


ALTER TABLE tipoestante OWNER TO admin;

--
-- Name: tipomovimiento; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE tipomovimiento (
    idtipomovimiento numeric(10,0) NOT NULL,
    destipomovimiento character varying(40) NOT NULL
);


ALTER TABLE tipomovimiento OWNER TO admin;

--
-- Name: tipopago; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE tipopago (
    idtipopago numeric(4,0) NOT NULL,
    desctipopago character varying(20) NOT NULL
);


ALTER TABLE tipopago OWNER TO admin;

--
-- Name: tipopersona; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE tipopersona (
    idtipociente numeric(20,0) NOT NULL,
    tip_idtipociente numeric(20,0),
    destipopersona character varying(40) NOT NULL
);


ALTER TABLE tipopersona OWNER TO admin;

--
-- Name: tipoproducto; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE tipoproducto (
    idtipoprodcuto numeric(20,0) NOT NULL,
    destipoproducto character varying(40) NOT NULL
);


ALTER TABLE tipoproducto OWNER TO admin;

--
-- Name: tipotarjeta; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE tipotarjeta (
    idtipotarjeta character(10) NOT NULL,
    destarjeta character varying(20) NOT NULL
);


ALTER TABLE tipotarjeta OWNER TO admin;

--
-- Name: tipotransaccion; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE tipotransaccion (
    idtipotransaccion numeric(10,0) NOT NULL,
    destipotransaccion character varying(40) NOT NULL
);


ALTER TABLE tipotransaccion OWNER TO admin;

--
-- Name: transaccion; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE transaccion (
    numerotransaccion numeric(100,0) NOT NULL,
    idempleado numeric(10,0) NOT NULL,
    tra_numerotransaccion numeric(100,0),
    idtipotransaccion numeric(10,0) NOT NULL,
    idpersona numeric(11,0) NOT NULL,
    fecha_transaccion date NOT NULL,
    hora_transaccion time without time zone NOT NULL,
    descuentotransaccion numeric(50,0),
    totaltransaccion numeric(20,0),
    facturaasociada numeric(20,0)
);


ALTER TABLE transaccion OWNER TO admin;

--
-- Name: ubicacion; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE ubicacion (
    idubicacion numeric(4,0) NOT NULL,
    idestante numeric(10,0),
    nombreubicacion character varying(10) NOT NULL
);


ALTER TABLE ubicacion OWNER TO admin;

--
-- Data for Name: banco; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY banco (id_banco, nombanco) FROM stdin;
\.


--
-- Data for Name: cargo; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY cargo (idcargo, descargo) FROM stdin;
\.


--
-- Data for Name: cargoempleado; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY cargoempleado (idcargo, idempleado) FROM stdin;
\.


--
-- Data for Name: catalogoproductos; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY catalogoproductos (idreferencia, idtipoprodcuto, idmarca, desreferencia) FROM stdin;
\.


--
-- Data for Name: contacto; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY contacto (idtipocontacto, idpersona) FROM stdin;
\.


--
-- Data for Name: descuento; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY descuento (idtipodescuento, idtipociente) FROM stdin;
\.


--
-- Data for Name: detalletransaccion; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY detalletransaccion (numerotransaccion, facturacion, pedido, idreferencia, desdetalletransaccion) FROM stdin;
\.


--
-- Data for Name: distribucion; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY distribucion (idpersona, idreferencia) FROM stdin;
\.


--
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY empleado (idempleado, nomempleado, apeempleado) FROM stdin;
1	admin	admin
\.


--
-- Data for Name: estante; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY estante (idestante, idreferencia, id_tipoestante, est_idestante, desestante) FROM stdin;
\.


--
-- Data for Name: historicoprecio; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY historicoprecio (consechistoricoprecio, idreferencia, fechainicio, precioventa, impuesto) FROM stdin;
\.


--
-- Data for Name: inventario; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY inventario (idtipomovimiento, numerotransaccion, facturacion, pedido) FROM stdin;
\.


--
-- Data for Name: marca; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY marca (idmarca, nombremarca) FROM stdin;
\.


--
-- Data for Name: pago; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY pago (idpago, numerotransaccion, idtipotarjeta, idtipopago, id_banco, idempleado, despago) FROM stdin;
\.


--
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY persona (idpersona, nompersona, apepersona) FROM stdin;
\.


--
-- Data for Name: tipocliente; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY tipocliente (idtipociente, idpersona) FROM stdin;
\.


--
-- Data for Name: tipocontacto; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY tipocontacto (idtipocontacto, destipocontaco) FROM stdin;
\.


--
-- Data for Name: tipodescuento; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY tipodescuento (idtipodescuento, destipodescuento) FROM stdin;
\.


--
-- Data for Name: tipoestante; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY tipoestante (id_tipoestante, destipoestante) FROM stdin;
\.


--
-- Data for Name: tipomovimiento; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY tipomovimiento (idtipomovimiento, destipomovimiento) FROM stdin;
\.


--
-- Data for Name: tipopago; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY tipopago (idtipopago, desctipopago) FROM stdin;
\.


--
-- Data for Name: tipopersona; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY tipopersona (idtipociente, tip_idtipociente, destipopersona) FROM stdin;
\.


--
-- Data for Name: tipoproducto; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY tipoproducto (idtipoprodcuto, destipoproducto) FROM stdin;
\.


--
-- Data for Name: tipotarjeta; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY tipotarjeta (idtipotarjeta, destarjeta) FROM stdin;
\.


--
-- Data for Name: tipotransaccion; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY tipotransaccion (idtipotransaccion, destipotransaccion) FROM stdin;
\.


--
-- Data for Name: transaccion; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY transaccion (numerotransaccion, idempleado, tra_numerotransaccion, idtipotransaccion, idpersona, fecha_transaccion, hora_transaccion, descuentotransaccion, totaltransaccion, facturaasociada) FROM stdin;
\.


--
-- Data for Name: ubicacion; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY ubicacion (idubicacion, idestante, nombreubicacion) FROM stdin;
\.


--
-- Name: pk_banco; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY banco
    ADD CONSTRAINT pk_banco PRIMARY KEY (id_banco);


--
-- Name: pk_cargo; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY cargo
    ADD CONSTRAINT pk_cargo PRIMARY KEY (idcargo);


--
-- Name: pk_cargoempleado; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY cargoempleado
    ADD CONSTRAINT pk_cargoempleado PRIMARY KEY (idcargo, idempleado);


--
-- Name: pk_catalogoproductos; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY catalogoproductos
    ADD CONSTRAINT pk_catalogoproductos PRIMARY KEY (idreferencia);


--
-- Name: pk_contacto; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY contacto
    ADD CONSTRAINT pk_contacto PRIMARY KEY (idtipocontacto, idpersona);


--
-- Name: pk_descuento; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY descuento
    ADD CONSTRAINT pk_descuento PRIMARY KEY (idtipodescuento, idtipociente);


--
-- Name: pk_detalletransaccion; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY detalletransaccion
    ADD CONSTRAINT pk_detalletransaccion PRIMARY KEY (numerotransaccion, facturacion, pedido);


--
-- Name: pk_distribucion; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY distribucion
    ADD CONSTRAINT pk_distribucion PRIMARY KEY (idpersona, idreferencia);


--
-- Name: pk_empleado; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT pk_empleado PRIMARY KEY (idempleado);


--
-- Name: pk_estante; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY estante
    ADD CONSTRAINT pk_estante PRIMARY KEY (idestante);


--
-- Name: pk_historicoprecio; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY historicoprecio
    ADD CONSTRAINT pk_historicoprecio PRIMARY KEY (consechistoricoprecio);


--
-- Name: pk_inventario; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY inventario
    ADD CONSTRAINT pk_inventario PRIMARY KEY (idtipomovimiento, numerotransaccion, facturacion, pedido);


--
-- Name: pk_marca; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY marca
    ADD CONSTRAINT pk_marca PRIMARY KEY (idmarca);


--
-- Name: pk_pago; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY pago
    ADD CONSTRAINT pk_pago PRIMARY KEY (idpago);


--
-- Name: pk_persona; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT pk_persona PRIMARY KEY (idpersona);


--
-- Name: pk_tipocliente; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY tipocliente
    ADD CONSTRAINT pk_tipocliente PRIMARY KEY (idtipociente, idpersona);


--
-- Name: pk_tipocontacto; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY tipocontacto
    ADD CONSTRAINT pk_tipocontacto PRIMARY KEY (idtipocontacto);


--
-- Name: pk_tipodescuento; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY tipodescuento
    ADD CONSTRAINT pk_tipodescuento PRIMARY KEY (idtipodescuento);


--
-- Name: pk_tipoestante; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY tipoestante
    ADD CONSTRAINT pk_tipoestante PRIMARY KEY (id_tipoestante);


--
-- Name: pk_tipomovimiento; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY tipomovimiento
    ADD CONSTRAINT pk_tipomovimiento PRIMARY KEY (idtipomovimiento);


--
-- Name: pk_tipopago; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY tipopago
    ADD CONSTRAINT pk_tipopago PRIMARY KEY (idtipopago);


--
-- Name: pk_tipopersona; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY tipopersona
    ADD CONSTRAINT pk_tipopersona PRIMARY KEY (idtipociente);


--
-- Name: pk_tipoproducto; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY tipoproducto
    ADD CONSTRAINT pk_tipoproducto PRIMARY KEY (idtipoprodcuto);


--
-- Name: pk_tipotarjeta; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY tipotarjeta
    ADD CONSTRAINT pk_tipotarjeta PRIMARY KEY (idtipotarjeta);


--
-- Name: pk_tipotransaccion; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY tipotransaccion
    ADD CONSTRAINT pk_tipotransaccion PRIMARY KEY (idtipotransaccion);


--
-- Name: pk_transaccion; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY transaccion
    ADD CONSTRAINT pk_transaccion PRIMARY KEY (numerotransaccion);


--
-- Name: pk_ubicacion; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY ubicacion
    ADD CONSTRAINT pk_ubicacion PRIMARY KEY (idubicacion);


--
-- Name: banco_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX banco_pk ON banco USING btree (id_banco);


--
-- Name: cargo_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX cargo_pk ON cargo USING btree (idcargo);


--
-- Name: cargoempleado2_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX cargoempleado2_fk ON cargoempleado USING btree (idempleado);


--
-- Name: cargoempleado_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX cargoempleado_fk ON cargoempleado USING btree (idcargo);


--
-- Name: cargoempleado_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX cargoempleado_pk ON cargoempleado USING btree (idcargo, idempleado);


--
-- Name: catalogoproductos_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX catalogoproductos_pk ON catalogoproductos USING btree (idreferencia);


--
-- Name: catalogotipo_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX catalogotipo_fk ON catalogoproductos USING btree (idtipoprodcuto);


--
-- Name: clasificacionestante_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX clasificacionestante_fk ON estante USING btree (id_tipoestante);


--
-- Name: clienteoproveedor_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX clienteoproveedor_fk ON transaccion USING btree (idpersona);


--
-- Name: contacto2_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX contacto2_fk ON contacto USING btree (idpersona);


--
-- Name: contacto_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX contacto_fk ON contacto USING btree (idtipocontacto);


--
-- Name: contacto_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX contacto_pk ON contacto USING btree (idtipocontacto, idpersona);


--
-- Name: descuento2_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX descuento2_fk ON descuento USING btree (idtipociente);


--
-- Name: descuento_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX descuento_fk ON descuento USING btree (idtipodescuento);


--
-- Name: descuento_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX descuento_pk ON descuento USING btree (idtipodescuento, idtipociente);


--
-- Name: detallestransaccion_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX detallestransaccion_fk ON detalletransaccion USING btree (numerotransaccion);


--
-- Name: detalletransaccion_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX detalletransaccion_pk ON detalletransaccion USING btree (numerotransaccion, facturacion, pedido);


--
-- Name: distribucion2_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX distribucion2_fk ON distribucion USING btree (idreferencia);


--
-- Name: distribucion_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX distribucion_fk ON distribucion USING btree (idpersona);


--
-- Name: distribucion_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX distribucion_pk ON distribucion USING btree (idpersona, idreferencia);


--
-- Name: empleado_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX empleado_pk ON empleado USING btree (idempleado);


--
-- Name: empleadopago_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX empleadopago_fk ON pago USING btree (idempleado);


--
-- Name: estante_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX estante_pk ON estante USING btree (idestante);


--
-- Name: facturano_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX facturano_fk ON pago USING btree (numerotransaccion);


--
-- Name: hilotipopersona_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX hilotipopersona_fk ON tipopersona USING btree (tip_idtipociente);


--
-- Name: hilotransaccion_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX hilotransaccion_fk ON transaccion USING btree (tra_numerotransaccion);


--
-- Name: historicoprecio_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX historicoprecio_pk ON historicoprecio USING btree (consechistoricoprecio);


--
-- Name: inventario2_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX inventario2_fk ON inventario USING btree (numerotransaccion, facturacion, pedido);


--
-- Name: inventario_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX inventario_fk ON inventario USING btree (idtipomovimiento);


--
-- Name: inventario_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX inventario_pk ON inventario USING btree (idtipomovimiento, numerotransaccion, facturacion, pedido);


--
-- Name: marca_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX marca_pk ON marca USING btree (idmarca);


--
-- Name: marcacatalogo_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX marcacatalogo_fk ON catalogoproductos USING btree (idmarca);


--
-- Name: pago_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX pago_pk ON pago USING btree (idpago);


--
-- Name: pagobanco_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX pagobanco_fk ON pago USING btree (id_banco);


--
-- Name: persona_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX persona_pk ON persona USING btree (idpersona);


--
-- Name: preciocatalogo_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX preciocatalogo_fk ON historicoprecio USING btree (idreferencia);


--
-- Name: referenciaestante_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX referenciaestante_fk ON estante USING btree (idreferencia);


--
-- Name: referenciaproducto_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX referenciaproducto_fk ON detalletransaccion USING btree (idreferencia);


--
-- Name: relempleadotransaccion_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX relempleadotransaccion_fk ON transaccion USING btree (idempleado);


--
-- Name: relpagotipo_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX relpagotipo_fk ON pago USING btree (idtipopago);


--
-- Name: reltransacciontipo_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX reltransacciontipo_fk ON transaccion USING btree (idtipotransaccion);


--
-- Name: tarjetapago_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX tarjetapago_fk ON pago USING btree (idtipotarjeta);


--
-- Name: tipocliente2_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX tipocliente2_fk ON tipocliente USING btree (idpersona);


--
-- Name: tipocliente_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX tipocliente_fk ON tipocliente USING btree (idtipociente);


--
-- Name: tipocliente_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX tipocliente_pk ON tipocliente USING btree (idtipociente, idpersona);


--
-- Name: tipocontacto_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX tipocontacto_pk ON tipocontacto USING btree (idtipocontacto);


--
-- Name: tipodescuento_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX tipodescuento_pk ON tipodescuento USING btree (idtipodescuento);


--
-- Name: tipoestante_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX tipoestante_pk ON tipoestante USING btree (id_tipoestante);


--
-- Name: tipomovimiento_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX tipomovimiento_pk ON tipomovimiento USING btree (idtipomovimiento);


--
-- Name: tipopago_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX tipopago_pk ON tipopago USING btree (idtipopago);


--
-- Name: tipopersona_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX tipopersona_pk ON tipopersona USING btree (idtipociente);


--
-- Name: tipoproducto_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX tipoproducto_pk ON tipoproducto USING btree (idtipoprodcuto);


--
-- Name: tipotarjeta_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX tipotarjeta_pk ON tipotarjeta USING btree (idtipotarjeta);


--
-- Name: tipotransaccion_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX tipotransaccion_pk ON tipotransaccion USING btree (idtipotransaccion);


--
-- Name: transaccion_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX transaccion_pk ON transaccion USING btree (numerotransaccion);


--
-- Name: ubicacion_pk; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX ubicacion_pk ON ubicacion USING btree (idubicacion);


--
-- Name: ubicacionestante_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX ubicacionestante_fk ON ubicacion USING btree (idestante);


--
-- Name: ubicacionestantes_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX ubicacionestantes_fk ON estante USING btree (est_idestante);


--
-- Name: fk_cargoemp_cargoempl_cargo; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY cargoempleado
    ADD CONSTRAINT fk_cargoemp_cargoempl_cargo FOREIGN KEY (idcargo) REFERENCES cargo(idcargo) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_cargoemp_cargoempl_empleado; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY cargoempleado
    ADD CONSTRAINT fk_cargoemp_cargoempl_empleado FOREIGN KEY (idempleado) REFERENCES empleado(idempleado) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_catalogo_catalogot_tipoprod; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY catalogoproductos
    ADD CONSTRAINT fk_catalogo_catalogot_tipoprod FOREIGN KEY (idtipoprodcuto) REFERENCES tipoproducto(idtipoprodcuto) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_catalogo_marcacata_marca; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY catalogoproductos
    ADD CONSTRAINT fk_catalogo_marcacata_marca FOREIGN KEY (idmarca) REFERENCES marca(idmarca) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_contacto_contacto2_persona; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY contacto
    ADD CONSTRAINT fk_contacto_contacto2_persona FOREIGN KEY (idpersona) REFERENCES persona(idpersona) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_contacto_contacto_tipocont; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY contacto
    ADD CONSTRAINT fk_contacto_contacto_tipocont FOREIGN KEY (idtipocontacto) REFERENCES tipocontacto(idtipocontacto) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_descuent_descuento_tipodesc; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY descuento
    ADD CONSTRAINT fk_descuent_descuento_tipodesc FOREIGN KEY (idtipodescuento) REFERENCES tipodescuento(idtipodescuento) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_descuent_descuento_tipopers; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY descuento
    ADD CONSTRAINT fk_descuent_descuento_tipopers FOREIGN KEY (idtipociente) REFERENCES tipopersona(idtipociente) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_detallet_detallest_transacc; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY detalletransaccion
    ADD CONSTRAINT fk_detallet_detallest_transacc FOREIGN KEY (numerotransaccion) REFERENCES transaccion(numerotransaccion) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_detallet_referenci_catalogo; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY detalletransaccion
    ADD CONSTRAINT fk_detallet_referenci_catalogo FOREIGN KEY (idreferencia) REFERENCES catalogoproductos(idreferencia) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_distribu_distribuc_catalogo; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY distribucion
    ADD CONSTRAINT fk_distribu_distribuc_catalogo FOREIGN KEY (idreferencia) REFERENCES catalogoproductos(idreferencia) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_distribu_distribuc_persona; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY distribucion
    ADD CONSTRAINT fk_distribu_distribuc_persona FOREIGN KEY (idpersona) REFERENCES persona(idpersona) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_estante_clasifica_tipoesta; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY estante
    ADD CONSTRAINT fk_estante_clasifica_tipoesta FOREIGN KEY (id_tipoestante) REFERENCES tipoestante(id_tipoestante) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_estante_referenci_catalogo; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY estante
    ADD CONSTRAINT fk_estante_referenci_catalogo FOREIGN KEY (idreferencia) REFERENCES catalogoproductos(idreferencia) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_estante_ubicacion_estante; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY estante
    ADD CONSTRAINT fk_estante_ubicacion_estante FOREIGN KEY (est_idestante) REFERENCES estante(idestante) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_historic_preciocat_catalogo; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY historicoprecio
    ADD CONSTRAINT fk_historic_preciocat_catalogo FOREIGN KEY (idreferencia) REFERENCES catalogoproductos(idreferencia) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_inventar_inventari_detallet; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY inventario
    ADD CONSTRAINT fk_inventar_inventari_detallet FOREIGN KEY (numerotransaccion, facturacion, pedido) REFERENCES detalletransaccion(numerotransaccion, facturacion, pedido) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_inventar_inventari_tipomovi; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY inventario
    ADD CONSTRAINT fk_inventar_inventari_tipomovi FOREIGN KEY (idtipomovimiento) REFERENCES tipomovimiento(idtipomovimiento) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_pago_empleadop_empleado; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY pago
    ADD CONSTRAINT fk_pago_empleadop_empleado FOREIGN KEY (idempleado) REFERENCES empleado(idempleado) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_pago_facturano_transacc; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY pago
    ADD CONSTRAINT fk_pago_facturano_transacc FOREIGN KEY (numerotransaccion) REFERENCES transaccion(numerotransaccion) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_pago_pagobanco_banco; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY pago
    ADD CONSTRAINT fk_pago_pagobanco_banco FOREIGN KEY (id_banco) REFERENCES banco(id_banco) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_pago_relpagoti_tipopago; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY pago
    ADD CONSTRAINT fk_pago_relpagoti_tipopago FOREIGN KEY (idtipopago) REFERENCES tipopago(idtipopago) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_tipoclie_tipoclien_persona; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY tipocliente
    ADD CONSTRAINT fk_tipoclie_tipoclien_persona FOREIGN KEY (idpersona) REFERENCES persona(idpersona) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_tipoclie_tipoclien_tipopers; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY tipocliente
    ADD CONSTRAINT fk_tipoclie_tipoclien_tipopers FOREIGN KEY (idtipociente) REFERENCES tipopersona(idtipociente) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_tipopers_hilotipop_tipopers; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY tipopersona
    ADD CONSTRAINT fk_tipopers_hilotipop_tipopers FOREIGN KEY (tip_idtipociente) REFERENCES tipopersona(idtipociente) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_transacc_clienteop_persona; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY transaccion
    ADD CONSTRAINT fk_transacc_clienteop_persona FOREIGN KEY (idpersona) REFERENCES persona(idpersona) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_transacc_hilotrans_transacc; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY transaccion
    ADD CONSTRAINT fk_transacc_hilotrans_transacc FOREIGN KEY (tra_numerotransaccion) REFERENCES transaccion(numerotransaccion) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_transacc_relemplea_empleado; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY transaccion
    ADD CONSTRAINT fk_transacc_relemplea_empleado FOREIGN KEY (idempleado) REFERENCES empleado(idempleado) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_transacc_reltransa_tipotran; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY transaccion
    ADD CONSTRAINT fk_transacc_reltransa_tipotran FOREIGN KEY (idtipotransaccion) REFERENCES tipotransaccion(idtipotransaccion) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_ubicacio_ubicacion_estante; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY ubicacion
    ADD CONSTRAINT fk_ubicacio_ubicacion_estante FOREIGN KEY (idestante) REFERENCES estante(idestante) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

