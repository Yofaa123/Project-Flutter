import 'package:flutter/material.dart';
import '../data/makanan_data.dart';
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
  List<String> rekomendasi = [];

  void getRekomendasi() {
    if (waktuMakan == null || rasa == null) {
      setState(() {
        rekomendasi = ['Silakan pilih semua opsi terlebih dahulu.'];
      });
      return;
    }

    List<String> hasil = [];

    if (waktuMakan == 'Pagi') {
      if (rasa == 'Gurih') {
        hasil = ['Nasi Serpang', 'Campor Lorjuk'];
      } else if (rasa == 'Pedas') {
        hasil = ['Rujak Cingur', 'Nasi Kobel'];
      } else {
        hasil = ['Nasi Kobel'];
      }
    } else if (waktuMakan == 'Siang') {
      if (rasa == 'Pedas') {
        hasil = ['Sate Madura', 'Bebek Bumbu Hitam'];
      } else if (rasa == 'Gurih') {
        hasil = ['Nasi Jagung', 'Campor Lorjuk'];
      } else {
        hasil = ['Soto Madura'];
      }
    } else if (waktuMakan == 'Malam') {
      if (rasa == 'Pedas') {
        hasil = ['Bebek Songkem', 'Sate Madura'];
      } else if (rasa == 'Gurih') {
        hasil = ['Soto Madura', 'Bebek Bumbu Hitam'];
      } else {
        hasil = ['Nasi Serpang'];
      }
    } else {
      hasil = ['Tidak ada rekomendasi yang sesuai.'];
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

              // Dropdown Waktu Makan
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

              // Tombol Tampilkan Rekomendasi
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

              // Hasil Rekomendasi
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
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                              margin: const EdgeInsets.symmetric(vertical: 6),
                              child: Card(
                                color: Colors.white,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: ListTile(
                                  leading: const Icon(
                                    Icons.restaurant_menu,
                                    color: Colors.redAccent,
                                  ),
                                  title: Text(
                                    rekomendasi[index],
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  onTap: () {
                                    // cari data makanan dari daftarMakanan
                                    final hasil = daftarMakanan.firstWhere(
                                      (item) => item.nama == rekomendasi[index],
                                      orElse: () => Makanan(
                                        nama: rekomendasi[index],
                                        deskripsi: 'Detail tidak ditemukan.',
                                        gambar: '',
                                        bahan: [],
                                        bumbu: [],
                                        langkah: [],
                                        saranPenyajian: '',
                                      ),
                                    );

                                    // navigasi ke halaman detail
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailMakananPage(makanan: hasil),
                                      ),
                                    );
                                  },
                                ),
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
