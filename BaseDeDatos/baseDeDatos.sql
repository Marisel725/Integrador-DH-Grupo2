--Creación de productos y categorías
CREATE TABLE IF NOT EXISTS Categoria (
    ID_Categoria SERIAL PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Producto (
    ID_producto SERIAL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Descripcion VARCHAR(255),
	ID_Categoria INTEGER NOT NULL,
    CONSTRAINT fk_Categoria
        FOREIGN KEY(ID_Categoria) 
        REFERENCES Categoria(ID_Categoria)
        ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS imagen (
    ID_imagen SERIAL PRIMARY KEY,
    ID_producto INTEGER NOT NULL,
    titulo VARCHAR(255),
    urlimg VARCHAR(255),
    CONSTRAINT fk_producto
        FOREIGN KEY(ID_producto) 
        REFERENCES producto(ID_producto)
        ON DELETE CASCADE
);

