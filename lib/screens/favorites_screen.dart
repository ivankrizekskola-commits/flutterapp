import 'package:flutter/material.dart';
import '../models/langs.dart';
import 'lang_detail_screen.dart';

class FavoritesScreen extends StatelessWidget {
  final Set<String> favorites;

  const FavoritesScreen({required this.favorites, super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteLangs =
        langs.where((lang) => favorites.contains(lang.name)).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Favoriti')),
      body: favoriteLangs.isEmpty
          ? const Center(child: Text('Nema favorita'))
          : ListView.builder(
              itemCount: favoriteLangs.length,
              itemBuilder: (context, index) {
                final lang = favoriteLangs[index];
                return ListTile(
                  leading: Icon(lang.icon, color: Colors.teal),
                  title: Text(lang.name),
                  subtitle: Text(lang.type),
                  trailing: const Icon(Icons.star, color: Colors.teal),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          LangDetailScreen(lang: lang, isFavorite: true),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
