import 'package:flutter/material.dart';
import 'package:semar/screens/kuliner_screen.dart';
import 'package:semar/screens/layanan_screnn.dart';
import 'package:semar/screens/sejarah_screen.dart';
import 'destinasi_screen.dart';
import 'package:semar/screens/callcenter_screen.dart'; // Pastikan file destinasi_screen.dart sudah dibuat

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double navbarHeight = 80;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: screenHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg/lawang1000.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Overlay warna
          Container(
            width: double.infinity,
            height: screenHeight,
            color: Color(0xFFFFF2DA).withOpacity(0.6),
          ),

          // Konten halaman
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(bottom: navbarHeight + 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SEMAR",
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF275E76),
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0, -12),
                          child: Text(
                            "Seputar Semarang",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF275E76),
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 10,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 12),

                  // Container putih dengan menu
                  Center(
                    child: Container(
                      width: 340,
                      height: 220,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          // Menu Destinasi dengan navigasi ke DestinasiScreen
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DestinasiScreen()),
                              );
                            },
                            child: buildMenuItem("Destinasi", Icons.map),
                          ),
                          InkWell(
   onTap: () {
      Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => SejarahScreen()),
      );
   },
   child: Padding(
      padding: EdgeInsets.only(top: 11.3), // Menambahkan padding di atas
      child: buildMenuItem("Tempat Bersejarah", Icons.map_outlined),
   ),
),

                          
                          buildMenuItem("Disukai", Icons.favorite),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => KulinerScreen()),
                              );
                            },
                            child: buildMenuItem("Kuliner", Icons.map),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LayananScreen()),
                              );
                            },
                            child: buildMenuItem("Layanan Publik", Icons.map),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CallCenterScreen()),
                              );
                            },
                            child: buildMenuItem("Call Center", Icons.phone),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Tambahkan judul "Galeri" di bawah container menu
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 16),
                    child: Text(
                      "Galeri",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF275E76),
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Container untuk galeri yang bisa digeser
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          // Container pertama
                          Container(
                            width: 130,
                            margin: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage("assets/bg/majt.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // Container kedua
                          Container(
                            width: 130,
                            margin: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage("assets/bg/lumpia.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // Container ketiga
                          Container(
                            width: 130,
                            margin: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage("assets/bg/kariadi.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk menu
  Widget buildMenuItem(String title, IconData icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFF7EB7D9),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white, size: 24),
        ),
        SizedBox(height: 6),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Color(0xFF275E76),
          ),
        ),
      ],
    );
  }
}