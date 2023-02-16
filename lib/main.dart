import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Person Profile'),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.red,
                  child: PageView(
                    children: [
                      Container(
                        color: Colors.deepOrange,
                        child: Text('Página 1'),
                      ),
                      Container(
                        color: Colors.deepPurple,
                        child: Text('Página 2'),
                      ),
                      Container(
                        color: Colors.pink,
                        child: Text('Página 3'),
                      )
                    ],
                  ),
                )),
            Expanded(
                child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Vitor Henrique'),
                  subtitle: Text('vitorsantos@gmail.com'),
                )
              ],
            ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.favorite),
          onPressed: () {
            print('Click!');
          },
        ),
      ),
    );
  }
}
