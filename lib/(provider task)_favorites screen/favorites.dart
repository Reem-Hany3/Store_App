import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/Favorites Provider.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorites',
          style: TextStyle(
            color: Colors.brown,
            fontWeight: FontWeight.w600,
            fontSize: 30,
          ),
        ),
      ),

      body: Consumer<Favoriteprovider>(
        builder: (context, provider, child) {
          if (provider.favorites.isEmpty) {
            return Center(
              child: Text(
                'No favorites yet',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(25),
            itemCount: provider.favorites.length,
            itemBuilder: (context, index) {
              final product = provider.favorites[index];

              return Dismissible(
                key: ValueKey(product['id']),

                onDismissed: (direction) {
                  provider.toggleFavorite(product);
                },

                child: Card(
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
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF757575),
                      ),
                    ),

                    trailing: IconButton(
                      onPressed: () {
                        provider.toggleFavorite(product);
                      },

                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
