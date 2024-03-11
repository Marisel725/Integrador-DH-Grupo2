--Creación de productos y categorías
CREATE TABLE IF NOT EXISTS CATEGORIA (
    ID_Categoria SERIAL PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS PRODUCTO (
    ID_producto SERIAL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Descripcion VARCHAR(255),
	ID_Categoria INTEGER,
    CONSTRAINT fk_CATEGORIA
        FOREIGN KEY(ID_Categoria) 
        REFERENCES CATEGORIA(ID_Categoria)
        ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS IMAGEN (
    ID_imagen SERIAL PRIMARY KEY,
    ID_producto INTEGER NOT NULL,
    titulo VARCHAR(255),
    urlimg VARCHAR(255),
    CONSTRAINT fk_PRODUCTO
        FOREIGN KEY(ID_producto) 
        REFERENCES PRODUCTO(ID_producto)
        ON DELETE CASCADE
);

--Caracteristicas para los productos

CREATE TABLE IF NOT EXISTSE CARACTERISTICA (
    ID_Caracteristica SERIAL PRIMARY KEY,
    Descripcion varchar(255) NOT NULL,
    PRIMARY KEY (ID_Caracteristica)
);

CREATE TABLE ProductoCaracteristica (
    ID_producto int NOT NULL,
    ID_Caracteristica int NOT NULL,
    PRIMARY KEY (ID_producto, ID_Caracteristica),
    FOREIGN KEY (ID_producto) REFERENCES Producto(ID_producto) ON DELETE CASCADE,
    FOREIGN KEY (ID_Caracteristica) REFERENCES Caracteristica(ID_Caracteristica) ON DELETE CASCADE
);

--Creación de Usuario y Tipo de Usuario
CREATE TABLE IF NOT EXISTS tipo_usuario (
    ID_tipo_usuario SERIAL PRIMARY KEY,
    Tipo VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS USUARIO (
    ID_usuario SERIAL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Apellido VARCHAR(255) NOT NULL,
    Mail VARCHAR(255) NOT NULL,
	ID_tipo_usuario INTEGER,
    CONSTRAINT fk_USUARIO
        FOREIGN KEY(ID_tipo_usuario) 
        REFERENCES CATEGORIA(ID_tipo_usuario)
        ON DELETE CASCADE
);
