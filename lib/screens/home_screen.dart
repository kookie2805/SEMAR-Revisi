import 'package:flutter/material.dart';
import 'package:semar/widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Navbar(), // Navbar sebagai home
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg/lawang1000.png"), // Pastikan path ini benar
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Text('Start'),
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg/lawang1000.png"), // Background image
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5), // Menurunkan opasitas gambar
              BlendMode.darken,
            ),
          ),
        ),
        child: Container(
          color: Color(0xFFFFF2DA).withOpacity(0.6), // Warna overlay #FFF2DA dengan opasitas
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50), // Jarak dari atas
                Text(
                  "SEMAR",
                  style: TextStyle(
                    fontSize: 48, // Ukuran font besar
                    fontWeight: FontWeight.bold, // Tebal
                    color: Color(0xFF275E76), 
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                      )
                    ]
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -12), // Geser teks ke atas 12px
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
                      )
                    ]
                    ),
                  ),
                ),
                SizedBox(height: 12), // Jarak antara teks "Seputar Semarang" dan container
                Center( // Container dipusatkan
                  child: Container(
                    width: 370, // Lebar container
                    height: 200, // Tinggi container
                    decoration: BoxDecoration(
                      color: Colors.white, // Warna container putih
                      borderRadius: BorderRadius.circular(20), 
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        )
                      ]
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}