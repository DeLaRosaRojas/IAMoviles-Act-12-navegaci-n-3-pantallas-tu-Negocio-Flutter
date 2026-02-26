import 'package:flutter/material.dart';

// ==========================================
// PÁGINA 1: INICIO
// ==========================================
class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: miAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
              ),
              child: Column(
                children: [
                  const Text("¡Bienvenido a la mejor tienda de telas y costuras!",textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/telas'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black, foregroundColor: Colors.white),
                    child: const Text("Ver telas"),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1, indent: 20, endIndent: 20),
            const Text("NOVEDADES Y OFERTAS", style: TextStyle(color: Color(0xFF8B0000), fontWeight: FontWeight.bold)),
            
            Container(
              height: 180,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(image: NetworkImage('https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-12-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/img1.png'), fit: BoxFit.cover),
              ),
            ),
            
            const Divider(thickness: 1, indent: 20, endIndent: 20),
            const Text("PRODUCTOS", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _itemCircularAnimado(context, "Hilos", 'https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-12-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/producto1.png', null),
                      _itemCircularAnimado(context, "Telas", 'https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-12-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/producto2.png', '/telas'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _itemCircularAnimado(context, "Vestir", 'https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-12-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/producto3.png', '/vestidos'),
                      _itemCircularAnimado(context, "Botones", 'https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-12-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/producto4.png', null),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _itemCircularAnimado(context, "Tijeras", 'https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-12-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/producto5.png', null),
                      _itemCircularAnimado(context, "Máquinas", 'https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-12-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/producto6.png', null),
                    ],
                  ),
                ],
              ),
            ),
            miFooter(),
          ],
        ),
      ),
    );
  }

  Widget _itemCircularAnimado(BuildContext context, String nombre, String img, String? ruta) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: ruta != null ? () => Navigator.pushNamed(context, ruta) : null,
        borderRadius: BorderRadius.circular(50),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(radius: 40, backgroundImage: NetworkImage(img)),
              const SizedBox(height: 5),
              Text(nombre, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
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