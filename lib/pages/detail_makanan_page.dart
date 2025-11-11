import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import '../models/makanan_model.dart';
import '../providers/favorite_provider.dart';

class DetailMakananPage extends StatefulWidget {
  final Makanan makanan;
  const DetailMakananPage({super.key, required this.makanan});

  @override
  State<DetailMakananPage> createState() => _DetailMakananPageState();
}

class _DetailMakananPageState extends State<DetailMakananPage> {
  void shareResep() {
    final m = widget.makanan;
    final text = StringBuffer()
      ..writeln('${m.nama}\n')
      ..writeln('${m.deskripsi}\n')
      ..writeln('Bahan:')
      ..writeln(m.bahan.map((e) => '- $e').join('\n'))
      ..writeln('\nBumbu:')
      ..writeln(m.bumbu.map((e) => '- $e').join('\n'))
      ..writeln('\nLangkah:')
      ..writeln(
        m.langkah
            .asMap()
            .entries
            .map((e) => '${e.key + 1}. ${e.value}')
            .join('\n'),
      )
      ..writeln('\nSaran Penyajian:')
      ..writeln(m.saranPenyajian);

    Share.share(text.toString(), subject: 'Resep ${m.nama}');
  }

  @override
  Widget build(BuildContext context) {
    final m = widget.makanan;
    return Scaffold(
      appBar: AppBar(
        title: Text(m.nama),
        backgroundColor: Colors.redAccent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Gambar besar
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              child: Image.asset(
                'assets/images/${m.gambar}',
                width: double.infinity,
                height: 260,
                fit: BoxFit.cover,
              ),
            ),

            Container(
              width: double.infinity,
              transform: Matrix4.translationValues(0, -20, 0),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Judul dan tombol icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          m.nama,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          // Tombol Favorite pakai Provider
                          Consumer<FavoriteProvider>(
                            builder: (context, favProvider, _) {
                              final isFavorit = favProvider.isFavorite(
                                widget.makanan,
                              );
                              return IconButton(
                                onPressed: () {
                                  favProvider.toggleFavorite(widget.makanan);
                                },
                                icon: Icon(
                                  isFavorit
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Colors.redAccent,
                                ),
                              );
                            },
                          ),
                          IconButton(
                            onPressed: shareResep,
                            icon: const Icon(Icons.share, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),
                  Text(
                    m.deskripsi,
                    style: const TextStyle(fontSize: 15, color: Colors.black87),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 18),

                  const Text(
                    'Bahan',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  ...m.bahan.map(
                    (b) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('• ', style: TextStyle(fontSize: 16)),
                          Expanded(child: Text(b)),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),
                  const Text(
                    'Bumbu',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  ...m.bumbu.map(
                    (b) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('• ', style: TextStyle(fontSize: 16)),
                          Expanded(child: Text(b)),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),
                  const Text(
                    'Cara Memasak',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  ...m.langkah.asMap().entries.map((e) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${e.key + 1}. ',
                            style: const TextStyle(fontSize: 16),
                          ),
                          Expanded(child: Text(e.value)),
                        ],
                      ),
                    );
                  }),

                  const SizedBox(height: 16),
                  const Text(
                    'Saran Penyajian',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(m.saranPenyajian),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFFFF8F0),
    );
  }
}
