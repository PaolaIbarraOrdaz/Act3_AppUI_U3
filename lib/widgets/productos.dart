import 'package:ibarra/productos/producto_nuevo.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Productos extends StatelessWidget {
  const Productos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(productoDulce.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(productoDulce[index].imagen),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " ${productoDulce[index].nombre}",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(" ${productoDulce[index].descripcion}"),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(
                        Ionicons.star,
                        color: Colors.yellow[700],
                        size: 18,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 4, right: 6),
                        child: Text(
                          "4.0",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text("195 ventas")
                    ],
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
