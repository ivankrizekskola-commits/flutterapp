import 'package:flutter/material.dart';

import '../models/langs.dart';
import 'favorites_screen.dart';
import 'lang_detail_screen.dart';

class LangListScreen extends StatefulWidget {
  const LangListScreen({super.key});

  @override
  State<LangListScreen> createState() => _LangListScreenState();
}

class _LangListScreenState extends State<LangListScreen> {
  final Set<String> favorites = {};

  Future<void> openDetails(PLangs lang) async {
    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (context) => LangDetailScreen(
          lang: lang,
          isFavorite: favorites.contains(lang.name),
        ),
      ),
    );

    if (result != null && mounted) {
      setState(() {
        favorites.add(lang.name);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programski i skriptni jezici'),
        actions: [
          IconButton(
            icon: const Icon(Icons.star),
            tooltip: 'Favoriti',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FavoritesScreen(favorites: _favorites),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: langs.length,
        itemBuilder: (context, index) {
          final lang = langs[index];
          return LangTile(
            lang: lang,
            isFavorite: favorites.contains(lang.name),
            onOpen: () => openDetails(lang),
          );
        },
      ),
    );
  }
}

class LangTile extends StatelessWidget {
  final PLangs lang;
  final bool isFavorite;
  final VoidCallback onOpen;

  const LangTile({
    super.key,
    required this.lang,
    required this.isFavorite,
    required this.onOpen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            lang.icon,
            size: 32,
            color: isFavorite ? Colors.red : Colors.grey,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lang.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(lang.type),
              ],
            ),
          ),
          IconButton(
            onPressed: onOpen,
            icon: const Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
