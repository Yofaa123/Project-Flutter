import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/makanan_data.dart';
import '../models/makanan_model.dart';

class FavoriteProvider extends ChangeNotifier {
  List<Makanan> _favoritList = [];

  List<Makanan> get favoritList => _favoritList;

  FavoriteProvider() {
    _loadFavorites();
  }

  void toggleFavorite(Makanan makanan) {
    if (_favoritList.contains(makanan)) {
      _favoritList.remove(makanan);
    } else {
      _favoritList.add(makanan);
    }
    _saveFavorites();
    notifyListeners();
  }

  bool isFavorite(Makanan makanan) => _favoritList.contains(makanan);

  Future<void> _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final data = _favoritList.map((m) => m.nama).toList();
    await prefs.setString('favorites', jsonEncode(data));
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString('favorites');
    if (data != null) {
      final List list = jsonDecode(data);
      // cari dari daftarMakanan yang cocok
      _favoritList = daftarMakanan.where((m) => list.contains(m.nama)).toList();
      notifyListeners();
    }
  }
}
