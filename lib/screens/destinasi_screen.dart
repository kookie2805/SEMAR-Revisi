import 'package:flutter/material.dart';

class DestinasiScreen extends StatelessWidget {
  final List<Map<String, String>> destinasiList = [
    {"title": "Gor Tri Lomba Juang", "image": "assets/destinasi/gor_tri_lomba_juang.jpg"},
    {"title": "GOR Jatidiri", "image": "assets/destinasi/gor_jatidiri.jpg"},
    {"title": "Manunggal Jati", "image": "assets/destinasi/manunggal_jati.jpg"},
    {"title": "Masjid Agung", "image": "assets/destinasi/masjid_agung.jpg"},
    {"title": "Candi Gedong Songo", "image": "assets/destinasi/candi_gedong_songo.jpg"},
    {"title": "Menara Syahbandar", "image": "assets/destinasi/menara_syahbandar.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          // Background image
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
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tombol kembali
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),

                  // Search Bar
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Cari Disini",
                        border: InputBorder.none,
                        icon: Icon(Icons.search, color: Color(0xFF275E76)),
                      ),
                    ),
                  ),

                  // Judul kategori
                  Text(
                    "Tempat Kebugaran",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  // Grid destinasi
                  Expanded(
                    child: GridView.builder(
                      padding: EdgeInsets.only(top: 10),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.9,
                      ),
                      itemCount: destinasiList.length,
                      itemBuilder: (context, index) {
                        return _buildDestinasiItem(
                          destinasiList[index]["title"]!,
                          destinasiList[index]["image"]!,
                        );
                      },
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

  // Widget untuk item destinasi
  Widget _buildDestinasiItem(String title, String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.8),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}