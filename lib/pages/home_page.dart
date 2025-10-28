import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final VoidCallback onMulaiPressed;
  const HomePage({super.key, required this.onMulaiPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F0),
      appBar: AppBar(
        title: const Text(
          "Madura Food Recommender",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        elevation: 4,
        shadowColor: Colors.redAccent.withOpacity(0.4),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/home.png',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 25),

              const Text(
                "Selamat Datang di Aplikasi\nRekomendasi Makanan Khas Madura",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 15),

              const Text(
                "Temukan makanan khas Madura yang cocok dengan selera dan waktu makanmu. "
                "Mulai jelajahi berbagai hidangan lezat seperti Sate Madura, Bebek Songkem, hingga Rujak Cingur.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 40),

              ElevatedButton.icon(
                onPressed: onMulaiPressed,
                icon: const Icon(Icons.fastfood, color: Colors.white),
                label: const Text(
                  "Mulai Rekomendasi",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  elevation: 6,
                ),
              ),
              const SizedBox(height: 40),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.redAccent.withOpacity(0.1),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: const [
                    Icon(Icons.lightbulb, color: Colors.redAccent, size: 40),
                    SizedBox(height: 10),
                    Text(
                      "Tahukah kamu?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Bebek Songkem dimasak tanpa minyak, dikukus dengan daun pisang, "
                      "dan menjadi simbol masakan sehat khas Madura!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
