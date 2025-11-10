import 'package:flutter/material.dart';
import '../data/makanan_data.dart';
import '../models/makanan_model.dart';
import 'detail_makanan_page.dart';

class DaftarMakananPage extends StatelessWidget {
  const DaftarMakananPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Makanan Khas Madura'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        itemCount: daftarMakanan.length,
        itemBuilder: (context, index) {
          final Makanan item = daftarMakanan[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/${item.gambar}',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                item.nama,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                item.deskripsi,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                Navigator.of(context).push(_createRouteDetail(item));
              },
            ),
          );
        },
      ),
    );
  }

  Route _createRouteDetail(Makanan makanan) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          DetailMakananPage(makanan: makanan),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); // masuk dari kanan
        const end = Offset.zero;
        const curve = Curves.ease;
        final tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }
}
