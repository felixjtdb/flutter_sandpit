import 'package:flutter/material.dart';

void main() {
  runApp(new FelixTown());
}

class FelixTown extends StatefulWidget {
  final String name;

  FelixTown({this.name});

  @override
  _NameTaker createState() => _NameTaker();
}

class _NameTaker extends State<FelixTown> {
  int population = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Felix Town"),
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  color: Colors.purple[900],
                  height: 100,
                  width: 100,
                ),
                Expanded(child: Text('$population')),
                Container(
                  color: Colors.blue[900],
                  height: 100,
                  width: 100,
                )
              ],
            ),
          ),
        floatingActionButton: FloatingActionButton(
            onPressed: () { setState(() {
              population++;
            });
          }),
      )
    );
  }
}
