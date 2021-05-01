import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dangdat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle customTextStyle(double fontSize) {
    return TextStyle(color: Colors.white, fontSize: fontSize);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: Text(
                'Hi!',
                style: customTextStyle(
                  32,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "I'm Raymond Dangdat",
                style: customTextStyle(
                  20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: AssetImage("assets/images/passport.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "I Flutter with",
              style: customTextStyle(18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Dart!',
              style: customTextStyle(22),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 45,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                  )),
              alignment: Alignment.center,
              child: Text(
                "Let's Connect!",
                style: customTextStyle(20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Facebook',
                        style: customTextStyle(20),
                      ),
                      Text(
                        '@raymonddangdat',
                        style: customTextStyle(16),
                      )
                    ],
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Twitter',
                        style: customTextStyle(20),
                      ),
                      Text(
                        '@raymonddangdat',
                        style: customTextStyle(16),
                      )
                    ],
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'GitHub',
                    style: customTextStyle(20),
                  ),
                  Text(
                    '@raymondDangdat',
                    style: customTextStyle(16),
                  )
                ],
              ),
            )
          ],
        ),
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            tooltip: 'Call Me on 08142081233',
            child: Icon(Icons.call_end_rounded),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            tooltip: 'Email Me @ raymonddangdat@gmail.com',
            child: Icon(Icons.email),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
