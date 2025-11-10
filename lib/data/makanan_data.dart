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

  Makanan(
    nama: 'Bebek Bumbu Hitam',
    deskripsi:
        'Bebek khas Madura yang dimasak dengan bumbu hitam dari rempah dan kluwek, menghasilkan rasa gurih, pedas, dan kaya rempah.',
    gambar: 'hitam.jpeg',
    bahan: [
      '1 ekor bebek, potong 4-6 bagian',
      '2 buah kluwek (ambil isinya)',
      '3 lembar daun jeruk',
      '2 batang serai (memarkan)',
      '3 lembar daun salam',
      'Air asam jawa secukupnya',
      'Minyak secukupnya',
      'Garam dan gula secukupnya',
    ],
    bumbu: [
      '10 siung bawang merah',
      '6 siung bawang putih',
      '4 butir kemiri sangrai',
      '1 ruas jahe',
      '1 ruas lengkuas',
      '1 ruas kunyit',
      '1 sdt ketumbar',
      '1 sdt merica',
      '5 buah cabai merah besar',
      '5-10 cabai rawit (sesuai selera)',
    ],
    langkah: [
      'Bersihkan bebek dan lumuri dengan air asam jawa, garam, dan diamkan 15-20 menit.',
      'Haluskan semua bumbu bersama kluwek hingga benar-benar lembut.',
      'Tumis bumbu halus hingga wangi dan berubah warna lebih gelap.',
      'Masukkan daun salam, daun jeruk, dan serai, aduk rata.',
      'Masukkan potongan bebek, aduk hingga bumbu meresap dan berubah warna.',
      'Tambahkan air secukupnya, masak dengan api kecil 1-1,5 jam hingga kuah mengental dan bebek empuk.',
      'Masak hingga bumbu menghitam pekat dan berminyak, koreksi rasa.',
    ],
    saranPenyajian:
        'Sajikan hangat dengan nasi putih, sambal pencit atau sambal terasi, dan lalapan segar.',
  ),

  Makanan(
    nama: 'Soto Madura',
    deskripsi:
        'Soto khas Madura dengan kuah bening gurih, aroma rempah kuat, biasanya memakai daging sapi atau ayam serta taburan bawang goreng.',
    gambar: 'soto.jpeg',
    bahan: [
      '500 gr daging sapi / ayam (pilih salah satu)',
      '2 liter air untuk kuah',
      '2 batang serai (memarkan)',
      '3 lembar daun jeruk',
      '2 lembar daun salam',
      '1 ruas lengkuas (memarkan)',
      'Minyak untuk menumis',
      'Garam dan gula secukupnya',
    ],
    bumbu: [
      '7 siung bawang merah',
      '5 siung bawang putih',
      '3 butir kemiri sangrai',
      '1 sdt merica butir',
      '1 sdt ketumbar',
      '1 ruas kunyit',
      '1 ruas jahe',
    ],
    langkah: [
      'Rebus daging hingga empuk, angkat dan potong-potong, sisihkan kaldu.',
      'Haluskan semua bumbu lalu tumis hingga harum.',
      'Masukkan bumbu tumis ke dalam kaldu, tambahkan daun salam, daun jeruk, serai, dan lengkuas.',
      'Masak sampai kuah mendidih dan bumbu meresap, koreksi rasa.',
      'Masukkan potongan daging kembali ke dalam kuah sebelum disajikan.',
    ],
    saranPenyajian:
        'Sajikan panas dengan potongan kentang rebus, telur rebus, seledri, bawang goreng, jeruk nipis, dan sambal.',
  ),

  Makanan(
    nama: 'Nasi Serpang',
    deskripsi:
        'Hidangan khas Bangkalan berupa nasi putih dengan aneka lauk seperti cumi item, telur, dendeng, sambal, dan kerupuk, disajikan lengkap dan kaya rasa.',
    gambar: 'serpang.jpeg',
    bahan: [
      '1 piring nasi putih',
      '1 butir telur rebus',
      '50 gr dendeng ragi atau serundeng',
      '50 gr cumi bumbu hitam (optional)',
      'Kerupuk atau emping secukupnya',
      'Sambal terasi secukupnya',
    ],
    bumbu: [
      'Bawang merah goreng untuk taburan',
      'Sambal terasi (cabai, terasi, garam, gula, tomat)',
      'Sedikit kecap manis (opsional)',
    ],
    langkah: [
      'Siapkan nasi putih hangat di piring.',
      'Tata lauk pauk seperti telur, dendeng/serundeng, dan cumi item di atas nasi.',
      'Tambahkan kerupuk dan sambal terasi di sampingnya.',
      'Beri taburan bawang goreng agar semakin harum.',
    ],
    saranPenyajian:
        'Sajikan lengkap dengan kuah ringan atau kuah kaldu agar lebih nikmat dan tidak terlalu kering.',
  ),

  Makanan(
    nama: 'Nasi Kobel',
    deskripsi:
        'Nasi khas Madura yang disajikan dengan sambal ikan tongkol suwir pedas (kobel) dan lauk sederhana. Rasanya gurih, pedas, dan sangat menggugah selera.',
    gambar: 'kobel.jpeg',
    bahan: [
      '1 piring nasi putih',
      '100 gr ikan tongkol (rebus & suwir)',
      '1 butir telur (dadar atau rebus)',
      'Sedikit minyak untuk menumis',
      'Garam & gula secukupnya',
    ],
    bumbu: [
      '5 buah cabai merah',
      '7 buah cabai rawit (sesuaikan tingkat pedas)',
      '3 siung bawang merah',
      '2 siung bawang putih',
      '1 buah tomat kecil',
      '1 sdt terasi bakar',
      'Garam & gula secukupnya',
    ],
    langkah: [
      'Haluskan cabai, bawang, tomat, dan terasi.',
      'Tumis bumbu halus hingga harum, bumbui garam & gula.',
      'Masukkan tongkol suwir, aduk hingga bumbu meresap.',
      'Siapkan nasi di piring, letakkan kobel di atasnya.',
      'Tambahkan telur dan lauk tambahan sesuai selera.',
    ],
    saranPenyajian:
        'Nikmati saat masih hangat dengan kerupuk dan perasan jeruk limau agar lebih segar.',
  ),

  Makanan(
    nama: 'Nasi Jagung',
    deskripsi:
        'Nasi jagung khas Madura yang terbuat dari campuran beras dan jagung tumbuk, disajikan dengan lauk sederhana namun kaya rasa.',
    gambar: 'jagung.jpeg',
    bahan: [
      '200 gr jagung pipil kering (tumbuk kasar / menir jagung)',
      '200 gr beras',
      'Air secukupnya untuk memasak',
      '1/2 sdt garam',
      'Sayur urap atau sayur bening sebagai pendamping',
    ],
    bumbu: [
      'Ikan asin goreng',
      'Sambal terasi',
      'Parutan kelapa berbumbu (untuk urap): bawang putih, bawang merah, cabai, garam, dan kencur',
    ],
    langkah: [
      'Cuci beras dan menir jagung hingga bersih.',
      'Campurkan beras dan jagung, tambahkan garam, lalu masak seperti memasak nasi biasa.',
      'Siapkan urap: kukus kelapa parut dan bumbu halus, lalu campurkan.',
      'Goreng ikan asin hingga matang dan renyah.',
      'Sajikan nasi jagung dengan urap, sambal, dan ikan asin.',
    ],
    saranPenyajian:
        'Paling nikmat disantap hangat bersama ikan asin dan sambal terasi pedas.',
  ),
];
