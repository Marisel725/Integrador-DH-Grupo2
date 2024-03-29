package com.ebikerrent.alquilerbicicletas.dto.entrada.producto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

import java.util.HashSet;
import java.util.Set;

@JsonIgnoreProperties(ignoreUnknown = true)
//es una anotación de Jackson, que es una biblioteca de Java para procesar JSON. Esta anotación se utiliza en la definición de clases de Java que se mapearán desde o hacia JSON, y su propósito es ignorar propiedades desconocidas durante la deserialización.
public class ProductoEntradaDto {
    @NotNull (message = "El nombre del producto no puede ser nula")
    @NotBlank(message = "El nombre debe especificarse")
    @Size(min = 1, max = 250)
    private String nombre;
    @NotNull(message = "La descripción del producto no puede ser nula")
    @NotBlank(message = "La descripción debe especificarse")
    @Size(min = 1, max = 250)
    private String descripcion;
    @Valid //Valida en su propia clase
    @JsonProperty("imagenes")
    private Set<ImagenEntradaDto> imagenEntradaDtos = new HashSet<>(); // AQUÍ COMO NOMBRE A LA CLASE LO TENÍA COMO IMAGEN

    @Valid//Valida en su propia clase
    @JsonProperty("categoria")
    private CategoriaEntradaDto categoriaEntradaDto;

    public ProductoEntradaDto(String nombre, String descripcion, Set<ImagenEntradaDto> imagenEntradaDtos, CategoriaEntradaDto categoriaEntradaDto) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.imagenEntradaDtos = imagenEntradaDtos;
        this.categoriaEntradaDto = categoriaEntradaDto;
    }

    public ProductoEntradaDto() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Set<ImagenEntradaDto> getImagenes() {
        return imagenEntradaDtos;
    }

    public void setImagen(Set<ImagenEntradaDto> imagenes) {
        this.imagenEntradaDtos = imagenes;
    }

    public CategoriaEntradaDto getCategoriaEntradaDto() {
        return categoriaEntradaDto;
    }

    public void setCategoriaEntradaDto(CategoriaEntradaDto categoriaEntradaDto) {
        this.categoriaEntradaDto = categoriaEntradaDto;
    }
}