import 'package:flutter/material.dart';
import '../models/langs.dart';

class LangDetailScreen extends StatelessWidget {
  final PLangs lang;
  final bool isFavorite;

  const LangDetailScreen({
    required this.lang,
    required this.isFavorite,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(lang.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.teal),
              ),
              child: Row(
                children: [
                  Icon(lang.icon, size: 48, color: Colors.teal),
                  const SizedBox(width: 12),
                  Expanded(child: Text(lang.type)),
                ],
              ),
            ),
            Text(
              lang.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: isFavorite
                      ? null
                      : () {
                          Navigator.pop(context, true);
                        },
                  child: Text(isFavorite ? 'U favoritima' : 'Dodaj u favorite'),
                ),
                OutlinedButton(onPressed: () {
                  Navigator.pop(context);
                }, child: const Text('Natrag')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
