import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 190.0,
                height: 190.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://i.imgur.com/BoN9kdC.png")))),
            Container(
              height: 60,
            ),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(15),
              color: Colors.lightBlue,
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
