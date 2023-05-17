// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Categorias extends StatelessWidget {
  const Categorias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IconoPersonalizado> customIcons = [
      IconoPersonalizado(nombre: "Pasteles", icono: 'assets/pastel.png'),
      IconoPersonalizado(nombre: "Dulces", icono: 'assets/dulceIcon.png'),
      IconoPersonalizado(nombre: "Piñatas", icono: 'assets/piniata.png'),
      IconoPersonalizado(nombre: "Más", icono: 'assets/more.png'),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                customIcons[index].icono,
              ),
            ),
            const SizedBox(height: 6),
            Text(customIcons[index].nombre)
          ],
        );
      }),
    );
  }
}

class IconoPersonalizado {
  final String nombre;
  final String icono;
  IconoPersonalizado({
    required this.nombre,
    required this.icono,
  });
}
