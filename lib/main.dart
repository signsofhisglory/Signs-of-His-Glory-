
import 'package:flutter/material.dart';

void main() => runApp(const SignsOfHisGloryApp());

class SignsOfHisGloryApp extends StatelessWidget {
  const SignsOfHisGloryApp({super.key});

  static const gold = Color(0xFF8A6A2F);
  static const cream = Color(0xFFFFFBF2);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SIGNS OF HIS GLORY',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: gold),
        scaffoldBackgroundColor: cream,
        appBarTheme: const AppBarTheme(
          backgroundColor: cream,
          foregroundColor: Color(0xFF4E3B1C),
          centerTitle: true,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const sections = <_HomeSection>[
    _HomeSection('Daily Devotional', Icons.auto_stories_rounded),
    _HomeSection('Bible', Icons.menu_book_rounded),
    _HomeSection('Prayers', Icons.volunteer_activism_rounded),
    _HomeSection('Hymns', Icons.music_note_rounded),
    _HomeSection('Encouragement', Icons.favorite_rounded),
    _HomeSection('Declarations', Icons.format_quote_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SIGNS OF HIS GLORY')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 28),
        children: [
          const SizedBox(height: 8),
          const Icon(
            Icons.menu_book_rounded,
            size: 76,
            color: SignsOfHisGloryApp.gold,
          ),
          const SizedBox(height: 14),
          const Text(
            'Fullness of Joy',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4E3B1C),
            ),
          ),
          const SizedBox(height: 9),
          const Text(
            'Let the word of Christ dwell in you richly.\n— Colossians 3:16',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, height: 1.5),
          ),
          const SizedBox(height: 30),
          ...sections.map(
            (section) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Card(
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 7,
                  ),
                  leading: Icon(
                    section.icon,
                    color: SignsOfHisGloryApp.gold,
                    size: 28,
                  ),
                  title: Text(
                    section.title,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SectionPage(title: section.title),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            '“In Your presence is fullness of joy.” — Psalm 16:11',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: SignsOfHisGloryApp.gold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}

class _HomeSection {
  final String title;
  final IconData icon;

  const _HomeSection(this.title, this.icon);
}

class SectionPage extends StatelessWidget {
  final String title;

  const SectionPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    if (title == 'Daily Devotional') {
      return const DailyDevotionalPage();
    }

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.menu_book_rounded,
                size: 64,
                color: SignsOfHisGloryApp.gold,
              ),
              const SizedBox(height: 18),
              Text(
                title,
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
                style: TextStyle(
                  fontSize: 18,
                  color: SignsOfHisGloryApp.gold,
                ),
              ),
              const SizedBox(height: 14),
              const Text(
                'This section is ready for its content to be added.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DailyDevotionalPage extends StatelessWidget {
  const DailyDevotionalPage({super.key});

  static const devotionalFields = <_DevotionalField>[
    _DevotionalField('DATE', 'Add the devotional date here.'),
    _DevotionalField('THEME', 'Add the current theme here.'),
    _DevotionalField('TOPIC', 'Add the topic here.'),
    _DevotionalField('TEXT', 'Add the Bible passage here.'),
    _DevotionalField('KEY VERSE', 'Add the key Bible verse here.'),
    _DevotionalField('INTRODUCTION', 'Your introduction will appear here.'),
    _DevotionalField('DEVOTIONAL', 'Add the numbered devotional points here.'),
    _DevotionalField('LESSON', 'Add the lesson here.'),
    _DevotionalField('HYMN', 'Add the hymn title and lyrics or reference here.'),
    _DevotionalField('PRAYER', 'Add the prayer here.'),
    _DevotionalField('ENCOURAGEMENT', 'Add the encouragement here.'),
    _DevotionalField('DECLARATION', 'Add the declaration here.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daily Devotional')),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFFF2E8D3),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: const Color(0xFFD8C49B),
              ),
            ),
            child: const Column(
              children: [
                Text(
                  'SIGNS OF HIS GLORY',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                    color: Color(0xFF4E3B1C),
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  'Fullness of Joy',
                  style: TextStyle(
                    fontSize: 16,
                    color: SignsOfHisGloryApp.gold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ...devotionalFields.map(
            (field) => _DevotionalSection(field: field),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 18),
            child: Text(
              '“In Your presence is fullness of joy.”\nPsalm 16:11',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: SignsOfHisGloryApp.gold,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DevotionalField {
  final String heading;
  final String placeholder;

  const _DevotionalField(this.heading, this.placeholder);
}

class _DevotionalSection extends StatelessWidget {
  final _DevotionalField field;

  const _DevotionalSection({required this.field});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              field.heading,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                color: SignsOfHisGloryApp.gold,
              ),
            ),
            const SizedBox(height: 9),
            Text(
              field.placeholder,
              style: const TextStyle(fontSize: 15, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
