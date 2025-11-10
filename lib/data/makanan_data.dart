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

  Makanan(
    nama: 'Bebek Songkem',
    deskripsi:
        'Bebek kukus khas Madura yang empuk, dimasak tanpa minyak dengan bumbu rempah kuat sehingga menghasilkan rasa gurih dan aromatik.',
    gambar: 'bebek.jpeg',
    bahan: [
      '1 ekor bebek ukuran sedang',
      '2 batang serai (memarkan)',
      '3 lembar daun salam',
      '5 lembar daun jeruk',
      '1 buah jeruk nipis (ambil airnya)',
      'Garam secukupnya',
      'Daun pisang untuk membungkus',
    ],
    bumbu: [
      '8 siung bawang merah',
      '6 siung bawang putih',
      '1 sdm ketumbar',
      '1 ruas jahe',
      '1 ruas kunyit',
      '1 ruas lengkuas',
      '1 sdt merica',
      'Garam secukupnya',
    ],
    langkah: [
      'Bersihkan bebek, lumuri dengan air jeruk nipis dan garam, lalu diamkan 15 menit.',
      'Haluskan semua bumbu lalu tumis tanpa minyak sebentar agar harum.',
      'Lumuri bebek dengan bumbu hingga merata, masukkan daun salam, daun jeruk, dan serai.',
      'Bungkus bebek dengan daun pisang hingga rapat.',
      'Kukus bebek selama 1,5-2 jam hingga empuk dan bumbu meresap.',
      'Angkat dan siap disajikan.',
    ],
    saranPenyajian:
        'Sajikan hangat dengan sambal terasi, nasi putih, dan lalapan segar.',
  ),
];
