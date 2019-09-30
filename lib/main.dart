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
    return GestureDetector(
        onTap: () {
          setState(() {
            population++;
          });
        },
        child: new Container(
          decoration: BoxDecoration(
            color: Colors.purple[900]
          ),
        ),
      );
  }
}
