// ignore_for_file: public_member_api_docs, sort_constructors_first
class Dulce {
  final String nombre;
  final String descripcion;
  final String imagen;
  Dulce({
    required this.nombre,
    required this.descripcion,
    required this.imagen,
  });
}

final List<Dulce> productoDulce = [
  Dulce(
    nombre: "Alegrías",
    descripcion: "Dulce de amaranto",
    imagen: "assets/dulce35.png",
  ),
  Dulce(
    nombre: "Glorias",
    descripcion: "Dulce de leche",
    imagen: "assets/dulce32.png",
  ),
  Dulce(
    nombre: "Até",
    descripcion: "Pasta de frutas cocidas",
    imagen: "assets/dulce33.png",
  ),
  Dulce(
    nombre: "Mueganos",
    descripcion: "Dulce de harina y miel",
    imagen: "assets/dulce34.png",
  ),
  Dulce(
    nombre: "Palanquetas",
    descripcion: "Barra de cacahuate con miel",
    imagen: "assets/dulce31.png",
  ),
];
