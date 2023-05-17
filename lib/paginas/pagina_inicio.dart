import 'package:ibarra/widgets/categorias.dart';
import 'package:ibarra/widgets/productos.dart';
import 'package:ibarra/widgets/proxima_tarjeta.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hola, Paola"),
            Text(
              "¿Qué vas a pedir hoy?",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.notifications_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.search_outline),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children: [
          const TarjetaInicio(),
          const SizedBox(height: 20),
          Text(
            "Categorías",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 15),
          const Categorias(),
          const SizedBox(height: 25),
          Text(
            "Productos para ti",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 15),
          const Productos(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            activeIcon: Icon(Ionicons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.calendar_outline),
            activeIcon: Icon(Ionicons.calendar),
            label: "Calendario",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.chatbubble_ellipses_outline),
            label: "Chat",
            activeIcon: Icon(Ionicons.chatbubble_ellipses),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            activeIcon: Icon(Ionicons.person),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}
