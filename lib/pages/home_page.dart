import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping App'),
      ),
      body: Center(
        child: Container(
            child: Text("Welcome to $days Gagan's App"),
          ),
      ),
      drawer: Drawer(),
    );
  }
}