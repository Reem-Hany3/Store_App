import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteCubit extends Cubit<List<Map<String, dynamic>>> {
  FavoriteCubit() : super([]);

  void toggleFavorite(Map<String, dynamic> product) {
    final favorites = List<Map<String, dynamic>>.from(state);

    final isFavorite = favorites.any((item) => item['id'] == product['id']);

    if (isFavorite) {
      favorites.removeWhere((item) => item['id'] == product['id']);
    } else {
      favorites.add(product);
    }

    emit(favorites);
  }

  bool isFavorite(int id) {
    return state.any((item) => item['id'] == id);
  }

  void clearFavorites() {
    emit([]);
  }
}
