import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  final assetsAudioPlayer = AssetsAudioPlayer();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sound Box'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    AssetsAudioPlayer.newPlayer().open(
                      Audio("assets/laser.wav"),
                      showNotification: true,
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/2.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  height: 150,
                  width: 150,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 150,
                  width: 150,
                  color: Colors.black,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  height: 150,
                  width: 150,
                  color: Colors.orange,
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 150,
                  width: 150,
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
