import 'package:flutter/material.dart';
import 'package:guj_tts/guj_tts_base.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _convertTextToSpeech() async {
    // final appDocumentsDir = await getApplicationDocumentsDirectory();
    const path = "/storage/emulated/0/Download/example.flac";

    await GujTTS.generate(
        accessToken: "",
        text:
            'વરસાદ બન્યો વિલન:મોતના કૂવામાં પાણી રાજકોટના મેળામાં જળબંબાકારની સ્થિતિ, સ્ટોલ માલીકોને આવ્યો રડવાનો વારો',
        filePath: path);
    AudioPlayer player = AudioPlayer();
    await player.setFilePath(path);
    await player.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text(
          'Click Floating action button to convert text to speech',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _convertTextToSpeech,
        tooltip: 'Guj TTS',
        child: const Icon(Icons.speaker),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
