import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ✅ HEADER IMAGE
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Image.asset(
              'assets/images/Gambar kemudo.png',
              fit: BoxFit.cover,
            ),
          ),

          // ✅ TITLE & SUBTITLE
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "JAY - Portfolio",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0A192F),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Kemudo Village | Penginapan ",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),

          // ✅ ROW ACTION BUTTONS
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _menuItem(Icons.work, "Projects", () {
                  Navigator.pushNamed(context, '/detail');
                }),
                _menuItem(Icons.person, "Profile", () {
                  Navigator.pushNamed(context, '/profile');
                }),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // ✅ DESKRIPSI
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              "Selamat datang di Kemudo Village - Portfolio JAY!, "
              "Di sini berisi pengalaman, proyek, dan profil singkat saya sebagai seorang pengembang. "
              "Website ini dibuat untuk menunjukkan perjalanan, visi, dan karya yang lagi saya bangun. ",
              style: TextStyle(fontSize: 15, height: 1.5),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }

  // ✅ WIDGET MENU BUTTON
  Widget _menuItem(IconData icon, String label, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon, size: 30, color: Color(0xFF0A192F)),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF0A192F),
            ),
          ),
        ],
      ),
    );
  }
}
