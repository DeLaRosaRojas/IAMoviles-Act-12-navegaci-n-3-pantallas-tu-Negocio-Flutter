import 'package:flutter/material.dart';
//Conexiones
import 'package:myapp/widgets/pagina1.dart';
import 'package:myapp/widgets/pagina2.dart';
import 'package:myapp/widgets/pagina3.dart';

void main() {
  runApp(const ParisinaApp());
}

class ParisinaApp extends StatelessWidget {
  const ParisinaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parisina',
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioPage(),
        '/telas': (context) => const TelasPage(),
        '/vestidos': (context) => const VestidosPage(),
      },
    );
  }
}

// --- APPBAR ACTUALIZADO CON LOGO DE 304x166 Y USUARIO ---
PreferredSizeWidget miAppBar() {
  return AppBar(
    backgroundColor: const Color(0xFF8B0000),
    iconTheme: const IconThemeData(color: Colors.white),
    // Usamos un Center o Row para el logo con las medidas exactas
    title: Container(
      width: 304 / 4,  // Escalado proporcional para que quepa en el AppBar
      height: 166 / 4, // Manteniendo la relación de aspecto 304x166
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        image: const DecorationImage(
          image: NetworkImage('https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-12-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/logo.png.png'),
          fit: BoxFit.contain, // BoxFit.contain para no deformar tu logo ancho
        ),
      ),
    ),
    actions: [
      IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
      // Icono de Usuario con borde circular
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 1),
        ),
        child: IconButton(
          icon: const Icon(Icons.person, size: 20),
          onPressed: () {},
        ),
      ),
      IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
    ],
  );
}

// --- FOOTER ---
Widget miFooter() {
  return Container(
    width: double.infinity,
    color: Colors.black,
    padding: const EdgeInsets.all(20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo en Footer también adaptado a la forma ancha
            Image.network(
              'https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-12-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/logo.png.png', 
              height: 30
            ),
            const SizedBox(width: 10),
            const Text("- 2026", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 5),
        const Text("De La Rosa Abril 6I", style: TextStyle(color: Colors.white, fontSize: 12)),
      ],
    ),
  );
}



