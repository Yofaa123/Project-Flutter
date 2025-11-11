import 'package:flutter/material.dart';
import '../models/makanan_model.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<Makanan> _favorit = [];

  List<Makanan> get daftarFavorit => _favorit;

  void toggleFavorite(Makanan makanan) {
    if (_favorit.contains(makanan)) {
      _favorit.remove(makanan);
    } else {
      _favorit.add(makanan);
    }
    notifyListeners();
  }

  bool isFavorit(Makanan makanan) {
    return _favorit.contains(makanan);
  }
}
