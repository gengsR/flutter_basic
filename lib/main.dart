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
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      Text('BERITA TERBARU'),
                      Text('PERTANDINGAN HARI INI'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple),
              ),
            ),
            Image.network(
                "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/09/07/343711935.jpg"),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(7),
              child: const Text(
                'Costa Mendekat Ke Palmeiras',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              color: Colors.purple,
              child: const Text(
                'Transfer',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const Berita(),
            const Berita(),
            const Berita(),
            const Berita(),
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class Berita extends StatelessWidget {
  const Berita({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
      ),
      // margin: const EdgeInsets.all(2.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(2.0),
                width: 180,
                child: Column(
                  children: <Widget>[
                    Image.network(
                        "https://asset.kompas.com/crops/0ruNYY-e9h77awFwS0S-Z5Q8G7E=/4x1:1024x681/750x500/data/photo/2022/02/01/61f860bcd1f65.jpg")
                  ],
                ),
              ),
              Container(
                height: 116,
                width: 228,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
                child: const Text(
                    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
              ),
            ],
          ),
          Container(
            height: 35,
            alignment: Alignment.centerLeft,
            child: const Text('Barcelona Feb 13, 2021'),
          ),
        ],
      ),
    );
  }
}
