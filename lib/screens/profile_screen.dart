import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
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
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/profile_picture.png"), // Ganti dengan gambar profil
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Nama Pengguna",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF275E76),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "user@example.com",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: Color(0xFF275E76),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.person, color: Color(0xFF275E76)),
                          title: Text("Edit Profil", style: TextStyle(fontFamily: 'Poppins')),
                          onTap: () {},
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.lock, color: Color(0xFF275E76)),
                          title: Text("Ubah Password", style: TextStyle(fontFamily: 'Poppins')),
                          onTap: () {},
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.logout, color: Colors.redAccent),
                          title: Text("Keluar", style: TextStyle(fontFamily: 'Poppins', color: Colors.redAccent)),
                          onTap: () {},
                        ),
                      ],
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
}
