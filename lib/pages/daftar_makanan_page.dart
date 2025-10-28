import 'package:flutter/material.dart';

class DaftarMakananPage extends StatelessWidget {
  const DaftarMakananPage({super.key});

  final List<Map<String, String>> makanan = const [
    {
      'nama': 'Sate Madura',
      'deskripsi':
          'Terbuat dari daging ayam atau kambing yang dibakar dengan bumbu kacang khas Madura.',
      'gambar': 'sate.jpeg',
    },
    {
      'nama': 'Bebek Songkem',
      'deskripsi':
          'Bebek kukus khas Madura dengan bumbu rempah kuat, tanpa minyak, dan sangat lembut.',
      'gambar': 'bebek.jpeg',
    },
    {
      'nama': 'Bebek Bumbu Hitam',
      'deskripsi':
          'Bebek khas Madura dengan bumbu hitam pekat dari rempah menghasilkan rasa gurih, pedas, dan sedikit manis..',
      'gambar': 'hitam.jpeg',
    },
    {
      'nama': 'Soto Madura',
      'deskripsi':
          'Soto dengan kuah bening gurih, berisi daging sapi, kentang, telur, dan bawang goreng.',
      'gambar': 'soto.jpeg',
    },
    {
      'nama': 'Nasi Serpang',
      'deskripsi':
          'Nasi dengan berbagai lauk pauk seperti dendeng, telur, dan sambal khas Pamekasan.',
      'gambar': 'serpang.jpeg',
    },
    {
      'nama': 'Nasi Kobel',
      'deskripsi':
          'Nasi yang disajikan dengan lauk pauk sederhana seperti serundeng, sambal, dan ikan asin.',
      'gambar': 'kobel.jpeg',
    },
    {
      'nama': 'Nasi Jagung',
      'deskripsi':
          'Nasi jagung khas Madura dengan lauk ikan asin, sambal, dan sayur urap.',
      'gambar': 'jagung.jpeg',
    },
    {
      'nama': 'Rujak Cingur',
      'deskripsi':
          'Campuran sayur, buah, dan cingur sapi dengan bumbu petis kacang kental khas.',
      'gambar': 'rujak.jpeg',
    },
    {
      'nama': 'Campor Lorjuk',
      'deskripsi':
          'Makanan berkuah dengan lorjuk, lontong, tahu, dan bumbu gurih khas Madura.',
      'gambar': 'campor.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Makanan Khas Madura'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        itemCount: makanan.length,
        itemBuilder: (context, index) {
          final item = makanan[index];
          return Card(
            margin: const EdgeInsets.all(10),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/${item['gambar']}',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                item['nama']!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(item['deskripsi']!),
            ),
          );
        },
      ),
    );
  }
}
