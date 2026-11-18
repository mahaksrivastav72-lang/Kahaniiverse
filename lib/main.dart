
import 'package:flutter/material.dart';

void main() {
  runApp(const KahaniiverseApp());
}

class KahaniiverseApp extends StatelessWidget {
  const KahaniiverseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kahaniiverse',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF7957E8),
        useMaterial3: true,
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
      backgroundColor: const Color(0xFFFAF8FF),
      appBar: AppBar(
        title: const Text(
          'Kahaniiverse ✨',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFFAF8FF),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Welcome to Kahaniiverse ❤️',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Your imagination, your universe.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 25),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF7957E8),
                  Color(0xFFB58AEF),
                ],
              ),
              borderRadius: BorderRadius.circular(22),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Your Own Story',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Turn your imagination into beautiful stories.',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            'Choose Your Genre',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              '👻 Horror',
              '❤️ Romance',
              '🔪 Thriller',
              '🧚 Fantasy',
              '🛕 Mythology',
              '😂 Comedy',
            ].map((genre) {
              return Chip(
                label: Text(genre),
                backgroundColor: const Color(0xFFECE5FF),
              );
            }).toList(),
          ),
          const SizedBox(height: 30),
          const Text(
            'Your Story Studio',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Amazing stories are waiting to be created!',
          ),
        ],
      ),
    );
  }
}

          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Turn your story into cinematic scenes.',
          style: TextStyle(color: Colors.black54),
        ),
        const SizedBox(height: 22),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [purple, Color(0xFFB58AEF)],
            ),
            borderRadius: BorderRadius.circular(22),
          ),
          child: const Column(
            children: [
              Icon(Icons.movie_creation,
                  color: Colors.white, size: 50),
              SizedBox(height: 10),
              Text(
                'Your Story to Video',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Create scenes, visuals and voice-over scripts.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        FilledButton.icon(
          onPressed: makeVideoScenes,
          icon: const Icon(Icons.auto_awesome),
          label: const Text('Generate Video Scenes'),
          style: FilledButton.styleFrom(
            backgroundColor: purple,
            padding: const EdgeInsets.all(16),
          ),
        ),
        const SizedBox(height: 20),
        if (videoScript.isNotEmpty) ...[
          const Text(
            'Your Video Scenes 🎥',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: SelectableText(
                videoScript,
                style: const TextStyle(height: 1.7),
              ),
            ),
          ),
          FilledButton.icon(
            onPressed: () => copyText(videoScript),
            icon: const Icon(Icons.copy),
            label: const Text('Copy Video Prompts'),
          ),
          const SizedBox(height: 15),
          const Text(
            'Note: Actual AI video rendering will need a connected video generation service.',
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ],
    );
  }

  Widget savedScreen() {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const Text(
          'My Stories ❤️',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        if (savedStories.isEmpty)
          const Center(
            child: Padding(
              padding: EdgeInsets.all(35),
              child: Column(
                children: [
                  Icon(
                    Icons.menu_book,
                    size: 65,
                    color: purple,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'No saved stories yet!',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text('Create a story and save it here.'),
                ],
              ),
            ),
          ),
        ...savedStories.asMap().entries.map((entry) {
          final index = entry.key;
          final saved = entry.value;

          return Card(
            color: Colors.white,
            child: ExpansionTile(
              leading: const Icon(
                Icons.auto_stories,
                color: purple,
              ),
              title: Text('Story ${index + 1}'),
              subtitle: Text(
                saved.length > 50
                    ? '${saved.substring(0, 50)}...'
                    : saved,
                maxLines: 1,
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: SelectableText(saved),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () => copyText(saved),
                      icon: const Icon(Icons.copy),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          savedStories.removeAt(index);
                        });
                      },
                      icon: const Icon(
                        Icons.delete_outline,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
