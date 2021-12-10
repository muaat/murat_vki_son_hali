import 'package:flutter/material.dart';
import 'package:vki_hesaplama/card_widget.dart';
import 'package:vki_hesaplama/sabitler.dart';
import 'package:vki_hesaplama/sonuc.dart';

void main() {
  runApp(const MyApp());
}

enum cinsiyet { male, female, notrs }

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter İlk Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color cardColor = rkPasifCardBackColor;
  cinsiyet seciliCinsiyet;
  int height = 180;
  int kilo = 70;
  int yas = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rkZeminArkaPlan,
      appBar: AppBar(
        backgroundColor: rkZeminArkaPlan,
        title: Center(
          child: Text(
            "VKİ Hesaplama",
            style: TextStyle(
              color: rkCardForeColor,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    GuzelCard(
                      fonksiyon: () {
                        setState(() {
                          seciliCinsiyet = cinsiyet.male;
                        });
                      },
                      cardColor: seciliCinsiyet == cinsiyet.male
                          ? rkAktifCardBackColor
                          : rkPasifCardBackColor,
                      simge: Icons.male,
                      metin: "ERKEK",
                    ),
                  ],
                ),
                Row(
                  children: [
                    GuzelCard(
                      fonksiyon: () {
                        setState(() {
                          seciliCinsiyet = cinsiyet.female;
                        });
                      },
                      cardColor: seciliCinsiyet == cinsiyet.female
                          ? rkAktifCardBackColor
                          : rkPasifCardBackColor,
                      simge: Icons.female,
                      metin: "KADIN",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: OrtakCard(
              () {},
              Colors.red,
              Column(
                children: [
                  Text(
                    "HEIGHT",
                    style: tsActivCardColor,
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: tsHeightStyle,
                      ),
                      Text(
                        "cm",
                        style: tsCmStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: stSliderTheme,
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      min: 120,
                      max: 220,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: OrtakCard(
                    () {},
                    Colors.red,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "KİLO",
                          style: tsActivCardColor,
                        ),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              kilo.toString(),
                              style: tsHeightStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                              foregroundColor: Colors.black,
                              onPressed: () {
                                setState(() {
                                  kilo = kilo + 1;
                                });
                              },
                              child: Icon(Icons.add),
                            ),
                            FloatingActionButton(
                              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                              foregroundColor: Colors.black,
                              onPressed: () {
                                setState(() {
                                  kilo = kilo - 1;
                                });
                              },
                              child: Icon(Icons.remove_outlined),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: OrtakCard(
                    () {},
                    Colors.red,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "YAS",
                          style: tsActivCardColor,
                        ),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              yas.toString(),
                              style: tsHeightStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                              foregroundColor: Colors.black,
                              onPressed: () {
                                setState(() {
                                  yas = yas + 1;
                                });
                              },
                              child: Icon(Icons.add),
                            ),
                            FloatingActionButton(
                              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                              foregroundColor: Colors.black,
                              onPressed: () {
                                setState(() {
                                  yas = yas - 1;
                                });
                              },
                              child: Icon(Icons.remove_outlined),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottombtn(
            color: Colors.grey,
            text: "Sonuç Al",
          ),
        ],
      ),
    );
  }
}
