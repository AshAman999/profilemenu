import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const Something());
}

class Something extends StatelessWidget {
  const Something({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
                  width: 190.0,
                  height: 190.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://i.imgur.com/BoN9kdC.png")))),
            ),
            GestureDetector(
              onTap: () {
                AssetsAudioPlayer.newPlayer().open(
                  Audio("assets/gamma.wav"),
                  showNotification: true,
                );
              },
              child: Container(
                width: 190.0,
                height: 190.0,
                decoration: new BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new AssetImage("assets/4.png"),
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
            ),
            Container(
              margin: EdgeInsets.all(5),

              // width: 40,
              // height: 40,
              child: Text(
                'Girlscript',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.all(5),
              // width: 40,
              // height: 40,
              // color: Colors.green,
              child: Text(
                'girsclipt@gmail.com',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.all(5),
              // width: 40,
              // height: 40,
              // color: Colors.green,
              child: Text(
                '1111111111',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
