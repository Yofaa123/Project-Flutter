import 'package:flutter/material.dart';
import '../data/makanan_data.dart'; // pastikan file ini berisi data makanan kamu
import '../models/makanan_model.dart';
import 'detail_makanan_page.dart';

class RekomendasiPage extends StatefulWidget {
  const RekomendasiPage({super.key});

  @override
  State<RekomendasiPage> createState() => _RekomendasiPageState();
}

class _RekomendasiPageState extends State<RekomendasiPage> {
  String? waktuMakan;
  String? rasa;
  List<Makanan> rekomendasi = [];

  void getRekomendasi() {
    if (waktuMakan == null || rasa == null) {
      setState(() {
        rekomendasi = [];
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Silakan pilih semua opsi terlebih dahulu.'),
        ),
      );
      return;
    }

    List<Makanan> hasil = [];

    // Ambil dari data makanan berdasarkan nama
    Makanan? cari(String nama) {
      try {
        return daftarMakanan.firstWhere((m) => m.nama == nama);
      } catch (_) {
        return null;
      }
    }

    if (waktuMakan == 'Pagi') {
      if (rasa == 'Gurih') {
        hasil = [cari('Nasi Serpang')!, cari('Campor Lorjuk')!];
      } else if (rasa == 'Pedas') {
        hasil = [cari('Rujak Cingur')!, cari('Nasi Kobel')!];
      } else {
        hasil = [cari('Nasi Kobel')!];
      }
    } else if (waktuMakan == 'Siang') {
      if (rasa == 'Pedas') {
        hasil = [cari('Sate Madura')!, cari('Bebek Bumbu Hitam')!];
      } else if (rasa == 'Gurih') {
        hasil = [cari('Nasi Jagung')!, cari('Campor Lorjuk')!];
      } else {
        hasil = [cari('Soto Madura')!];
      }
    } else if (waktuMakan == 'Malam') {
      if (rasa == 'Pedas') {
        hasil = [cari('Bebek Songkem')!, cari('Sate Madura')!];
      } else if (rasa == 'Gurih') {
        hasil = [cari('Soto Madura')!, cari('Bebek Bumbu Hitam')!];
      } else {
        hasil = [cari('Nasi Serpang')!];
      }
    }

    setState(() {
      rekomendasi = hasil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rekomendasi Makanan"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color(0xFFFFE5E5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Pilih Preferensi Kamu 🍽️",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
              const SizedBox(height: 30),

              // Dropdown Waktu
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: const Text("Kapan kamu ingin makan?"),
                    value: waktuMakan,
                    underline: const SizedBox(),
                    items: const [
                      DropdownMenuItem(value: "Pagi", child: Text("Pagi")),
                      DropdownMenuItem(value: "Siang", child: Text("Siang")),
                      DropdownMenuItem(value: "Malam", child: Text("Malam")),
                    ],
                    onChanged: (value) => setState(() => waktuMakan = value),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Dropdown Rasa
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: const Text("Pilih rasa yang kamu suka"),
                    value: rasa,
                    underline: const SizedBox(),
                    items: const [
                      DropdownMenuItem(value: "Pedas", child: Text("Pedas")),
                      DropdownMenuItem(value: "Gurih", child: Text("Gurih")),
                      DropdownMenuItem(value: "Asin", child: Text("Asin")),
                    ],
                    onChanged: (value) => setState(() => rasa = value),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              ElevatedButton.icon(
                onPressed: getRekomendasi,
                icon: const Icon(Icons.fastfood, color: Colors.white),
                label: const Text(
                  "Tampilkan Rekomendasi",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                ),
              ),

              const SizedBox(height: 30),

              if (rekomendasi.isNotEmpty)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "🍴 Hasil Rekomendasi:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: ListView.builder(
                          itemCount: rekomendasi.length,
                          itemBuilder: (context, index) {
                            final makanan = rekomendasi[index];
                            return Card(
                              color: Colors.white,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: ListTile(
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/${makanan.gambar}',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                title: Text(
                                  makanan.nama,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                subtitle: Text(
                                  makanan.deskripsi,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          DetailMakananPage(makanan: makanan),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
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
