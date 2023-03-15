import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const imageUrl =
      "https://i0.wp.com/sportsworldrunningclub.com/wp-content/uploads/2018/04/beautiful_night_city-wallpaper-1920x600.jpg?fit=1920%2C600&ssl=1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Person Profile',
          textAlign: TextAlign.end,
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                child: PageView(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(
                              height: 500,
                              width: double.infinity,
                              child: Image.network(
                                imageUrl,
                                fit: BoxFit.cover,
                              )),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text("Vitor Henrique Dos Santos",
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.w900)),
                          ),
                          Divider(
                            height: 20,
                            thickness: 3,
                            indent: 32,
                            endIndent: 32,
                            color: Colors.blueGrey,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sit amet metus nec nulla eleifend hendrerit. Aenean bibendum risus eu ante sagittis, sed pharetra magna ornare. Quisque facilisis mollis volutpat. In tristique tellus sit amet dapibus convallis. Phasellus leo enim, vehicula sit amet purus quis, cursus semper mi.",
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
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
              flex: 1,
              child: Column(
                children: [
                  Center(
                    
                    child: ListTile(
                      leading: Icon(Icons.email),
                      title: Text('Vitor Henrique'),
                      subtitle: Text('vitorsantos@gmail.com'),
                    ),
                  )
                ],
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const FaIcon(FontAwesomeIcons.linkedinIn),
        onPressed: () {
          print('Click!');
        },
      ),
    );
  }
}
