import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardItem extends StatelessWidget {
  String name = 'Name';
  String time = '00:00 am';
  double val = 100000.0;
  // ignore: non_constant_identifier_names
  CardItem(String gname, String gtime, double gval) {
    this.name = gname;
    this.time = gtime;
    this.val = gval;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.04,
          MediaQuery.of(context).size.height * 0.01,
          MediaQuery.of(context).size.width * 0.05,
          MediaQuery.of(context).size.width * 0.005),
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.teal,
            radius: 30,
            child: FittedBox(
              child: Padding(
                padding: EdgeInsets.all(1),
                child: Text(val.toString() + '\$'),
              ),
            ),
          ),
          title: Text(name),
          subtitle: Text(time),
          trailing: IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.red,
            ),
            onPressed: () => {},
          ),
        ),
      ),
    );
  }
}
