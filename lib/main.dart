import 'package:charts_and_cards/card.dart';
import 'package:charts_and_cards/chart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.lightBlue,
              height: MediaQuery.of(context).size.height * .25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 15),
              alignment: Alignment.topCenter,
              child: Text(
                'Charts and Cards',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .1,
                ),
                ChartCard(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CardItem('h', '12:00 pm', 2),
                        CardItem('h2', '12:00 pm', 2),
                        CardItem('h3', '12:00 pm', 2),
                        CardItem('h4', '12:00 pm', 2),
                        CardItem('h5', '12:00 pm', 2),
                        CardItem('h6', '12:00 pm', 2),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
