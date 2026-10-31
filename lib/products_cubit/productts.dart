import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../favorite screen with cubit/fav_screen_with_cubit.dart';
import '../favorite with cubit/favorite_cubit.dart';

class Products_cubit extends StatelessWidget {
  const Products_cubit({super.key});

  final List<Map<String, dynamic>> products = const [
    {
      'id': 1,
      'name': 'Laptop',
      'price': 30000,
      'image': 'assets/images/laptop.webp',
    },
    {
      'id': 2,
      'name': 'Phone',
      'price': 20000,
      'image': 'assets/images/phone.webp',
    },
    {
      'id': 3,
      'name': 'Headphones',
      'price': 3000,
      'image': 'assets/images/headphones.webp',
    },
    {
      'id': 4,
      'name': 'Watch',
      'price': 5000,
      'image': 'assets/images/watch.webp',
    },
    {
      'id': 5,
      'name': 'Camera',
      'price': 15000,
      'image': 'assets/images/camera.webp',
    },
    {
      'id': 6,
      'name': 'Tablet',
      'price': 12000,
      'image': 'assets/images/tablet.webp',
    },
    {
      'id': 7,
      'name': 'Keyboard',
      'price': 1500,
      'image': 'assets/images/keyboard.webp',
    },
    {
      'id': 8,
      'name': 'Mouse',
      'price': 800,
      'image': 'assets/images/mouse.webp',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            'Products',
            style: TextStyle(
              color: Colors.brown,
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: BlocBuilder<FavoriteCubit, List<Map<String, dynamic>>>(
              builder: (context, favorites) {
                return IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const Fav_screen_cubit(),
                      ),
                    );
                  },

                  icon: Badge(
                    isLabelVisible: favorites.isNotEmpty,
                    label: Text(
                      '${favorites.length}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),

                    child: const Icon(
                      Icons.favorite,
                      size: 40,
                      color: Colors.brown,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,

        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 20),

            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),

              leading: Image.asset(
                product['image'],
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),

              title: Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  product['name'],
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                ),
              ),

              subtitle: Text(
                '${product['price']} EGP',
                style: const TextStyle(fontSize: 17, color: Color(0xFF757575)),
              ),

              trailing: BlocBuilder<FavoriteCubit, List<Map<String, dynamic>>>(
                builder: (context, favorites) {
                  final isFavorite = favorites.any(
                    (item) => item['id'] == product['id'],
                  );

                  return IconButton(
                    onPressed: () {
                      context.read<FavoriteCubit>().toggleFavorite(product);
                    },

                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                      size: 35,
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
