/*==============================================================*/
/* DBMS name:      SAP SQL Anywhere 16                          */
/* Created on:     9/12/2016 20:59:31                           */
/*==============================================================*/




/*==============================================================*/
/* Table: BANCO                                                 */
/*==============================================================*/
create table BANCO 
(
   ID_BANCO             numeric(10,0)                  not null,
   NOMBANCO             varchar(50)                    not null,
   constraint PK_BANCO primary key (ID_BANCO)
);

/*==============================================================*/
/* Index: BANCO_PK                                              */
/*==============================================================*/
create unique index BANCO_PK on BANCO (
ID_BANCO ASC
);

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO 
(
   IDCARGO              numeric(10,0)                  not null,
   DESCARGO             varchar(20)                    not null,
   constraint PK_CARGO primary key (IDCARGO)
);

/*==============================================================*/
/* Index: CARGO_PK                                              */
/*==============================================================*/
create unique index CARGO_PK on CARGO (
IDCARGO ASC
);

/*==============================================================*/
/* Table: CARGOEMPLEADO                                         */
/*==============================================================*/
create table CARGOEMPLEADO 
(
   IDCARGO              numeric(10,0)                  not null,
   IDEMPLEADO           numeric(10,0)                  not null,
   constraint PK_CARGOEMPLEADO primary key (IDCARGO, IDEMPLEADO)
);

/*==============================================================*/
/* Index: CARGOEMPLEADO_PK                                      */
/*==============================================================*/
create unique index CARGOEMPLEADO_PK on CARGOEMPLEADO (
IDCARGO ASC,
IDEMPLEADO ASC
);

/*==============================================================*/
/* Index: CARGOEMPLEADO2_FK                                     */
/*==============================================================*/
create index CARGOEMPLEADO2_FK on CARGOEMPLEADO (
IDEMPLEADO ASC
);

/*==============================================================*/
/* Index: CARGOEMPLEADO_FK                                      */
/*==============================================================*/
create index CARGOEMPLEADO_FK on CARGOEMPLEADO (
IDCARGO ASC
);

/*==============================================================*/
/* Table: CATALOGOPRODUCTOS                                     */
/*==============================================================*/
create table CATALOGOPRODUCTOS 
(
   IDREFERENCIA         numeric(40,0)                  not null,
   IDTIPOPRODCUTO       numeric(20,0)                  not null,
   IDMARCA              numeric(20,0)                  not null,
   DESREFERENCIA        varchar(40)                    not null,
   constraint PK_CATALOGOPRODUCTOS primary key (IDREFERENCIA)
);

/*==============================================================*/
/* Index: CATALOGOPRODUCTOS_PK                                  */
/*==============================================================*/
create unique index CATALOGOPRODUCTOS_PK on CATALOGOPRODUCTOS (
IDREFERENCIA ASC
);

/*==============================================================*/
/* Index: CATALOGOTIPO_FK                                       */
/*==============================================================*/
create index CATALOGOTIPO_FK on CATALOGOPRODUCTOS (
IDTIPOPRODCUTO ASC
);

/*==============================================================*/
/* Index: MARCACATALOGO_FK                                      */
/*==============================================================*/
create index MARCACATALOGO_FK on CATALOGOPRODUCTOS (
IDMARCA ASC
);

/*==============================================================*/
/* Table: CONTACTO                                              */
/*==============================================================*/
create table CONTACTO 
(
   IDTIPOCONTACTO       numeric(20,0)                  not null,
   IDPERSONA            numeric(11,0)                  not null,
   constraint PK_CONTACTO primary key (IDTIPOCONTACTO, IDPERSONA)
);

/*==============================================================*/
/* Index: CONTACTO_PK                                           */
/*==============================================================*/
create unique index CONTACTO_PK on CONTACTO (
IDTIPOCONTACTO ASC,
IDPERSONA ASC
);

/*==============================================================*/
/* Index: CONTACTO2_FK                                          */
/*==============================================================*/
create index CONTACTO2_FK on CONTACTO (
IDPERSONA ASC
);

/*==============================================================*/
/* Index: CONTACTO_FK                                           */
/*==============================================================*/
create index CONTACTO_FK on CONTACTO (
IDTIPOCONTACTO ASC
);

/*==============================================================*/
/* Table: DESCUENTO                                             */
/*==============================================================*/
create table DESCUENTO 
(
   IDTIPODESCUENTO      numeric(10,0)                  not null,
   IDTIPOCIENTE         numeric(20,0)                  not null,
   constraint PK_DESCUENTO primary key (IDTIPODESCUENTO, IDTIPOCIENTE)
);

/*==============================================================*/
/* Index: DESCUENTO_PK                                          */
/*==============================================================*/
create unique index DESCUENTO_PK on DESCUENTO (
IDTIPODESCUENTO ASC,
IDTIPOCIENTE ASC
);

/*==============================================================*/
/* Index: DESCUENTO2_FK                                         */
/*==============================================================*/
create index DESCUENTO2_FK on DESCUENTO (
IDTIPOCIENTE ASC
);

/*==============================================================*/
/* Index: DESCUENTO_FK                                          */
/*==============================================================*/
create index DESCUENTO_FK on DESCUENTO (
IDTIPODESCUENTO ASC
);

/*==============================================================*/
/* Table: DETALLETRANSACCION                                    */
/*==============================================================*/
create table DETALLETRANSACCION 
(
   NUMEROTRANSACCION    numeric(100,0)                 not null,
   FACTURACION          numeric(10,0)                  not null,
   PEDIDO               numeric(10,0)                  not null,
   IDREFERENCIA         numeric(40,0)                  not null,
   DESDETALLETRANSACCION varchar(30)                    not null,
   constraint PK_DETALLETRANSACCION primary key (NUMEROTRANSACCION, FACTURACION, PEDIDO)
);

/*==============================================================*/
/* Index: DETALLETRANSACCION_PK                                 */
/*==============================================================*/
create unique index DETALLETRANSACCION_PK on DETALLETRANSACCION (
NUMEROTRANSACCION ASC,
FACTURACION ASC,
PEDIDO ASC
);

/*==============================================================*/
/* Index: DETALLESTRANSACCION_FK                                */
/*==============================================================*/
create index DETALLESTRANSACCION_FK on DETALLETRANSACCION (
NUMEROTRANSACCION ASC
);

/*==============================================================*/
/* Index: REFERENCIAPRODUCTO_FK                                 */
/*==============================================================*/
create index REFERENCIAPRODUCTO_FK on DETALLETRANSACCION (
IDREFERENCIA ASC
);

/*==============================================================*/
/* Table: DISTRIBUCION                                          */
/*==============================================================*/
create table DISTRIBUCION 
(
   IDPERSONA            numeric(11,0)                  not null,
   IDREFERENCIA         numeric(40,0)                  not null,
   constraint PK_DISTRIBUCION primary key (IDPERSONA, IDREFERENCIA)
);

/*==============================================================*/
/* Index: DISTRIBUCION_PK                                       */
/*==============================================================*/
create unique index DISTRIBUCION_PK on DISTRIBUCION (
IDPERSONA ASC,
IDREFERENCIA ASC
);

/*==============================================================*/
/* Index: DISTRIBUCION2_FK                                      */
/*==============================================================*/
create index DISTRIBUCION2_FK on DISTRIBUCION (
IDREFERENCIA ASC
);

/*==============================================================*/
/* Index: DISTRIBUCION_FK                                       */
/*==============================================================*/
create index DISTRIBUCION_FK on DISTRIBUCION (
IDPERSONA ASC
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO 
(
   IDEMPLEADO           numeric(10,0)                  not null,
   NOMEMPLEADO          varchar(25)                    not null,
   APEEMPLEADO          varchar(25)                    not null,
   constraint PK_EMPLEADO primary key (IDEMPLEADO)
);

/*==============================================================*/
/* Index: EMPLEADO_PK                                           */
/*==============================================================*/
create unique index EMPLEADO_PK on EMPLEADO (
IDEMPLEADO ASC
);

/*==============================================================*/
/* Table: ESTANTE                                               */
/*==============================================================*/
create table ESTANTE 
(
   IDESTANTE            numeric(10,0)                  not null,
   IDREFERENCIA         numeric(40,0)                  null,
   ID_TIPOESTANTE       numeric(10)                    not null,
   EST_IDESTANTE        numeric(10,0)                  null,
   DESESTANTE           varchar(30)                    not null,
   constraint PK_ESTANTE primary key (IDESTANTE)
);

/*==============================================================*/
/* Index: ESTANTE_PK                                            */
/*==============================================================*/
create unique index ESTANTE_PK on ESTANTE (
IDESTANTE ASC
);

/*==============================================================*/
/* Index: REFERENCIAESTANTE_FK                                  */
/*==============================================================*/
create index REFERENCIAESTANTE_FK on ESTANTE (
IDREFERENCIA ASC
);

/*==============================================================*/
/* Index: CLASIFICACIONESTANTE_FK                               */
/*==============================================================*/
create index CLASIFICACIONESTANTE_FK on ESTANTE (
ID_TIPOESTANTE ASC
);

/*==============================================================*/
/* Index: UBICACIONESTANTES_FK                                  */
/*==============================================================*/
create index UBICACIONESTANTES_FK on ESTANTE (
EST_IDESTANTE ASC
);

/*==============================================================*/
/* Table: HISTORICOPRECIO                                       */
/*==============================================================*/
create table HISTORICOPRECIO 
(
   CONSECHISTORICOPRECIO numeric(20)                    not null,
   IDREFERENCIA         numeric(40,0)                  not null,
   FECHAINICIO          date                           not null,
   PRECIOVENTA          numeric(10,0)                  not null,
   IMPUESTO             numeric(10,0)                  null,
   constraint PK_HISTORICOPRECIO primary key (CONSECHISTORICOPRECIO)
);

/*==============================================================*/
/* Index: HISTORICOPRECIO_PK                                    */
/*==============================================================*/
create unique index HISTORICOPRECIO_PK on HISTORICOPRECIO (
CONSECHISTORICOPRECIO ASC
);

/*==============================================================*/
/* Index: PRECIOCATALOGO_FK                                     */
/*==============================================================*/
create index PRECIOCATALOGO_FK on HISTORICOPRECIO (
IDREFERENCIA ASC
);

/*==============================================================*/
/* Table: INVENTARIO                                            */
/*==============================================================*/
create table INVENTARIO 
(
   IDTIPOMOVIMIENTO     numeric(10,0)                  not null,
   NUMEROTRANSACCION    numeric(100,0)                 not null,
   FACTURACION          numeric(10,0)                  not null,
   PEDIDO               numeric(10,0)                  not null,
   constraint PK_INVENTARIO primary key (IDTIPOMOVIMIENTO, NUMEROTRANSACCION, FACTURACION, PEDIDO)
);

/*==============================================================*/
/* Index: INVENTARIO_PK                                         */
/*==============================================================*/
create unique index INVENTARIO_PK on INVENTARIO (
IDTIPOMOVIMIENTO ASC,
NUMEROTRANSACCION ASC,
FACTURACION ASC,
PEDIDO ASC
);

/*==============================================================*/
/* Index: INVENTARIO2_FK                                        */
/*==============================================================*/
create index INVENTARIO2_FK on INVENTARIO (
NUMEROTRANSACCION ASC,
FACTURACION ASC,
PEDIDO ASC
);

/*==============================================================*/
/* Index: INVENTARIO_FK                                         */
/*==============================================================*/
create index INVENTARIO_FK on INVENTARIO (
IDTIPOMOVIMIENTO ASC
);

/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA 
(
   IDMARCA              numeric(20,0)                  not null,
   NOMBREMARCA          varchar(40)                    not null,
   constraint PK_MARCA primary key (IDMARCA)
);

/*==============================================================*/
/* Index: MARCA_PK                                              */
/*==============================================================*/
create unique index MARCA_PK on MARCA (
IDMARCA ASC
);

/*==============================================================*/
/* Table: PAGO                                                  */
/*==============================================================*/
create table PAGO 
(
   IDPAGO               numeric(50,0)                  not null,
   NUMEROTRANSACCION    numeric(100,0)                 not null,
   IDTIPOTARJETA        numeric                        not null,
   IDTIPOPAGO           numeric(4,0)                   not null,
   ID_BANCO             numeric(10,0)                  null,
   IDEMPLEADO           numeric(10,0)                  not null,
   DESPAGO              varchar(40)                    not null,
   constraint PK_PAGO primary key (IDPAGO)
);

/*==============================================================*/
/* Index: PAGO_PK                                               */
/*==============================================================*/
create unique index PAGO_PK on PAGO (
IDPAGO ASC
);

/*==============================================================*/
/* Index: FACTURANO_FK                                          */
/*==============================================================*/
create index FACTURANO_FK on PAGO (
NUMEROTRANSACCION ASC
);

/*==============================================================*/
/* Index: TARJETAPAGO_FK                                        */
/*==============================================================*/
create index TARJETAPAGO_FK on PAGO (
IDTIPOTARJETA ASC
);

/*==============================================================*/
/* Index: RELPAGOTIPO_FK                                        */
/*==============================================================*/
create index RELPAGOTIPO_FK on PAGO (
IDTIPOPAGO ASC
);

/*==============================================================*/
/* Index: PAGOBANCO_FK                                          */
/*==============================================================*/
create index PAGOBANCO_FK on PAGO (
ID_BANCO ASC
);

/*==============================================================*/
/* Index: EMPLEADOPAGO_FK                                       */
/*==============================================================*/
create index EMPLEADOPAGO_FK on PAGO (
IDEMPLEADO ASC
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA 
(
   IDPERSONA            numeric(11,0)                  not null,
   NOMPERSONA           varchar(40)                    not null,
   APEPERSONA           varchar(40)                    not null,
   constraint PK_PERSONA primary key (IDPERSONA)
);

/*==============================================================*/
/* Index: PERSONA_PK                                            */
/*==============================================================*/
create unique index PERSONA_PK on PERSONA (
IDPERSONA ASC
);

/*==============================================================*/
/* Table: TIPOCLIENTE                                           */
/*==============================================================*/
create table TIPOCLIENTE 
(
   IDTIPOCIENTE         numeric(20,0)                  not null,
   IDPERSONA            numeric(11,0)                  not null,
   constraint PK_TIPOCLIENTE primary key (IDTIPOCIENTE, IDPERSONA)
);

/*==============================================================*/
/* Index: TIPOCLIENTE_PK                                        */
/*==============================================================*/
create unique index TIPOCLIENTE_PK on TIPOCLIENTE (
IDTIPOCIENTE ASC,
IDPERSONA ASC
);

/*==============================================================*/
/* Index: TIPOCLIENTE2_FK                                       */
/*==============================================================*/
create index TIPOCLIENTE2_FK on TIPOCLIENTE (
IDPERSONA ASC
);

/*==============================================================*/
/* Index: TIPOCLIENTE_FK                                        */
/*==============================================================*/
create index TIPOCLIENTE_FK on TIPOCLIENTE (
IDTIPOCIENTE ASC
);

/*==============================================================*/
/* Table: TIPOCONTACTO                                          */
/*==============================================================*/
create table TIPOCONTACTO 
(
   IDTIPOCONTACTO       numeric(20,0)                  not null,
   DESTIPOCONTACO       varchar(40)                    not null,
   constraint PK_TIPOCONTACTO primary key (IDTIPOCONTACTO)
);

/*==============================================================*/
/* Index: TIPOCONTACTO_PK                                       */
/*==============================================================*/
create unique index TIPOCONTACTO_PK on TIPOCONTACTO (
IDTIPOCONTACTO ASC
);

/*==============================================================*/
/* Table: TIPODESCUENTO                                         */
/*==============================================================*/
create table TIPODESCUENTO 
(
   IDTIPODESCUENTO      numeric(10,0)                  not null,
   DESTIPODESCUENTO     varchar(30)                    not null,
   constraint PK_TIPODESCUENTO primary key (IDTIPODESCUENTO)
);

/*==============================================================*/
/* Index: TIPODESCUENTO_PK                                      */
/*==============================================================*/
create unique index TIPODESCUENTO_PK on TIPODESCUENTO (
IDTIPODESCUENTO ASC
);

/*==============================================================*/
/* Table: TIPOESTANTE                                           */
/*==============================================================*/
create table TIPOESTANTE 
(
   ID_TIPOESTANTE       numeric(10)                    not null,
   DESTIPOESTANTE       varchar(40)                    not null,
   constraint PK_TIPOESTANTE primary key (ID_TIPOESTANTE)
);

/*==============================================================*/
/* Index: TIPOESTANTE_PK                                        */
/*==============================================================*/
create unique index TIPOESTANTE_PK on TIPOESTANTE (
ID_TIPOESTANTE ASC
);

/*==============================================================*/
/* Table: TIPOMOVIMIENTO                                        */
/*==============================================================*/
create table TIPOMOVIMIENTO 
(
   IDTIPOMOVIMIENTO     numeric(10,0)                  not null,
   DESTIPOMOVIMIENTO    varchar(40)                    not null,
   constraint PK_TIPOMOVIMIENTO primary key (IDTIPOMOVIMIENTO)
);

/*==============================================================*/
/* Index: TIPOMOVIMIENTO_PK                                     */
/*==============================================================*/
create unique index TIPOMOVIMIENTO_PK on TIPOMOVIMIENTO (
IDTIPOMOVIMIENTO ASC
);

/*==============================================================*/
/* Table: TIPOPAGO                                              */
/*==============================================================*/
create table TIPOPAGO 
(
   IDTIPOPAGO           numeric(4,0)                   not null,
   DESCTIPOPAGO         varchar(20)                    not null,
   constraint PK_TIPOPAGO primary key (IDTIPOPAGO)
);

/*==============================================================*/
/* Index: TIPOPAGO_PK                                           */
/*==============================================================*/
create unique index TIPOPAGO_PK on TIPOPAGO (
IDTIPOPAGO ASC
);

/*==============================================================*/
/* Table: TIPOPERSONA                                           */
/*==============================================================*/
create table TIPOPERSONA 
(
   IDTIPOCIENTE         numeric(20,0)                  not null,
   TIP_IDTIPOCIENTE     numeric(20,0)                  null,
   DESTIPOPERSONA       varchar(40)                    not null,
   constraint PK_TIPOPERSONA primary key (IDTIPOCIENTE)
);

/*==============================================================*/
/* Index: TIPOPERSONA_PK                                        */
/*==============================================================*/
create unique index TIPOPERSONA_PK on TIPOPERSONA (
IDTIPOCIENTE ASC
);

/*==============================================================*/
/* Index: HILOTIPOPERSONA_FK                                    */
/*==============================================================*/
create index HILOTIPOPERSONA_FK on TIPOPERSONA (
TIP_IDTIPOCIENTE ASC
);

/*==============================================================*/
/* Table: TIPOPRODUCTO                                          */
/*==============================================================*/
create table TIPOPRODUCTO 
(
   IDTIPOPRODCUTO       numeric(20,0)                  not null,
   DESTIPOPRODUCTO      varchar(40)                    not null,
   constraint PK_TIPOPRODUCTO primary key (IDTIPOPRODCUTO)
);

/*==============================================================*/
/* Index: TIPOPRODUCTO_PK                                       */
/*==============================================================*/
create unique index TIPOPRODUCTO_PK on TIPOPRODUCTO (
IDTIPOPRODCUTO ASC
);

/*==============================================================*/
/* Table: TIPOTARJETA                                           */
/*==============================================================*/
create table TIPOTARJETA 
(
   IDTIPOTARJETA        char(10)                       not null,
   DESTARJETA           varchar(20)                    not null,
   constraint PK_TIPOTARJETA primary key (IDTIPOTARJETA)
);

/*==============================================================*/
/* Index: TIPOTARJETA_PK                                        */
/*==============================================================*/
create unique index TIPOTARJETA_PK on TIPOTARJETA (
IDTIPOTARJETA ASC
);

/*==============================================================*/
/* Table: TIPOTRANSACCION                                       */
/*==============================================================*/
create table TIPOTRANSACCION 
(
   IDTIPOTRANSACCION    numeric(10,0)                  not null,
   DESTIPOTRANSACCION   varchar(40)                    not null,
   constraint PK_TIPOTRANSACCION primary key (IDTIPOTRANSACCION)
);

/*==============================================================*/
/* Index: TIPOTRANSACCION_PK                                    */
/*==============================================================*/
create unique index TIPOTRANSACCION_PK on TIPOTRANSACCION (
IDTIPOTRANSACCION ASC
);

/*==============================================================*/
/* Table: TRANSACCION                                           */
/*==============================================================*/
create table TRANSACCION 
(
   NUMEROTRANSACCION    numeric(100,0)                 not null,
   IDEMPLEADO           numeric(10,0)                  not null,
   TRA_NUMEROTRANSACCION numeric(100,0)                 null,
   IDTIPOTRANSACCION    numeric(10,0)                  not null,
   IDPERSONA            numeric(11,0)                  not null,
   FECHA_TRANSACCION    date                           not null,
   HORA_TRANSACCION     time                           not null,
   DESCUENTOTRANSACCION numeric(50)                    null,
   TOTALTRANSACCION     numeric(20,0)                  null,
   FACTURAASOCIADA      numeric(20,0)                  null,
   constraint PK_TRANSACCION primary key (NUMEROTRANSACCION)
);

/*==============================================================*/
/* Index: TRANSACCION_PK                                        */
/*==============================================================*/
create unique index TRANSACCION_PK on TRANSACCION (
NUMEROTRANSACCION ASC
);

/*==============================================================*/
/* Index: RELEMPLEADOTRANSACCION_FK                             */
/*==============================================================*/
create index RELEMPLEADOTRANSACCION_FK on TRANSACCION (
IDEMPLEADO ASC
);

/*==============================================================*/
/* Index: HILOTRANSACCION_FK                                    */
/*==============================================================*/
create index HILOTRANSACCION_FK on TRANSACCION (
TRA_NUMEROTRANSACCION ASC
);

/*==============================================================*/
/* Index: RELTRANSACCIONTIPO_FK                                 */
/*==============================================================*/
create index RELTRANSACCIONTIPO_FK on TRANSACCION (
IDTIPOTRANSACCION ASC
);

/*==============================================================*/
/* Index: CLIENTEOPROVEEDOR_FK                                  */
/*==============================================================*/
create index CLIENTEOPROVEEDOR_FK on TRANSACCION (
IDPERSONA ASC
);

/*==============================================================*/
/* Table: UBICACION                                             */
/*==============================================================*/
create table UBICACION 
(
   IDUBICACION          numeric(4)                     not null,
   IDESTANTE            numeric(10,0)                  null,
   NOMBREUBICACION      varchar(10)                    not null,
   constraint PK_UBICACION primary key (IDUBICACION)
);

/*==============================================================*/
/* Index: UBICACION_PK                                          */
/*==============================================================*/
create unique index UBICACION_PK on UBICACION (
IDUBICACION ASC
);

/*==============================================================*/
/* Index: UBICACIONESTANTE_FK                                   */
/*==============================================================*/
create index UBICACIONESTANTE_FK on UBICACION (
IDESTANTE ASC
);

alter table CARGOEMPLEADO
   add constraint FK_CARGOEMP_CARGOEMPL_CARGO foreign key (IDCARGO)
      references CARGO (IDCARGO)
      on update restrict
      on delete restrict;

alter table CARGOEMPLEADO
   add constraint FK_CARGOEMP_CARGOEMPL_EMPLEADO foreign key (IDEMPLEADO)
      references EMPLEADO (IDEMPLEADO)
      on update restrict
      on delete restrict;

alter table CATALOGOPRODUCTOS
   add constraint FK_CATALOGO_CATALOGOT_TIPOPROD foreign key (IDTIPOPRODCUTO)
      references TIPOPRODUCTO (IDTIPOPRODCUTO)
      on update restrict
      on delete restrict;

alter table CATALOGOPRODUCTOS
   add constraint FK_CATALOGO_MARCACATA_MARCA foreign key (IDMARCA)
      references MARCA (IDMARCA)
      on update restrict
      on delete restrict;

alter table CONTACTO
   add constraint FK_CONTACTO_CONTACTO_TIPOCONT foreign key (IDTIPOCONTACTO)
      references TIPOCONTACTO (IDTIPOCONTACTO)
      on update restrict
      on delete restrict;

alter table CONTACTO
   add constraint FK_CONTACTO_CONTACTO2_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA)
      on update restrict
      on delete restrict;

alter table DESCUENTO
   add constraint FK_DESCUENT_DESCUENTO_TIPODESC foreign key (IDTIPODESCUENTO)
      references TIPODESCUENTO (IDTIPODESCUENTO)
      on update restrict
      on delete restrict;

alter table DESCUENTO
   add constraint FK_DESCUENT_DESCUENTO_TIPOPERS foreign key (IDTIPOCIENTE)
      references TIPOPERSONA (IDTIPOCIENTE)
      on update restrict
      on delete restrict;

alter table DETALLETRANSACCION
   add constraint FK_DETALLET_DETALLEST_TRANSACC foreign key (NUMEROTRANSACCION)
      references TRANSACCION (NUMEROTRANSACCION)
      on update restrict
      on delete restrict;

alter table DETALLETRANSACCION
   add constraint FK_DETALLET_REFERENCI_CATALOGO foreign key (IDREFERENCIA)
      references CATALOGOPRODUCTOS (IDREFERENCIA)
      on update restrict
      on delete restrict;

alter table DISTRIBUCION
   add constraint FK_DISTRIBU_DISTRIBUC_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA)
      on update restrict
      on delete restrict;

alter table DISTRIBUCION
   add constraint FK_DISTRIBU_DISTRIBUC_CATALOGO foreign key (IDREFERENCIA)
      references CATALOGOPRODUCTOS (IDREFERENCIA)
      on update restrict
      on delete restrict;

alter table ESTANTE
   add constraint FK_ESTANTE_CLASIFICA_TIPOESTA foreign key (ID_TIPOESTANTE)
      references TIPOESTANTE (ID_TIPOESTANTE)
      on update restrict
      on delete restrict;

alter table ESTANTE
   add constraint FK_ESTANTE_REFERENCI_CATALOGO foreign key (IDREFERENCIA)
      references CATALOGOPRODUCTOS (IDREFERENCIA)
      on update restrict
      on delete restrict;

alter table ESTANTE
   add constraint FK_ESTANTE_UBICACION_ESTANTE foreign key (EST_IDESTANTE)
      references ESTANTE (IDESTANTE)
      on update restrict
      on delete restrict;

alter table HISTORICOPRECIO
   add constraint FK_HISTORIC_PRECIOCAT_CATALOGO foreign key (IDREFERENCIA)
      references CATALOGOPRODUCTOS (IDREFERENCIA)
      on update restrict
      on delete restrict;

alter table INVENTARIO
   add constraint FK_INVENTAR_INVENTARI_TIPOMOVI foreign key (IDTIPOMOVIMIENTO)
      references TIPOMOVIMIENTO (IDTIPOMOVIMIENTO)
      on update restrict
      on delete restrict;

alter table INVENTARIO
   add constraint FK_INVENTAR_INVENTARI_DETALLET foreign key (NUMEROTRANSACCION, FACTURACION, PEDIDO)
      references DETALLETRANSACCION (NUMEROTRANSACCION, FACTURACION, PEDIDO)
      on update restrict
      on delete restrict;

alter table PAGO
   add constraint FK_PAGO_EMPLEADOP_EMPLEADO foreign key (IDEMPLEADO)
      references EMPLEADO (IDEMPLEADO)
      on update restrict
      on delete restrict;

alter table PAGO
   add constraint FK_PAGO_FACTURANO_TRANSACC foreign key (NUMEROTRANSACCION)
      references TRANSACCION (NUMEROTRANSACCION)
      on update restrict
      on delete restrict;

alter table PAGO
   add constraint FK_PAGO_PAGOBANCO_BANCO foreign key (ID_BANCO)
      references BANCO (ID_BANCO)
      on update restrict
      on delete restrict;

alter table PAGO
   add constraint FK_PAGO_RELPAGOTI_TIPOPAGO foreign key (IDTIPOPAGO)
      references TIPOPAGO (IDTIPOPAGO)
      on update restrict
      on delete restrict;

alter table PAGO
   add constraint FK_PAGO_TARJETAPA_TIPOTARJ foreign key (IDTIPOTARJETA)
      references TIPOTARJETA (IDTIPOTARJETA)
      on update restrict
      on delete restrict;

alter table TIPOCLIENTE
   add constraint FK_TIPOCLIE_TIPOCLIEN_TIPOPERS foreign key (IDTIPOCIENTE)
      references TIPOPERSONA (IDTIPOCIENTE)
      on update restrict
      on delete restrict;

alter table TIPOCLIENTE
   add constraint FK_TIPOCLIE_TIPOCLIEN_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA)
      on update restrict
      on delete restrict;

alter table TIPOPERSONA
   add constraint FK_TIPOPERS_HILOTIPOP_TIPOPERS foreign key (TIP_IDTIPOCIENTE)
      references TIPOPERSONA (IDTIPOCIENTE)
      on update restrict
      on delete restrict;

alter table TRANSACCION
   add constraint FK_TRANSACC_CLIENTEOP_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA)
      on update restrict
      on delete restrict;

alter table TRANSACCION
   add constraint FK_TRANSACC_HILOTRANS_TRANSACC foreign key (TRA_NUMEROTRANSACCION)
      references TRANSACCION (NUMEROTRANSACCION)
      on update restrict
      on delete restrict;

alter table TRANSACCION
   add constraint FK_TRANSACC_RELEMPLEA_EMPLEADO foreign key (IDEMPLEADO)
      references EMPLEADO (IDEMPLEADO)
      on update restrict
      on delete restrict;

alter table TRANSACCION
   add constraint FK_TRANSACC_RELTRANSA_TIPOTRAN foreign key (IDTIPOTRANSACCION)
      references TIPOTRANSACCION (IDTIPOTRANSACCION)
      on update restrict
      on delete restrict;

alter table UBICACION
   add constraint FK_UBICACIO_UBICACION_ESTANTE foreign key (IDESTANTE)
      references ESTANTE (IDESTANTE)
      on update restrict
      on delete restrict;

