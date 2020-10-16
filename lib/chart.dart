import 'package:flutter/material.dart';

class ChartCard extends StatefulWidget {
  @override
  _ChartCardState createState() => _ChartCardState();
}

class _ChartCardState extends State<ChartCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.teal,
      child: Container(
        height: MediaQuery.of(context).size.height * .3,
        width: MediaQuery.of(context).size.width * .90,
      ),
    );
  }
}
