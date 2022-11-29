import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('List view demo'),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(8),
          children: [
            Container(
              height: 50,
              color: Colors.amber[600],
              child: Center(child: Text("Entry A")),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: Center(child: Text("WEntry B")),
            ),
            Container(
              height: 50,
              color: Colors.amber[200],
              child: Center(child: Text("WEntry C")),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: Center(child: Text("WEntry D")),
            ),
          ],
        ),
      ),
    );
  }
}
