import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('My Elevated Button'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange, onPrimary: Colors.white),
            ),
            TextButton(
              onPressed: () {},
              child: Text('My Text Button'),
              style: TextButton.styleFrom(primary: Colors.black),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('My Outlined Button'),
              style: OutlinedButton.styleFrom(
                  primary: Colors.red,
                  backgroundColor: Colors.lightGreen,
                  side: BorderSide(color: Colors.blue)),
            ),
          ],
        ),
      ),
    );
  }
}
