
import 'package:flutter/material.dart';

void main() {
  runApp(const SignsOfHisGloryApp());
}

class SignsOfHisGloryApp extends StatelessWidget {
  const SignsOfHisGloryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SIGNS OF HIS GLORY',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF8A6A2F),
        scaffoldBackgroundColor: const Color(0xFFFFFBF2),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIGNS OF HIS GLORY'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 20),
          const Icon(Icons.menu_book_rounded, size: 72),
          const SizedBox(height: 16),
          const Text(
            'Fullness of Joy',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Let the word of Christ dwell in you richly.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          _card(context, Icons.auto_stories, 'Daily Devotional'),
          _card(context, Icons.menu_book, 'Bible'),
          _card(context, Icons.volunteer_activism, 'Prayers'),
          _card(context, Icons.music_note, 'Hymns'),
          _card(context, Icons.favorite, 'Encouragement'),
          _card(context, Icons.format_quote, 'Declarations'),
        ],
      ),
    );
  }

  Widget _card(BuildContext context, IconData icon, String title) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SectionPage(title: title),
            ),
          );
        },
      ),
    );
  }
}

class SectionPage extends StatelessWidget {
  final String title;

  const SectionPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.menu_book_rounded,
                size: 64,
                color: Color(0xFF8A6A2F),
              ),
              const SizedBox(height: 20),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Welcome to SIGNS OF HIS GLORY.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'Fullness of Joy',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
