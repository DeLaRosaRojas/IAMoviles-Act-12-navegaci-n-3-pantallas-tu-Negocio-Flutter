import 'package:flutter/material.dart';

// ==========================================
// PÁGINA 3: VESTIR
// ==========================================
class VestidosPage extends StatelessWidget {
  const VestidosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: miAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130, width: double.infinity, margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(image: NetworkImage('https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-12-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/vestir1.png'), fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)),
              ),
              child: const Center(child: Text("VESTIR", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
            ),
            Container(
              height: 130, width: double.infinity, margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(image: NetworkImage('https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-12-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/vestir2.png'), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Colección Noche", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const Divider(thickness: 3, color: Color(0xFFD4AF37), indent: 20, endIndent: 200),
            
            _cardProducto("Vestido Gala", "1,200.00", 'https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-12-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/vestir3.png'),
            _cardProducto("Vestido Coctel", "850.00", 'https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-12-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/vestir4.png'),
            
            miFooter(),
          ],
        ),
      ),
    );
  }
}

Widget _cardProducto(String nombre, String precio, String linkImagen) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Colors.white, 
      borderRadius: BorderRadius.circular(15),
      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
    ),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            linkImagen, 
            width: 100, 
            height: 100, 
            fit: BoxFit.cover
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(nombre, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text("\$$precio por pieza"),
              const SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {}, 
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black, foregroundColor: Colors.white), 
                    child: const Icon(Icons.shopping_cart, size: 16)
                  ),
                  const SizedBox(width: 10),
                  OutlinedButton(
                    onPressed: () {}, 
                    child: const Text("..", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black))
                  ),
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
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