class Makanan {
  final String nama;
  final String deskripsi;
  final String gambar;
  final List<String> bahan;
  final List<String> bumbu;
  final List<String> langkah;
  final String saranPenyajian;

  Makanan({
    required this.nama,
    required this.deskripsi,
    required this.gambar,
    required this.bahan,
    required this.bumbu,
    required this.langkah,
    required this.saranPenyajian,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Makanan &&
          runtimeType == other.runtimeType &&
          nama == other.nama;

  @override
  int get hashCode => nama.hashCode;
}
