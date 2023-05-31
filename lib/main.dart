import 'package:chai/pages/offers.dart';
import 'package:chai/pages/order.dart';
import 'package:chai/pages/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class HelloName extends StatefulWidget {
  const HelloName({super.key});

  @override
  State<HelloName> createState() => _HelloNameState();
}

class _HelloNameState extends State<HelloName> {
  var name = "";

  @override
  Widget build(BuildContext context) {
    if (name == "") {
      name = "there";
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: Text(
            'Hello $name!',
            style: const TextStyle(fontSize: 24),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: TextField(
            onChanged: (newValue) => setState(() {
              name = newValue;
            }),
          ),
        )
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chai',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/logo.png"),
      ),
      body: () {
        switch (i) {
          case 0:
            return const Menu();
          case 1:
            return const Offers();
          case 2:
            return const HelloName();
          default:
            return const Placeholder();
        }
      }(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: i,
        onTap: (index) {
          setState(() {
            i = index;
          });
        },
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.brown.shade100,
        items: const [
          BottomNavigationBarItem(label: "Menu", icon: Icon(Icons.menu)),
          BottomNavigationBarItem(label: "Offers", icon: Icon(Icons.star)),
          BottomNavigationBarItem(
              label: "Order", icon: Icon(Icons.shopping_cart)),
        ],
      ),
    );
  }
}
