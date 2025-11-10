import '../models/makanan_model.dart';

final List<Makanan> daftarMakanan = [
  Makanan(
    nama: 'Sate Madura',
    deskripsi:
        'Sate khas Madura yang memakai daging ayam atau kambing, disajikan dengan bumbu kacang manis dan perasan jeruk.',
    gambar: 'sate.jpeg',
    bahan: [
      '500 gr daging ayam atau kambing (potong dadu)',
      'Tusuk sate secukupnya',
    ],
    bumbu: [
      '200 gr kacang tanah (sangrai & haluskan)',
      '3 sdm kecap manis',
      '2 siung bawang putih',
      '1 sdt garam',
      'Gula merah secukupnya',
      'Air asam/jeruk nipis untuk penyajian',
    ],
    langkah: [
      'Haluskan bawang putih dan bumbu kacang bila perlu.',
      'Tusuk potongan daging pada tusuk sate.',
      'Bakar sate hingga setengah matang, olesi kecap dan bumbu.',
      'Bakar kembali sampai matang dan harum.',
      'Siapkan saus kacang, campur kacang tumbuk, air, kecap, gula, dan masak hingga kental.',
      'Sajikan sate dengan saus kacang dan perasan jeruk.',
    ],
    saranPenyajian:
        'Sajikan panas dengan lontong atau nasi, tambahan irisan bawang merah dan jeruk nipis.',
  ),

  // contoh item lain (isi resep nanti)
  Makanan(
    nama: 'Bebek Songkem',
    deskripsi:
        'Bebek kukus khas Madura yang empuk dengan bumbu rempah yang khas.',
    gambar: 'bebek.jpeg',
    bahan: ['...'],
    bumbu: ['...'],
    langkah: ['...'],
    saranPenyajian: 'Sajikan dengan sambal dan lalapan.',
  ),

  // Tambahkan entri lain sesuai daftarmu...
];
