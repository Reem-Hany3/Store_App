import 'package:flutter/material.dart';

class Favoriteprovider extends ChangeNotifier {
  List<Map<String, dynamic>> favorites = [];

  void toggleFavorite(Map<String, dynamic> product) {
    final isFavorite = favorites.any(
          (item) => item['id'] == product['id'],
    );

    if (isFavorite) {
      favorites.removeWhere(
            (item) => item['id'] == product['id'],
      );
    } else {
      favorites.add(product);
    }

    notifyListeners();
  }

  bool isFavorite(int id) {
    return favorites.any(
          (item) => item['id'] == id,
    );
  }

  void clearFavorites() {
    favorites.clear();
    notifyListeners();
  }
}