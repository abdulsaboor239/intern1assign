import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  final List<String> items = [
    'Apple',
    'Banana',
    'Orange',
    'Date',
    'berry',
    'Watermelon',
    'Grape',
    'Coconut',
    'Mango',
    'Jackfruit'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Fruits'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            title: Text(
              items[index],
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              final snackBar = SnackBar(content: Text('Tapped on ${items[index]}'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);


            },
          );
        },
      ),
    );
  }
}


