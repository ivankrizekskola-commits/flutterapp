import 'package:flutter/material.dart';
import '../models/langs.dart';
import 'lang_detail_screen.dart';

class LangListScreen extends StatefulWidget {
  const LangListScreen({super.key});

  @override
  State<LangListScreen> createState() => _LangListScreenState();
}

class _LangListScreenState extends State<LangListScreen> {
  final Set<String> _favorites = {};

  Future<void> _openDetail(PLangs lang) async {
    final added = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (context) => LangDetailScreen(
          lang: lang,
          isFavorite: _favorites.contains(lang.name),
        ),
      ),
    );
    if (added == true) {
      setState(() {
        _favorites.add(lang.name);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Programski i skriptni jezici')),
      body: ListView.builder(
        itemCount: langs.length,
        itemBuilder: (context, index) {
          final lang = langs[index];
          final isFavorite = _favorites.contains(lang.name);
          return ListTile(
            leading: Icon(lang.icon, color: Colors.teal),
            title: Text(lang.name),
            subtitle: Text(lang.type),
            trailing: isFavorite
                ? const Icon(Icons.star, color: Colors.teal)
                : const Icon(Icons.chevron_right),
            onTap: () => _openDetail(lang),
          );
        },
      ),
    );
  }
}
